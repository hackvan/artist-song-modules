module Memorable
  module ClassMethods
    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end
  end

  module InstanceMethods
    def initialize
      # .initialize is an instance method. So, inside .initialize, 
      # self refers to the instance of the class on which you are 
      # operating.
      self.class.all << self
    end
  end
end