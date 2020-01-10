require './lib/student'
require './lib/course'
require 'minitest/autorun'
require 'minitest/pride'

class CourseTest < MiniTest::Test

  def setup
    @course = Course.new("Calculus", 2)
    @student1 = Student.new({name: "Morgan", age: 21})
    @student2 = Student.new({name: "Jordan", age: 29})
  end

  def test_it_exists
    assert_instance_of Course, @course
  end

end
