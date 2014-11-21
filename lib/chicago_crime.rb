require "chicago_crime/version"
require 'unirest'
module ChicagoCrime
  BASE_URL = "http://data.cityofchicago.org/resource/ijzp-q8t2.json"



  def self.all
    crime_hashes = Unirest.get(BASE_URL).body
    crimes = []
    crime_hashes.each do |hash|
      crimes << Crime.new(hash)
    end
    return crimes
  end




end
