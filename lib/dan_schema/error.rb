module DanSchema
  class DanError < StandardError
  end


  class ImproperFormatError < DanError; end
  class URLMissing < DanError; end

end
