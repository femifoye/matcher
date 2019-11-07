require_relative 'Student'


module MockDb
    def self.tutors
        return [
            {
                "headline" => "I am a tutor",
                "description" => "i am a professional Javascript instructor",
                "years_teaching" => "3",
                "teaching_style" => "Fast",
                "work_experience" => [
                    {
                        "company" => "Apple",
                        "location" => "California",
                        "title" => "Product Designer",
                        "from" => "Tue, 05 Nov 2015",
                        "to" => "Wed, 10 Sept 2017"
                    }                  
                ],
                "education" => [
                    {
                        "school" => "National College of Ireland",
                        "degree" => "MSc Cloud Computing",
                        "graduated" => "Fri, 12 Nov 2014"
                    }
                    
                ],
                "subjects" => [
                    "Javascript",
                    "Computing",
                    "Cloud Computing"
                ],
                "badge" => "3"
            },
            {
                "headline" => "I am another tutor",
                "description" => "i am a professional Rails instructor",
                "years_teaching" => "5",
                "teaching_style" => "Medium",
                "work_experience" => [
                    {
                        "company" => "Intel",
                        "location" => "Michigan",
                        "title" => "Backend Developer",
                        "from" => "Tue, 05 Nov 2012",
                        "to" => "Wed, 10 Sept 2014"
                    }                  
                ],
                "education" => [
                    {
                        "school" => "National College of Ireland",
                        "degree" => "MSc Data Analytics",
                        "graduated" => "Fri, 12 Nov 2014"
                    }
                    
                ],
                "subjects" => [
                    "Ruby",
                    "Computer Science",
                    "Data Analytics"
                ],
                "badge" => "1"
            },
            {
                "headline" => "Looking to impact lives",
                "description" => "i am a Physics instructor with over 5 years in experience",
                "years_teaching" => "10",
                "teaching_style" => "Slow",
                "work_experience" => [
                    {
                        "company" => "Facebook",
                        "location" => "Palo Alto",
                        "title" => "Data Scientist",
                        "from" => "Tue, 05 Nov 2004",
                        "to" => "Wed, 10 Sept 2012"
                    }                  
                ],
                "education" => [
                    {
                        "school" => "Harvard University",
                        "degree" => "MSc Physics",
                        "graduated" => "Fri, 15 Sept 2002"
                    }
                    
                ],
                "subjects" => [
                    "Physics",
                    "Mathematics",
                    "Computer Science"
                ],
                "badge" => "5"
            },
            {
                "headline" => "A professional Finance instructor",
                "description" => "i am a Finance intructor with over 8 years in the finance industry",
                "years_teaching" => "6",
                "teaching_style" => "Fast",
                "work_experience" => [
                    {
                        "company" => "JP Morgan",
                        "location" => "New York",
                        "title" => "Financial Analyst",
                        "from" => "Tue, 05 Nov 2006",
                        "to" => "Wed, 10 Sept 2012"
                    }                  
                ],
                "education" => [
                    {
                        "school" => "National University of Ireland",
                        "degree" => "MSc Finance",
                        "graduated" => "Fri, 15 Sept 2005"
                    }
                    
                ],
                "subjects" => [
                    "Business Management",
                    "Finance",
                    "Accounting"
                ],
                "badge" => nil
            },
            {
                "headline" => "Chemical Engineering tutor",
                "description" => "i am a Chemical Engineer with a huge knowledge base in the subject",
                "years_teaching" => "3",
                "teaching_style" => "Medium",
                "work_experience" => [
                    {
                        "company" => "Pfizer",
                        "location" => "New York",
                        "title" => "Chemical Engineer",
                        "from" => "Tue, 05 Nov 2006",
                        "to" => "Wed, 10 Sept 2012"
                    }                  
                ],
                "education" => [
                    {
                        "school" => "National University of Ireland",
                        "degree" => "MSc Chemical Engineering",
                        "graduated" => "Fri, 15 Sept 2004"
                    }
                    
                ],
                "subjects" => [
                    "Biochemistry",
                    "Chemistry",
                    "Sciences"
                ],
                "badge" => nil
            },  
        ]
    end

    def self.student
        return MyUser;
    end
end
