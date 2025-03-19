my_hash = {}
grades = { 'Mark' => 15, 'Jimmy' => 10, 'Jack' => 10}

# A Hash can also be created using the <new> method

my_hash = Hash.new
my_hash = {}

# Los Hashes pueden tener valores de cualquier tipo, incluyendo del tipo complejos como los arreglos , objetos, o inclusive otros hashes

mapping = { 'Mark' => 15, 'Jimmy' => [3,4], 'Nika' => {'a' => 3, 'b' => 4}}
puts mapping['Mark']
puts mapping['Nika']
# Los simbolos son comunmente usados como <hash keys>. Los siguientes hashes son equivalentes

# Valido en todas las versiones de Ruby
grades = { :Mark => 15, :Jimmy => 10, :Jack => 10}
# Valido en Ruby 1.9 y posteriores
grades = { Mark: 15, Jimmy: 10, Jack: 10}

# El siguiente Hash (valido en todas las versiones de Ruby) es diferente, porque todas sus keys son strings

grades = { "Mark" => 15, "Jimmy" => 10, "Jack" => 10}

# Con Ruby 2.2+, hay syntax alternativo para crear hashes con symbol keys (mas util si el simbolo contiene espacios)
grades = { "Jimmy Choo":10, :"Jack Sparrow" => 10}
puts grades
