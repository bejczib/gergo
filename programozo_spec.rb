require_relative './programozo.rb'

require 'minitest/autorun'


class TestProgramozo < Minitest::Test

  def setup
    @gergo = Programozo.new('gergo',44)
  end

  def test_existance
    @gergo
  end


  def test_name_getter_is_good
    assert_equal(@gergo.name,'gergo')
  end

  def test_shoe_size_getter_is_good
    assert_equal(@gergo.shoe_size,44)
  end

  def test_programming
    assert_equal("epp programozom", @gergo.programming)
  end

  def test_get_grade
    @gergo.get_grade!(5)
    assert_equal([5],@gergo.grades)
  end

  def test_get_grade

    @gergo.get_grade!(5)
    @gergo.get_grade!(1)
    @gergo.get_grade!(2)
    assert_equal([5,1,2],@gergo.grades)
  end
end
