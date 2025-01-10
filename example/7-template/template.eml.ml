let render param =
  <html>
  <body>
    <h1>URLのパラメータは<%s param %>です！</h1>
  </body>
  </html>

let () =
  Dream.run
  @@ Dream.logger
  @@ Dream.router [

    Dream.get "/:world"
      (fun request ->
        Dream.param request "world"
        |> render
        |> Dream.html);
  ]