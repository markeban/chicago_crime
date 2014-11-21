module ChicagoCrime
  class Crime
    attr_accessor :case_number, :block, :primary_type, :date, :community_area

    def initialize(hash)
      @case_number = hash["case_number"]
      @block = hash["block"]
      @primary_type = hash["primary_type"]
      @date = hash["date"]
      @community_area = hash["community_area"]
    end
  end
end