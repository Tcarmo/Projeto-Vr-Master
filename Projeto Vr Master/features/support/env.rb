require 'cucumber'
require 'httparty'
require 'httparty/request'
require 'httparty/response'

#Referencia da onde está o arquivo ApiCep
require_relative '../services/ApiCep_service.rb'
include URLCEP