# Un bloque es una pieza de codigo que puede aceptar
# argumentos y devuelve un valor
# Siempre es un parametro en la llamada de un metodo

# metodo {codigo}

# metodo {|param1, param2| codigo}

# 2.times {puts "Hello World!"}

# ["Sofia", "Tomas", "Juan"].each { |name| puts "Hello #{name}"}

def greet(name)
    puts "Hello #{name} :)"
    yield name
    puts "Goodbye #{name}!"
end

# greet("Jorge") {|name| puts "Nice to meet you #{name}"}

# Evita errores por llamar un bloque y que no exista
def example
    yield if block_given?
end

# Puedes aceptar block como argumento explicitamente

def example2(&block)
    block.call if block
end
example2 {puts "This is a block!"}