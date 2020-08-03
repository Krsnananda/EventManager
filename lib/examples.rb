puts 'Gerenciador de Eventos inicializado!'

contents = File.read 'event_attendees.csv' #Lê o arquivo inteiro
puts contents

lines =  File.readlines 'event_atendees.csv' #Lê arquivo linha por linha
lines.each_with_index do |line, index|
  next if index == 0 # Passa para a próxima linha se index for igual a zero  - para passar o cabeçalho e pegar o conteúdo
  columns = line.split(',') #Cria array separando as colunas do csv
  name = columns[2] # Captura valor da coluna nome
  puts name
end

def clean_zipcode(zipcode)
  if zipcode.nil?
    zipcode = '00000'
  elsif zipcode.length < 5 # Se zipcodes forem menor do que 5, acrescenta zeros
    zipcode = zipcode.rjust 5, '0'
  elsif zipcode.length > 5 # Se forem maior que 5 pega os primeiros 5 digitos
    zipcode = zipcode[0..4]
  end
end
