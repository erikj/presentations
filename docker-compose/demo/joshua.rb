class Joshua
  def call env

    content = ["<h1 style='text-align:center;'>Greetings Professor Falken.</h1>"]

    content << "<h2 style='text-align:center;'>Shall we play a game?</h2>"

    content << "<h3 style='text-align:center;'>How about a nice game of chess?</h3>"

    [ 200, {"Content-Type" => "text/html  "}, content ]
  end
end
