#Uno puede crear clases vacias, y luego agregarle metodos y/o atributos, como se muestra a continuacion.
class Empty
end

smth = Empty.new
smth_2 = Empty.new

# Uno puede agregarle metodos o atributos a una clase, y seran accesibles solo para esa instancia, no para el resto de instancias de la misma clase

def smth.make_something
    puts "Clase 1, doing something"
end

smth.make_something
smth_2.make_something
