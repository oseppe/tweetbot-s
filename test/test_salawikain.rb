require 'minitest/autorun'
require 'minitest/nyan_cat'
require '../salawikain'

class TestSalawikain < MiniTest::Test
  
  def setup
    @salawikain = Salawikain.new
    @structure = "Nasa <noun> ang <noun_action> , nasa <noun> ang <noun_action> ."
  end
  
  def test_basa
    assert @salawikain.basa.is_a? String
  end

  def test_get_structure
    assert @salawikain.get_structure.is_a? String
  end

  def test_fill_in

    saying = @salawikain.fill_in @structure

    refute saying.include? "<"
  end
end