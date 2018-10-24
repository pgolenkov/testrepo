module InstanceCounter
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def instances
      @instances || 0
    end

    private

    def register_instance
      @instances ||= 0
      @instances += 1
    end
  end

  private

  def register_instance
    self.class.send :register_instance
  end

end
