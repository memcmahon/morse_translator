require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'

class TranslatorTest < Minitest::Test
  def test_eng_to_morse
    translator = Translator.new

    translator.eng_to_morse("hello world")

    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("hello world")
    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("Hello World")
    assert_equal "-......-.. .-.-.. ...-- ..........--....", translator.eng_to_morse("There are 3 ships")
  end

  def test_from_file
    translator = Translator.new

    assert_equal ".. .--- ..-. .- ..-....-...", translator.from_file("input.txt")
  end

  def test_morse_to_eng
    translator = Translator.new

    assert_equal "hello world", translator.morse_to_eng(".... . .-.. .-.. ---  .-- --- .-. .-.. -..")
  end
end
