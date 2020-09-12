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

def print_data 
  # j = 1

  # data1 = %Q([{"indicator": #{j}, "contents": {[{"display": 0, "label": "Status","value": "Running"},{"display": 1, "label": "Profile rms", "value": "6.00"},{"display": 2, "label": "Control rms", "value": "5.80"},{"display": 3, "label": "Control err", "value": "-3.33 %"},{"display": 4, "label": "Time at test", "value": "01:00:00"},{"display": 5, "label": "Time remaining", "value": "04:00:00"}]}])
  # data2 = %Q([{"display": 0, "label": "Status","value": "Idle"},{"display": 1, "label": "Profile rms", "value": "0.00"},{"display": 2, "label": "Control rms", "value": "0.00"},{"display": 3, "label": "Control err", "value": "0.00 %"},{"display": 4, "label": "Time at test", "value": "00:00:00"},{"display": 5, "label": "Time remaining", "value": "00:00:00"}])
  # data3 = %Q([{"display": 0, "label": "Status","value": "Test Complete"},{"display": 1, "label": "Profile rms", "value": "0.00"},{"display": 2, "label": "Control rms", "value": "0.00"},{"display": 3, "label": "Control err", "value": "0.00 %"},{"display": 4, "label": "Time at test", "value": "05:00:00"},{"display": 5, "label": "Time remaining", "value": "00:00:00"}])
  
  data1 = <<~HEREDOC.chomp
    {
      "indicator": 1, 
      "contents": 
              [
                {"display": 0, "label": "Status","value": "Running"},
                {"display": 1, "label": "Profile rms", "value": "6.00"},
                {"display": 2, "label": "Control rms", "value": "5.80"},
                {"display": 3, "label": "Control err", "value": "-2.55 %"},
                {"display": 4, "label": "Time at test", "value": "01:00:00"},
                {"display": 5, "label": "Time remaining", "value": "04:00:00"}
              ]
    }
  HEREDOC

  data2 = <<~HEREDOC.chomp
    {
      "indicator": 2, 
      "contents": 
              [
                {"display": 0, "label": "Status","value": "Running"},
                {"display": 1, "label": "Profile rms", "value": "6.00"},
                {"display": 2, "label": "Control rms", "value": "5.80"},
                {"display": 3, "label": "Control err", "value": "-3.33 %"},
                {"display": 4, "label": "Time at test", "value": "01:00:00"},
                {"display": 5, "label": "Time remaining", "value": "04:00:00"}
              ]
    }
  HEREDOC

  data3 = <<~HEREDOC.chomp
  {
    "indicator": 3, 
    "contents": 
            [
              {"display": 0, "label": "Status","value": "Running"},
              {"display": 1, "label": "Profile rms", "value": "6.00"},
              {"display": 2, "label": "Control rms", "value": "5.80"},
              {"display": 3, "label": "Control err", "value": "-4.69 %"},
              {"display": 4, "label": "Time at test", "value": "01:00:00"},
              {"display": 5, "label": "Time remaining", "value": "04:00:00"}
            ]
  }
  HEREDOC

  

  # data1 = %Q(["contents": {"display": 0, "label": "Status","value": "Running"},{"display": 1, "label": "Profile rms", "value": "6.00"},{"display": 2, "label": "Control rms", "value": "5.80"},{"display": 3, "label": "Control err", "value": "-3.33 %"},{"display": 4, "label": "Time at test", "value": "01:00:00"},{"display": 5, "label": "Time remaining", "value": "04:00:00"}])
  # data2 = %Q([{"display": 0, "label": "Status","value": "Idle"},{"display": 1, "label": "Profile rms", "value": "0.00"},{"display": 2, "label": "Control rms", "value": "0.00"},{"display": 3, "label": "Control err", "value": "0.00 %"},{"display": 4, "label": "Time at test", "value": "00:00:00"},{"display": 5, "label": "Time remaining", "value": "00:00:00"}])
  # data3 = %Q([{"display": 0, "label": "Status","value": "Test Complete"},{"display": 1, "label": "Profile rms", "value": "0.00"},{"display": 2, "label": "Control rms", "value": "0.00"},{"display": 3, "label": "Control err", "value": "0.00 %"},{"display": 4, "label": "Time at test", "value": "05:00:00"},{"display": 5, "label": "Time remaining", "value": "00:00:00"}])
  
  ###working :
  # data1 = %Q([{"display": 0, "label": "Status","value": "Running"},{"display": 1, "label": "Profile rms", "value": "6.00"},{"display": 2, "label": "Control rms", "value": "5.80"},{"display": 3, "label": "Control err", "value": "-3.33 %"},{"display": 4, "label": "Time at test", "value": "01:00:00"},{"display": 5, "label": "Time remaining", "value": "04:00:00"}])
  # data2 = %Q([{"display": 0, "label": "Status","value": "Idle"},{"display": 1, "label": "Profile rms", "value": "0.00"},{"display": 2, "label": "Control rms", "value": "0.00"},{"display": 3, "label": "Control err", "value": "0.00 %"},{"display": 4, "label": "Time at test", "value": "00:00:00"},{"display": 5, "label": "Time remaining", "value": "00:00:00"}])
  # data3 = %Q([{"display": 0, "label": "Status","value": "Test Complete"},{"display": 1, "label": "Profile rms", "value": "0.00"},{"display": 2, "label": "Control rms", "value": "0.00"},{"display": 3, "label": "Control err", "value": "0.00 %"},{"display": 4, "label": "Time at test", "value": "05:00:00"},{"display": 5, "label": "Time remaining", "value": "00:00:00"}])

  
  if @i == 1 
      File.open("shakerdata.txt", "w") { |f| f.write data1 }
      # puts data1
      @i = @i + 1
  elsif @i == 2 
    File.open("shakerdata.txt", "w") { |f| f.write data2 }
    @i = @i + 1
  elsif @i == 3
    File.open("shakerdata.txt", "w") { |f| f.write data3 }
    @i = 1
  end
end

# {[{"display": 0, "label": "Status","value": "Running"},{"display": 1, "label": "Profile rms", "value": "6.00"},{"display": 2, "label": "Control rms", "value": "5.80"},{"display": 3, "label": "Control err", "value": "-3.33 %"},{"display": 4, "label": "Time at test", "value": "01:00:00"},{"display": 5, "label": "Time remaining", "value": "04:00:00"}]}

every_so_many_seconds(0.25) do
  print_data
end

# File.open("shakerdata.txt", "a") { |f| f.write "#{Time.now} - this is the time#####{@i}" }
