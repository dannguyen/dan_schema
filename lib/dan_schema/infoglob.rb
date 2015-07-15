module DanSchema
  class Infoglob < Base
    def initialize(hsh)
      h = ActiveSupport::HashWithIndifferentAccess.new(hsh)
      super


      @_links = ActiveSupport::HashWithIndifferentAccess.new()
      if h[:url].present? && h[:links].present?
        raise StandardError, "Hey you can only have :url OR :links, not both"
      elsif h[:url].present?
        @_links <<  Link.new({:role => "Default", :url => h[:url]})
      else
        @_links = h[:links].map{|l| Link.new(l)}
      end

      @_references = Array(h[:references]).map{|r| Reference.new(r) }
    end

    def default_url
      if @_links.present?
        (@_links['Default'] || Array(@_links)[1])[:url]
      end
    end

    def links
      @_links
    end

    def references
      @_references
    end

  end
end
