module DanSchema
  class Link < Base
    attr_reader :url
    def initialize(hsh)
      super
      if hsh[:url].present?
        @url = hsh[:url]
      else
        raise URLMissing, ":url attribute is required"
      end
    end
  end
end
