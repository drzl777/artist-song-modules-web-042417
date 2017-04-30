require 'pry'

class Song

  extend Memorable::ClassMethods, Findable
  include Memorable::InstanceMethods, Paramable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

=begin
  def initialize
    @@songs << self
  end
=end

=begin
  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end
=end

  def artist=(artist)
    @artist = artist
  end

=begin
  def self.reset_all
    @@songs.clear
  end

=end

=begin
  def to_param
    name.downcase.gsub(' ', '-')
  end
=end

=begin
  def self.count
    self.all.count
  end
=end

  def self.all
    @@songs
  end
end
