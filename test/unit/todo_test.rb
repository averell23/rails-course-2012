require 'test_helper'

class TodoTest < ActiveSupport::TestCase
  test "it should not be valid without an description" do
    assert !(Todo.new(:description => '').valid?)
  end

  test "it should be valid with an description" do
    assert Todo.new(:description => 'dafdfdf').valid?
  end

end
