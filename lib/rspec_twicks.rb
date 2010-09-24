module RspecTwicks

  def self.included(klass)
    klass.extend(InstanceMethods)
    klass.send(:include, ClassMethods)
  end

  module InstanceMethods

    # mimic shoulda
    def should(desc, &block)
      it('should ' + desc, &block)
    end

    def fetch(desc, &block)
      it('fetch ' + desc, &block)
    end

    def when(desc, &block)
      it('when ' + desc, &block)
    end

  end

  module ClassMethods
  end

end
