def every_so_many_seconds(seconds)
  last_tick = Time.now
  loop do
    sleep 0.1
    if Time.now - last_tick >= seconds
      last_tick += seconds
      yield
    end
  end
end

@i = 1
@data = []

def print_data 
  @data << <<~HEREDOC.chomp
    {
      "indicator": #{@i}, 
      "contents": 
              [
                {"display": 0, "label": "Status","value": "Seeded Data"},
                {"display": 1, "label": "Profile rms", "value": "6.00"},
                {"display": 2, "label": "Control rms", "value": "5.80"},
                {"display": 3, "label": "Control err", "value": "#{rand().round(4)}%"},
                {"display": 4, "label": "Time at test", "value": "01:00:00"},
                {"display": 5, "label": "Time remaining", "value": "04:00:00"}
              ]
    }
  HEREDOC

  case @i
  when @i
    data = @data[@i-1].to_str
    puts @i
    File.open("shakerdata.txt", "w") { |f| f.write data }
    @i = @i + 1
    if @i == 99
      @i = 1
    end
  end
end

every_so_many_seconds(0.95) do
  print_data
end
