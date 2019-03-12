module Decommissionable
  module ClassMethods

    private
    def all_commissioned
      self.all
    end
  end

end
