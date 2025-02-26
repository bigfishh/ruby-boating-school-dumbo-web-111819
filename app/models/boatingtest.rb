class BoatingTest
    attr_accessor :student, :test, :status, :instructor

    @@all = []

    def initialize(student, test, status, instructor)
        @student = student
        @test = test
        @status = status
        @instructor = instructor

        @@all << self
    end

    def self.all 
        @@all
    end
end

# `BoatingTest` class:
# * should initialize with Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
# * `BoatingTest.all` returns an array of all boating tests