# module Example
#   def beef
#     "I'm a beefy steak"
#   end
# end

module Animal
  module Fish
    module InstanceMethods
    end
  end

  module Mammal
    module InstanceMethods

      # include Example
      def furry
        "Ho ho my name is #{self.name} I'm furry!"
      end

      def gestate
        "Oooohh I'm gestating"
      end
    end

    module ClassMethods
      def example
        "OOooh I'm an example"
      end
    end
  end
end