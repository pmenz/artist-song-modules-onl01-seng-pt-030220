require 'pry'
require_relative'../lib/concerns/memorable'
require_relative'../lib/concerns/findable'
require_relative'../lib/concerns/paramable'
class Song
  include Paramable
  include Memorable
  extend Memorable
  extend Findable
  attr_accessor :name
  attr_reader :artist
  

  @@songs = []

  def initialize(name)
    @name = name
    @@songs << self
  end


  def self.all
    @@songs
  end

 ''' def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end
'''
  def artist=(artist)
    @artist = artist
  end

end
