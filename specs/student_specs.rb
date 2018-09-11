require ('minitest/autorun')
require ('minitest/rg')
require_relative('../student')

class TestStudent < Minitest::Test

  def setup
    @codeclan_student = Student.new("Andrew", "G8")
  end
  def test_get_codeclan_student_name

    assert_equal("Andrew", @codeclan_student.get_student_name)
  end

  def test_get_cohort_code
    assert_equal("G8", @codeclan_student.get_cohort_code)
  end

  def test_set_codeclan_student_name
    assert_equal("John", @codeclan_student.set_student_name("John"))
  end

  def test_set_cohort_code
    assert_equal("G9", @codeclan_student.set_cohort_code("G9"))
  end

  def test_if_student_can_talk
    assert_equal("I can talk", @codeclan_student.speak())
  end

  def test_student_favorite_prog_language
    assert_equal("My favorite language is Ruby", @codeclan_student.fav_language("Ruby"))
  end
end
