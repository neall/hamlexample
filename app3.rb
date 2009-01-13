#!/usr/bin/env ruby

require 'rubygems'
$: << File.dirname(__FILE__) + '/sinatra/lib'
require 'sinatra'

get '/' do
  def bodytext
    'This comes from an instance method.'
  end

  haml :ex03
end
