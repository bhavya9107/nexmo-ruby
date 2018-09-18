# frozen_string_literal: true

module Nexmo
  class SMSResponse < Response
    def success?
      messages.all? { |item| item.status == '0' }
    end
  end
end
