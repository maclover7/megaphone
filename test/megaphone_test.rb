require 'test_helper'

class MegaphoneTest < Minitest::Test
  #def test_it_does_something_useful
    #assert_equal 2, 1
  #end

  def test_version_exists
    refute_nil ::Megaphone::VERSION
  end
end
