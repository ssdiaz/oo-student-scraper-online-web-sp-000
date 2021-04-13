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
      Student.new(nattributes)
      binding.pry
    end
  end

  # [1] pry(Scraper)> students
  # => [{:name=>"Ryan Johnson",
  #   :location=>"New York, NY",
  #   :profile_url=>"students/ryan-johnson.html"},
  #  {:name=>"Eric Chu",
  #   :location=>"Glenelg, MD",
  #   :profile_url=>"students/eric-chu.html"},


  def add_student_attributes(attributes_hash)

  end

  def self.all

  end
end
