class AutoBacon < Sinatra::Base
  module GenericHelpers
    def filter_nil!(hash)
      hash.each_pair {|key, value| hash.delete key if value.nil?}
    end

    def uri_escape(string)
      URI.escape(string, Regexp.new("[^#{URI::PATTERN::UNRESERVED}]"))
    end

    def uri_unescape(string)
      URI.unescape(string)
    end    
  end
  
  helpers GenericHelpers
end