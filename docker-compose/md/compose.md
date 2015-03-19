## Docker CLI

```
$ docker run -d -p 4444 ubuntu:12.10 /bin/nc -l 4444
```

!SLIDE

## Fig

**Python** utility that uses a **YAML** config file for configuring and linking, *orchestrating*, **Docker** containers.

!SLIDE

## Example `fig.yml`

![fig-example](img/fig-example.png)

<http://fig.sh>

!SLIDE

## Fig => Docker Compose

![Victor Kiam, Remington](img/kiam.jpg)

<http://blog.docker.com/2014/07/welcoming-the-orchard-and-fig-team/>

!NOTE
Docker, Inc. liked Fig so much that they bought the company that wrote it: Orchard, Inc. In the time since I scheduled this presentation w/ Charlie, Fig has been integrated into Docker as Docker Compose.

