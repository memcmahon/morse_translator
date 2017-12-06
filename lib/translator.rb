class Translator
  attr_reader :dictionary

  def initialize
    @dictionary = {"a" => ".-",
                    "b" => "-...",
                    "c" => "-.-.",
                    "d" => "-..",
                    "e" => ".",
                    "f" => "..-.",
                    "g" => "--.",
                    "h" => "....",
                    "i" => "..",
                    "j" => ".---",
                    "k" => "-.-",
                    "l" => ".-..",
                    "m" => "--",
                    "n" => "-.",
                    "o" => "---",
                    "p" => ".--.",
                    "q" => "--.-",
                    "r" => ".-.",
                    "s" => "...",
                    "t" => "-",
                    "u" => "..-",
                    "v" => "...-",
                    "w" => ".--",
                    "x" => "-..-",
                    "y" => "-.--",
                    "z" => "--..",
                    "1" => ".----",
                    "2" => "..---",
                    "3" => "...--",
                    "4" => "....-",
                    "5" => ".....",
                    "6" => "-....",
                    "7" => "--...",
                    "8" => "---..",
                    "9" => "----.",
                    "0" => "-----",
                    " " => " "}
  end

  def eng_to_morse(text)
    # require 'pry'; binding.pry
    text.split(//).map do |character|
      dictionary.fetch(character.downcase)
    end.join
  end

  def from_file(file)
    # require 'pry'; binding.pry
    eng_to_morse(File.read(file).chomp)
  end

  def morse_to_eng(text)
    require 'pry'; binding.pry
    code_words = text.split("  ")
    code_letters = code_words.map do |letter|
      letter.split(" ")
    end
    english_letters = code_letters.map do |letter|
      letter.map do |code|
        dictionary.key(code)
      end
    end
  end
end
