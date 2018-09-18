module Nexmo
  class NumberInsightResponse < Response
    def success?
      status.zero?
    end
  end
end
