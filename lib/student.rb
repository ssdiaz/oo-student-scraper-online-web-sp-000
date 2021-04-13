class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)
    student_hash.each do |key, value|
      self.send("#{key.to_s}=", value)
      @@all << self
    end
  end

  def self.create_from_collection(students_array)
    # iterates over the array of hashes and creates a new indiv student using each hash
    students_array.each do |student|
      Student.new(student)
    end
  end

  # [1] pry(#<Student>)> attributes_hash
  # => {:twitter=>"someone@twitter.com",
  #  :linkedin=>"someone@linkedin.com",
  #  :github=>"someone@github.com",
  #  :blog=>"someone@blog.com",
  #  :profile_quote=>
  #   "\"Forget safety. Live where you fear to live. Destroy your reputation. Be notorious.\" -
  # Rumi",
  #  :bio=>
  #   "I was in southern California for college (sun and In-n-Out!), rural Oregon for high schoo
  # l (lived in a town with 1500 people and 3000+ cows), and Tokyo for elementary/middle school.
  # "}

  def add_student_attributes(attributes_hash)
    attributes_hash.each do |key,value|
      self.send("#{key.to_s}=",value)
    end
    self
  end

  def self.all
    @@all
  end
end
