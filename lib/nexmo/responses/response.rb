module Nexmo
  class Response < Entity
    def initialize(entity)
      @attributes = entity.to_h
    end
  end
end
