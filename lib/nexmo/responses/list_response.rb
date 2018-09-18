module Nexmo
  class ListResponse < Response
    include Enumerable

    def each
      return enum_for(:each) unless block_given?

      embedded = @attributes.fetch(:_embedded).to_h

      embedded.values.first.each { |item| yield item }
    end
  end
end
