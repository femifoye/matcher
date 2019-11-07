module MyUser
    def self.student_props
        return {
            "id" => "3",
            "email" => "timbrewer@gmail.com",
            "firstname" => "Tim",
            "lastname" => "Brewer",
            "role" => "Student",
            "gender" => "Male",
            "has_profile" => "true",
            "location" => "Dublin"
        }
    end

    def self.student
        return {
            "education_level" => "University",
            "description" => "A student ready to learn",
            "subjects_of_interest" => [
                {"subject" => "Mathematics", "competency" => "1"},
                {"subject" => "Chemistry", "competency" => "2"},
                {"subject" => "Finance" , "competency" => "3"}
            ],
            "student_id" => "3"
        }
    end
end
