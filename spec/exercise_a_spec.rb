require('minitest/autorun')
require('minitest/rg')
require_relative('../exercise_a')

class TestStudent < MiniTest::Test

  def setup()
    @student = Student.new("Jamie", "E31")
  end

#getter
  def test_student_name()
    assert_equal("Jamie", @student.student_name())
  end

  def test_cohort()
    assert_equal("E31", @student.cohort())
  end
#setter

  def test_new_student_name()
    @student.new_student_name ("Bob")
    assert_equal("Bob", @student.student_name())
  end

#can_talk

  def test_can_talk()
    assert_equal('I can talk',@student.can_talk())
  end

#favourite_language

  def test_favourite_language
    assert_equal("I love Ruby", @student.favourite_language("Ruby"))
  end





end
