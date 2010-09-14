class ComparableArray
  attr_reader :array

  def initialize array
    @array = array.dup
  end

  def =~ other_array
    array.size == other_array.size && array.all? {|e| other_array.include?(e) }
  end

  def inspect
    array.inspect
  end

  def method_missing method, *args
    if array.respond_to?(method)
      array.send(method, *args)
    else
      super
    end
  end

end

module FuzzyArrayExtension
  def ~@
    ComparableArray.new(self)
  end
end
Array.send(:include, FuzzyArrayExtension)