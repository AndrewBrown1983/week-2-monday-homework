require('Minitest/autorun')
require('Minitest/rg')
require_relative('../library')

class TestLibrary < Minitest::Test

  def setup
    @library = Library.new("lord_of_the_rings", "Jeff", "01/12/16")


  end
def test_get_book_title
  assert_equal("lord_of_the_rings", @library.title)
end


  end
