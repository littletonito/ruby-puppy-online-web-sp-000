# Add your code here

require 'pry'

class Dog

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def self.all
    @@all
  end

  def self.print_all
    @@all.map do |dog|
      puts dog.name #the instance method #name has to be used otherwise itll puts out the object_id and not the actual name 
    end
  end

  def save
    @@all << self
  end

  def self.clear_all
    @@all.clear
  end

end








# class Dog
#
#   attr_accessor :name
#
#   @@all = []

#   def initialize(name)
#     @name = name
#     save
#   end
#
#   def self.all
#     @@all
#   end
#
#   def self.clear_all
#     @@all.clear
#   end
#
#   def self.print_all
#     @@all.map do |dogs|
#        puts dogs.name #.name is an attribute of an instance
#     end
#   end
#
#   def save
#     @@all << self
#   end
# end
