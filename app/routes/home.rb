# encoding: utf-8
class AutoBacon < Sinatra::Base
  before do
    @page = { :title => "AutoBacon" }
  end
  
  get "/" do
    if settings.splash_page
      erb :splash, :layout => false
    else
      erb :index
    end
  end
  
  get "/splash" do
    erb :splash, :layout => false
  end
end