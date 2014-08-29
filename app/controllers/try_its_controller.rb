class TryItsController < ApplicationController

  before_filter :grab_url

  def create
    render :action => :show
  end

  def show
  end

  def source
     @source = Premailer.new(@url, :warn_level => Premailer::Warnings::SAFE)

#    @source  = Roadie::Document.new(RestClient.get(@url)).transform
#    #document  = Roadie::Document.new(RestClient.get(@url).to_s)
#    #uri_data = URI.parse(@url)
#    ##document.url_options = { :host => uri_data.host, :protocol => uri_data.scheme }
#    #@source = document.transform
#
#
    render :text => @source.to_inline_css
  end

  private

  def grab_url
    @url = params[:url] ||  "http://psmag.com/navigation/health-and-behavior/women-arent-welcome-internet-72170/"
  end
end
