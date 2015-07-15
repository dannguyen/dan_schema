module DanSchema
  class Base
    attr_reader :title, :description, :role, :summary
    alias_method :name, :title
    def initialize(hsh)
      h = ActiveSupport::HashWithIndifferentAccess.new(hsh)
      @title = h[:title]
      @description = h[:description]
      @role = h[:role]
      @summary = h[:summary]
    end
  end
end
