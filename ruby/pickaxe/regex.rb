line = "Hola este es un texto de prueba que podria\ncontener en alguna linea la palabra Python\ntambien quizas la palabra Perl."
if line =~ /Perl|Python/
puts "Scripting language mentioned: #{line}"
end

newline = line.gsub(/Python/, 'Ruby') # replace every 'Python' with 'Rubuy
puts newline
