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

  def test_student_score_starts_as_an_empty_array
    assert_equal [], @student.scores
  end

  def test_log_score_adds_to_scores_attribute
    @student.log_score(89)
    @student.log_score(78)

    assert_equal [89,78], @student.scores
  end
end
