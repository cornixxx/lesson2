require 'yaml'
class Ball
  ANSWERS = YAML.load_file(File.join(__dir__, 'answers.yml'))

  def shake
    random_answer
    define_color_code
    colorize
    @answer
  end

  private

  def random_answer
    @answer = ANSWERS.sample
  end

  def colorize
    puts "\e[#{@color_code}m#{@answer}\e[0m"
  end

  def define_color_code
    if ANSWERS[0..4].include? @answer
      @color_code = 31
    elsif ANSWERS[5..9].include? @answer
      @color_code = 32
    elsif ANSWERS[10..14].include? @answer
      @color_code = 33
    elsif ANSWERS[15..19].include? @answer
      @color_code = 34
    end
  end
end
