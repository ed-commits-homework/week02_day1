require("minitest/autorun")
require("minitest/reporters")
require_relative("../student")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudent < MiniTest::Test
  def setup
    @ed = Student.new("Ed", "E40")
  end

  def test_student_name
    assert_equal("Ed", @ed.name)
  end

  def test_student_cohort
    assert_equal("E40", @ed.cohort)
  end

  def test_student_talk
    assert_equal("I can talk!", @ed.talk())
  end

  def test_favorite_language
    assert_equal("I love Ruby", @ed.say_favourite_language("Ruby"))
  end
end
