# Comentario de linea

puts "Hello World!"

=begin
Inicio de comentario con =begin

Variables locales: variable
Variables de instancia: @variable
Variables de clase: @@variable
Variables globales: $variable

Termino de comentario con =end
=end
puts 'Fin comentario'

# No se define la variable
stringg = 'Hello Ing. Software'
puts stringg

# true - false - nil (Null)

# <.class> es el type() de python
puts 5/2
# Retornara 2, el entero de la division, no como Pytohn
puts 5/2.to_f
puts 5.0/2
# Ambos retornan 2.5 como se espera

# <.to_i> transforma la variable a Integer
#20.times {puts "="}
#20.times {puts rand(10)}

# && "y" logico
# || "o" logico

=begin
10.0 == 10
>> true
10.eql?(10.0)
>> false

Se suele usar el ? al definir un metodo, cuando este retorna true or false
=end

def greet(name)
    "Welcome to Ing. de Software #{name}"
end

puts greet 'Paula'

=begin
Rangos:
<(1..9)>  Al transformarlo a un array, incluye el 9
<(1...9)> Este no lo incluye, llega hasta el 8

puts (1...9).to_a
=end

# Arrays
ar = [1, false, "Ruby"]
puts ar.to_s

# <%w> nos permite crear un Array con todos los valores de los substrings
a = %w{Mi comida favorita es la lasagna}
puts a.class
puts "Puts ->" + a.to_s
print "Print ->" + a.to_s # Print no agrega salto de linea despues de printear
p "P ->" + a.to_s

=begin 
<.each{}>
Se le entrega un bloque de codigo
ciudades = %w{Santiago Concepcion Iquique}
ciudades.each{|ciudad| puts 'Me gusta'+ ciudad + '!'}
=end

=begin
Metodos::
<.empty?>
<.uniq>
<.uniq!>
<.join>
<.unshift>
<.include?>
<.pop>
<.last>
<.select>
<.methods>
=end

=begin
HASHES:
numeros = {"one" => "eins", "two" => "zwei", "Santiago": "RM"}
Similar a un diccionario de Python
=end

=begin
Bloques de codigo: Piezas de codigo que aceptan argumentos y devuelven valores

def


1.upto(5) {|i| print i, " "}
99.downto(95) {|i| print i, " "}

=end