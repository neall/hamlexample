#!/usr/bin/env ruby

require 'rubygems'
$: << File.dirname(__FILE__) + '/sinatra/lib'
require 'sinatra'

get '/' do
  haml :ex01
end
