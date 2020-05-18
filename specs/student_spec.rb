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
end
