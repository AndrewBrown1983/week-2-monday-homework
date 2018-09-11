class Student

def initialize(student_name, cohort)
  @student_name = student_name
  @cohort = cohort
end

def get_student_name
  return @student_name
end

def get_cohort_code
  return @cohort
end

def set_student_name(name)
  @student_name = name
end

def set_cohort_code(code)
  @cohort = code
end
def speak()
  return "I can talk"
end

def fav_language(language)
  return "My favorite language is #{language}"
end

end
