require_relative 'MockDb'

class Matcher 
#before_action :set_student

    def self.matchTutor(student, tutors)

        @profile = student.student()
        #check subjects students are interested in and their competency level
        @studentSubjects = @profile["subjects_of_interest"] 

        #initialize an empty array to store list of recommended tutors
        @recommendedTutors = []

        tutors.each do |d|
            tutorSubjects = d["subjects"]
            subject_match = false
            tutorSubjects.each do |t|
                for i in @studentSubjects do
                    if(t == i["subject"])
                        subject_match = true
                    end
                end
            end
            @recommendedTutors.push(d) if subject_match == true
        end

        return @recommendedTutors
        
    end

   
end