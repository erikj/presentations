# Field Catalog

<table>
  <tr>
        <td width=33% align='center'>
      `#latest`
      <img src='img/tci-satellite-latest.png' alt='tci-satellite-latest'/>
    </td>
    <td width=33% align='center'>
      `#date`
      <img src='img/tci-satellite-date.png' alt='tci-satellite-date.png' />
    </td>

    <td width=33% align='center'>
      `#show`
      <img src='img/tci-satellite-product.png' alt='tci-satellite-product' />
    </td>
  </tr>
</table>

Latest and retrospective access to product imagery

!NOTE
I'll zoom in on the first two screenshots in the next slides

One of the primary purpose of the Field Catalog is to provide access to latest and retrospective product imagery


!SLIDE

<img src='img/tci-satellite-latest-zoom.png' alt='tci-satellite-latest-zoom'/>

!NOTE
TCI Latest Satellite Products

!SLIDE

<img src='img/tci-satellite-date-zoom.png' alt='tci-satellite-date-zoom.png' />

!NOTE
TCI Satellite Products by date, 2015/11/18

!SLIDE

# Problem

- Slow date-browse queries
  - Querying growing `file` table via `begin_date` `DATETIME` `INDEX`ed column in **MySQL** database
  - Gets slower as more files are added
  - Even when served via impressive, maxed-out production hardware, can take several seconds to run queries required for date-browse pages

!SLIDE

# Date Browse

- `dataset`s have many `file`s
- Date browse queries `file`s by `dataset_id` and `begin_date`
- August, 2015
  - ~150k `dataset`s
  - ~31m `file`s

!SLIDE

# Catalog Redis

- store `file` IDs as sorted sets for each `dataset`, using `begin_date` as `score`

```sh
> ZRANGE dataset:65369:files_by_begin_date 0 5 WITHSCORES
 1) "26202317"
 2) "1389052800"
 3) "26242581"
 4) "1389139200"
 5) "26297857"
 6) "1389225600"
 7) "26364497"
 8) "1389312000"
 9) "26428695"
10) "1389398400"
11) "26481317"
12) "1389484800"
```

!NOTE
get the first six elements

!SLIDE

# Catalog Redis

- Hybrid approach: **MySQL** database provides
  - `dataset` associations
    - `dataset_project`
    - `dataset_category`
    - *etc.*
  - `dataset` and `file` metadata
    - `dataset` `archive_ident`, `title`, `summary`, *etc.*
    - `file` `host`, `directory`, `filename`, *etc.*

!SLIDE

# Catalog Redis

```ruby
class GetDatasetFilesByDate

  def self.call dataset_ids, begin_date, end_date=nil

    file_ids = GetDatasetFileIdsByDateViaRedis.call dataset_ids, \
                 begin_date, end_date
    # file_ids = GetDatasetFileIdsByDateViaSql.call dataset_ids, \
    #              begin_date, end_date
    return file_ids.empty? ? [] : Datafile \
      .catalog_viewable.where(id:file_ids).includes(:dataset)

  end
```


!SLIDE

# Catalog Redis

```ruby
class GetDatasetFileIdsByDateViaRedis
  def self.call dataset_ids, begin_date, end_date=nil
      file_ids = []
      begin_date_param = begin_date.to_i
      end_date_param   = end_date ? end_date.to_i : '+inf'

      file_ids << dataset_ids.collect do |dataset_id|
        #
        # get ordered set based on dataset.id and date(s)
        # http://redis.io/commands/zrangebyscore
        #
        $redis.zrangebyscore \
          "dataset:#{dataset_id}:files_by_begin_date", \
          begin_date_param, end_date_param
      end
      return file_ids
  end
end
```


!SLIDE

# Catalog Redis

- Date-browse queries
  - **SQL**: more than a second
  - **Redis** + **SQL**: a few milliseconds

- Footprint
  - ~5.9GB in memory
  - 617MB **RDB** file on disk

