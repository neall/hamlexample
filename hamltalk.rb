#!/usr/bin/env ruby

require 'rubygems'
require 'sinatra'

get '/' do
  redirect '/slide0'
end

get %r{/slide(\d+)} do
  @slides = [
    :welcome,
    :whatarethey,
    :whataretheysource,
    :getting,
    :haml,
    :singlemulti
  ]

  @slide = params[:captures][0].to_i
  if @slide < @slides.count then
    # normalize slide urls
    if request.path_info == "/slide#{@slide}" then
      haml @slides[@slide]
    else
      redirect "/slide#{@slide}"
    end
  else
    # wrap around to slide 0
    redirect '/slide0'
  end
end

get '/main.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :main
end
