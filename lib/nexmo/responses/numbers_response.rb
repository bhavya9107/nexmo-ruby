# frozen_string_literal: true

module Nexmo
  class NumbersResponse < Response
    def success?
      error_code == '200'
    end
  end
end
