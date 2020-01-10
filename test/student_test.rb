require './lib/student'
require 'minitest/autorun'
require 'minitest/pride'

class StudentTest < MiniTest::Test

  def setup
    @student = Student.new({name: "Morgan", age: 21})
  end

  def test_it_exists
    assert_instance_of Student, @student
  end

  def test_it_has_attributes
    assert_equal "Morgan", @student.name

    assert_equal 21, @student.age
  end


end
