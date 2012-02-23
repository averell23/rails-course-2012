module Animal
  def move_around
    puts "Moving..."
  end

  def eat
    puts "#{self.class.name} eating"
  end

end 



class Bird
  include Animal
  
  protected
 
  def protected_method
  end

  private

  def private_method
  end
end

# Re-opening class
class Bird
  def new_function
   puts "Brand new"
  end

  def quack
     "Beep"
  end

end


class Chicken < Bird

 def other_method
   private_method # Will still work
 end

 def yet_another_method
   protected_method # Will work
   self.protected_method # Will also work
 end

  def quack
     puts "put put"
  end

end

class Cat
  include Animal

  def quack
    puts "meow"
  end
end

def quack_it(thingy)
   thingy.quack
end


