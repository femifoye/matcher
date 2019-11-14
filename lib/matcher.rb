require_relative 'MockDb'

class Matcher 
#before_action :set_student
    
    def self.getRecommendation(student, tutors)
        @profile = student.student()
        #check subjects students are interested in and their competency level
        @studentSubjects = @profile["subjects_of_interest"] 

        #initialize an empty array to store list of recommended tutors
        @recommendedTutors = []
        
        #loop tutors array
        #match tutor subjects with student subjects
        #create an array of all subjects that match
        #create an array for every tutor that has at least one match
        tutors.each do |d|
            tutorSubjects = d["subjects"]
            subject_match = false
            subject_match_array = []
            tutorSubjects.each do |t|
                for i in @studentSubjects do
                    if(t == i["subject"])
                        subject_match = true
                        subject_match_array.push(t)
                    end
                end
            end
            @recommendedTutors.push({"tutor" => d, "subjects_matched" => subject_match_array}) if subject_match == true
        end

        return @recommendedTutors
    end

    def self.matchTutor(student, tutors)
        return self.getRecommendation(student, tutors)    
    end

    def self.matchCompetency(student, tutors)
        @recommendedTutors = self.getRecommendation(student, tutors)
    end

   
end