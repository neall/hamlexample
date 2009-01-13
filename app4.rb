#!/usr/bin/env ruby

require 'rubygems'
$: << File.dirname(__FILE__) + '/sinatra/lib'
require 'sinatra'

helpers do
  def bodytext
    'This comes from an instance method declared in a "helper" block.'
  end
end

get '/' do
  haml :ex03
end
