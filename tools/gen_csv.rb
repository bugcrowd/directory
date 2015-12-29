require 'JSON'

begin
  json = JSON.parse(File.read("combined_data.json"))
rescue JSON::ParserError
  puts "Syntax Error!"
  exit 1
end

puts "Organization Name, Domain, Channels"
json.each do |org|
  out_string = ""
  out_string << "#{org['organization_name']},"
  out_string << "#{org['domain']},"
  out_string << "#{org['channels'].join(";")}"
  puts out_string
end
