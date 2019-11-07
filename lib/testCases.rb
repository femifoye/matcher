require_relative 'MockDb'

module TestCases 
#before_action :set_student
    @student = MockDb.student()
    @tutors = MockDb.tutors()
    @studentrole = @student.student_props()
    @profile = @student.student()


    #return true if there is a student logged in
    def self.get_student
        true if @student
    end

    #return true if student has a role i.e student or tutor
    def self.get_student_role
        true if @studentrole["role"]
    end

    #return true if student role is "Student"
    def self.is_student
        true if @studentrole["role"] == "Student"
    end

    #return true if student has subjects of interests
    def self.student_has_subject
        true if @profile["subjects_of_interest"].length > 0
    end

    #return true if student has set a competeny level for all subjects
    def self.student_subject_competency
        all_competency_set = true
        @profile["subjects_of_interest"].each do |s|
            if s["competency"] == nil
                all_competency_set = false
            end
        end
        return all_competency_set
    end

    #check to see if tutor has set subjects
    def self.tutor_subjects
        all_subjects_set = true
        @tutors.each do |t|
            if t["subjects"].length <= 0
                all_subjects_set = false
            end
        end
        return all_subjects_set
    end



    private
    # def set_student
    #     @student = MockDb.student()
    # end
end