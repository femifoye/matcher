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
        #store competency count to store the 
        tutors.each do |d|
            tutorSubjects = d["subjects"]
            tutorStyle = d["teaching_style"]
            subject_match = false
            subject_match_array = []
            competency_match_array = []
            tutorSubjects.each do |t|
                for i in @studentSubjects do
                
                    case i["competency"]
                    when "1"
                        subject_competency = "Slow"
                    when "2"
                        subject_competency = "Average"
                    when "3"
                        subject_competency = "Fast"
                    end
                    if(t == i["subject"])
                        subject_match = true
                        subject_match_array.push(t)
                        if(tutorStyle == subject_competency)
                            competency_match_array.push(t)   
                        end
                    end
                end
            end
            @recommendedTutors.push({"tutor" => d, "subjects_matched" => subject_match_array, "competency_match" => competency_match_array}) if subject_match == true
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