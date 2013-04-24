require 'json'
require 'bundler'
Bundler.require

class AutoBacon < Sinatra::Base
  set :views,         File.dirname(__FILE__) + '/app/views'
  set :public_folder, File.dirname(__FILE__) + '/public'
  set :app_root,      File.expand_path(File.dirname(__FILE__))
  set :splash_page,   TRUE
  
  APP_ROOT = settings.app_root
  
  before do
    redirect request.url.sub('http://', 'http://www.'), 301 unless request.host =~ /autobacon.dev$|^www.autobacon.net$|^staging.autobacon.net$/

  end
end

Dir[File.join(File.dirname(__FILE__), 'app/**/*.rb')].sort.each { |f| require f }