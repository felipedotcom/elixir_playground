file_name = IO.gets("File to count the words from: ")
  |> String.trim()

words =
  File.read!(file_name)
  |> String.split(~r{(\\n|[ˆ\w'])+})
  |> Enum.filter(fn x -> x != "" end)

words |> Enum.count() |> IO.puts()
