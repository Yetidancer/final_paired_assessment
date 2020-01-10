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

  def test_it_has_attributes
    assert_equal "Calculus", @course.name
    assert_equal 2, @course.capacity
  end

  def test_course_students_starts_as_an_empty_array
    assert_equal [], @course.students
  end

end
