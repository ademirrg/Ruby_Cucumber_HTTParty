Given(/^the system try to get valid addresses$/) do
  #CEP 03381060
end

Then(/^the system will get the complete address through correios API$/) do
  response = HTTParty.get("http://correiosapi.apphb.com/cep/03381060")
  puts response.message
end

When(/^the system try to get invalid addresses$/) do
  #CEP AAAAAAAA
end

Then(/^the system will get error invalid address through correios API$/) do

end