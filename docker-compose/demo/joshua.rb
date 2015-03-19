class Joshua
  def call env

    content = ["<div style='text-align:center;'>"]
    content << "<h1>Greetings Professor Falken.</h1>"

    # content << "<h2>Shall we play a game?</h2>"
    # content << "<h3>How about a nice game of chess?</h3>"

    content << '</div>'

    [ 200, {"Content-Type" => "text/html  "}, content ]
  end
end
