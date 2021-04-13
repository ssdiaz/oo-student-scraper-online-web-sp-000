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

  def add_student_attributes(attributes_hash)
    binding.pry
  end

  def self.all

  end
end
