class AutoBacon < Sinatra::Base
  module ViewHelpers
    include Rack::Utils
    alias_method :h, :escape_html
    
    def partial(template, options={})
      erb "partials/_#{template}".to_sym, options.merge(:layout => false)
    end
    
    def extract_options_from_args!(args)
      args.pop if (args.last.instance_of?(Hash))
    end
    
    def cycle(*values)
      options = extract_options_from_args!(values) || {}
      key = (options[:name] || :default).to_sym
      (@cycle_positions ||= {})[key] ||= {:position => -1, :values => values}
      unless values == @cycle_positions[key][:values]
        @cycle_positions[key] = {:position => -1, :values => values}
      end
      current = @cycle_positions[key][:position]
      @cycle_positions[key][:position] = current + 1
      values.at( (current + 1) % values.length).to_s
    end
  end
  
  helpers Herbie::Helpers
  helpers ViewHelpers
end