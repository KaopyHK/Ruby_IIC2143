class Example
    no_of_examples = 0 # Variable de clase

    def instance_method #metodo de instancia
    end

    def Example.class_method #metodo de clase
    end
end

=begin
En Ruby tenemos 3 niveles de acceso
-> Publico (public): Accesible para todos. Por defecto todos los metodos son
publicos excepto initialize

-> Protegido (protected): Accesible desde la clase y subclase

-> privado (private): Accesible desde otros metodos dentro del objeto

=end

=begin
var, _var   # variable local, empieza con [a-z] o
@var        # variable de instancia
@@var       # variable de clase
$var        # variable global
=end

class Example
private # metodos siguientes son privados
    def private_method
    end
protected # metodos siguientes son protegidos
    def protected_method
    end
public # metodos siguientes son publicos
    def public_method
    end
end


