class Instructor
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def pass_student(student, test)
        found_test = BoatingTest.all.find {|test| test.student == student && test.test == test}
        if found_test
            found_test.status = "passed"
        else
            BoatingTest.new(student, test, "passed", self)
        end
    end

    def fail_student(student, test)
        found_test = BoatingTest.all.find {|test| test.student == student && test.test == test}
        if found_test
            found_test.status = "failed"
        else
            BoatingTest.new(student, test, "failed", self)
        end
    end

    def self.all 
        @@all 
    end
end

# `Instructor` class:
# * initialize with a name
# * `Instructor.all` should return all instructors
# * `Instructor#pass_student` 
        #should take in a student instance and test name. 
        #If there is a `BoatingTest` whose name and student match the values passed in, this method should update the status of that BoatingTest to 'passed'. 
        #If there is no matching test, this method should create a test with the student, that boat test name, and the status 'passed'. 
        #Either way, it should return the `BoatingTest` instance.
# * `Instructor#fail_student` 
        #should take in a student instance and test name. Like `#pass_student`, it should try to find a matching `BoatingTest` and update its status to 'failed'. 
         #If it cannot find an existing `BoatingTest`, it should create one with the name, the matching student, and the status 'failed'.
