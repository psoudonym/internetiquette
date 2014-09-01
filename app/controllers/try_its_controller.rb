class TryItsController < ApplicationController

  before_filter :grab_url

  def create
    render :action => :show
  end

  def show
  end

  def source
#      @source = Premailer.new(@url, :warn_level => Premailer::Warnings::SAFE)

#     @source  = Roadie::Document.new(RestClient.get(@url)).transform
#     document  = Roadie::Document.new(RestClient.get(@url).to_s)
#     uri_data = URI.parse(@url)
#     #document.url_options = { :host => uri_data.host, :protocol => uri_data.scheme }
#     @source = document.transform
# 
#  
#     result = @source.to_inline_css
#     render :text => result

    begin
      raw_source = RestClient.get(@url)
      document   = Roadie::Document.new(RestClient.get(@url).to_s)
      uri_data   = URI.parse(@url)
      #document.url_options = { :host => uri_data.host, :protocol => uri_data.scheme }
      @source    = document.transform
    rescue Exception => e
      @source    = raw_source
    end
    render :text => @source
  end

  private

  def grab_url
    @url = params[:url] || params[:try_it_url]
  end
end
