#!/usr/bin/env ruby

require 'rubygems'
require 'sinatra'

get '/' do
  redirect '/slide0'
end

get %r{/slide(\d+)} do
  case params[:captures][0].to_i
  when 0
    haml :welcome
  else
    redirect '/slide0'
  end
end
