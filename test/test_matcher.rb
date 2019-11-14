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

    ## match_tutor test cases
    def test_match_tutor
        set_match
        assert_equal(true, @match.length > 0)
    end

    def test_match_tutor_type
        get_one_match
        assert_equal(true, @a_match.class == Hash)
    end

    def test_match_tutor_key
        get_one_match
        assert_equal(true, @a_match.key?("tutor"))
    end

    def test_match_tutor_key_is_hash
        get_one_match
        a_match_value = @a_match["tutor"]
        assert_equal(true, a_match_value.class == Hash)
    end

    def test_match_tutor_subjects_is_array
        get_one_match
        a_match_value = @a_match["subjects_matched"]
        assert_equal(true, a_match_value.class == Array)
    end

    ##########

    ##match_competency test cases
    def test_competency_match
        get_one_match
        a_match_value = @a_match["competency_match"]
        assert_equal(true, a_match_value.class == Array)
    end

    def test_competency_match_length
        get_one_match
        a_match_value = @a_match["competency_match"]
        assert_equal(true, a_match_value.length > 0)
    end
    

    private 
    def set_student
        @student = MockDb.student()
    end

    def set_tutors
        @tutors = MockDb.tutors()
    end

    def get_match
        @student = set_student
        @tutors = set_tutors
        @match = Matcher.matchTutor(@student, @tutors)
        return @match
    end

    def get_one_match
        set_match
        @a_match = @match[0]
        return @a_match
    end

    def set_match
        @match = get_match
    end


end