# frozen_string_literal: true

module Nexmo
  class VerifyResponse < Response
    def success?
      status == '0' || status == 'SUCCESS'
    end
  end
end
