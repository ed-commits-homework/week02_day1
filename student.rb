class Student
  attr_reader :name
  attr_accessor :cohort

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end
end
