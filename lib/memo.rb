class Memo < Post
  def read_from_console
    puts 'Новая заметка (все что пишите до строчки \"end\"):'
    line = nil
    @text = []

    while line != "end" do
      line = STDIN.gets.chomp
      @text.push(line)
    end

    @text.pop
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")}\n\r \n\r"
    @text.unshift(time_string)
  end

end
