#!/usr/bin/env ruby

require 'rubygems'
$: << File.dirname(__FILE__) + '/sinatra/lib'
require 'sinatra'

get '/' do
  @bodytext = 'This comes from an instance variable.'
  haml :ex02
end
