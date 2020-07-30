require 'csv'

# def clean_zipcode(zipcode)
#   if zipcode.nil?
#     zipcode = '00000'
#   elsif zipcode.length < 5 # Se zipcodes forem menor do que 5, acrescenta zeros
#     zipcode = zipcode.rjust 5, '0'
#   elsif zipcode.length > 5 # Se forem maior que 5 pega os primeiros 5 digitos
#     zipcode = zipcode[0..4]
#   end
# end

# Um metodo mais conciso para o clean_zipcode
def clean_zipcode(zipcode)
  zipcode.to_s.rjust(5, '0')[0..4]
end

puts 'Gerenciador de Eventos inicializado!'

contents =  CSV.open 'event_attendees.csv', headers: true, header_converters: :symbol

contents.each do |row|
  name = row[:first_name] # Captura valor da coluna nome

  zipcode = clean_zipcode(row[:zipcode])

  puts "#{name} #{zipcode}"
end
