require 'minitest/autorun'
require 'matcher'
require 'TestCases'
require 'MockDb'

class MatcherTest < Minitest::Test
    
    
    #@profile = @student.student()


    #test if the program has loaded a student
    def test_has_student
        assert_equal(true, TestCases.get_student())
    end

    #test if current student has a role
    def test_student_has_role
        assert_equal(true, TestCases.get_student_role())
    end

    #test if current student role is student
    def test_check_if_student_is_student
        assert_equal(true, TestCases.is_student())
    end

    def test_if_student_has_subject
        assert_equal(true, TestCases.student_has_subject())
    end

    def test_if_student_set_subject_competency
        assert_equal(true, TestCases.student_subject_competency())
    end

    def test_if_tutors_set_subjects
        assert_equal(true, TestCases.tutor_subjects())
    end

    def test_match_tutor
        @student = set_student
        @tutors = set_tutors
        assert_equal(true, Matcher.matchTutor(@student, @tutors).length > 0)
    end

    private 
    def set_student
        @student = MockDb.student()
    end

    def set_tutors
        @tutors = MockDb.tutors()
    end


end