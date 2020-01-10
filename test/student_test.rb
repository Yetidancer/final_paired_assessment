require './lib/student'
require 'minitest/autorun'
require 'minitest/pride'

class StudentTest < MiniTest::Test

  def test_it_exists
    student = Student.new({name: "Morgan", age: 21})

    assert_instance_of Student, student
  end



end
