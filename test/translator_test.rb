require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'

class TranslatorTest < Minitest::Test
  def test_eng_to_morse
    translator = Translator.new

    translator.eng_to_morse("hello world")

    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("hello world")
  end
end
