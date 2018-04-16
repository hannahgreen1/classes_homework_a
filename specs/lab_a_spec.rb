require("minitest/autorun")
require("minitest/rg")
require_relative ("../lab_a")

class TestCCStudent < Minitest::Test

  def test_student_name
    student = CCStudent.new("Hannah", 21)
    assert_equal("Hannah", student.get_name())
  end

  def test_cohort
    student = CCStudent.new("Hannah", 21)
    assert_equal(21, student.get_cohort)
  end

  def test_set_student_name
    student = CCStudent.new("Hannah", 21)
    student.set_name("Pauline")
    assert_equal("Pauline", student.get_name())
  end


  def test_set_cohort
    student = CCStudent.new("Hannah", 21)
    student.set_cohort(22)
    assert_equal(22, student.get_cohort)
  end


  def test_get_student_talk
    student = CCStudent.new("Hannah", 21)
    assert_equal("I can talk", student.get_student_talk)
  end


  def test_say_favourite_language
    student = CCStudent.new("Hannah", 21)
    student.set_say_favourite_language("Ruby")
    assert_equal("I love Ruby", student.say_favourite_language())
  end
end
