class Task
  attr_accessor :title, :description
  @@all = []

  def self.all
    @@all
  end

  def initialize(attributes={})
    @title = attributes['title']
    @description = attributes['description']

    @@all << self
  end
end