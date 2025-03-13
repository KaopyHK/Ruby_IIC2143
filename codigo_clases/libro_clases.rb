=begin 

Syntax:

- class Name
- #some code describing class behavior
- end

Remarks:

Class names in Ruby are Constants, so the first letters should be a capital.

class Cat # correct
end

class dog # wrong, throws an error
end
=end

=begin

Constructor:
    A class can have only one constructor, that is a method called <initialize>. The method is 
    automatically invoked when a new instance of the class is created.

class Customer
    def initialize(name)
        @name = name.capitalize
    end
end

sarah = Customer.new('sarah')
sarah.name #=> 'Sarah'

=end

=begin

Creating a class:
    You can define a new class using the <class> keyword

class MyClass
end

    Once defined, you can create a new instance using the <.new> method

somevar = MyClass.new
# => #<MyClass:0x007fe2b8aa4a18>

=end

=begin

Access levels:
    Ruby has three access levels. They are public, private and protected.

    Methods that follows the private or protected keywords are defined as such. Methods that come before
    these are implicitly defined as public methods.

Public Methods:

    A public method should describe behavior of the object being created. These methods can be called
    from outside the scope of the created object.

class Cat
    def initialize(name)
        @name = name
    end

    def speak
        puts "I'm #{@name} and I'm 2 years old"
    end

    ...
end

new_cat = Cat.new("Garfield")
#=> <Cat:0x2321868 @name="garfield">

new_cat.speak
#=> I'm garfield and I'm 2 years old

    These methods are public ruby methods, they describe the behavior for initializing a new cat
    and the behaviour of the speak method

    <public> keyword is unnecesary, but can be used to escape <private> or <protected> 

def MyClass
    def first_public_method
    end

    private

    def private_method
    end

    public

    def second_public_method
    end
end

    Private methods:

        Private methods are not accesible from outside of the object. They are used internally by the object.
        Using the cat example again:

class Cat
    def initialize(name)
        @name = name
    end
    
    def speak
        age = calculate_cat_age # here we call the private method
        puts "I'm #{@name} and I'm #{age} years old"
    end

    private
    def calculate_cat_age
        2 * 3 - 4
    end
end

my_cat = Cat.new("Sayumi")
my_cat.speak #=> I'm Sayumi and I'm 2 years old
my_cat.calculate_cat_age #=> NoMethodError: private method 'calculate_cat_age' called for #<Cat:0x2321868 @name="Sayumi">

    As you can see in the example above, the newly created Cat object has access to the <calculate_cat_age> method internally.
    We assign the variable <age> to the result of running the private <calculate_cat_age> method which prints the name
    and the age of the cat to the console

    When we try and call the calculate_cat_age method from outside the my_cat object, 
    we receive a NoMethodError because it’s private. Get it?

=end
