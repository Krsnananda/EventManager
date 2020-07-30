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