require 'rubygems'
require 'httparty'

class CorreiosAPI
	include HTTParty
	base_uri "correiosapi.apphb.com/"
	
	def pegaCep
		self.class.get('/cep/13040089')
	end
end

correios = CorreiosAPI.new
#puts correios.pegaCep

correios.pegaCep.each do |pegaCep|
	puts pegaCep
end
