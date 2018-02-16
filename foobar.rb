class Foobar

  def self.baz(a)
    # Class method, not an instance method
    # Call with `Foobar.baz`
    # Q4 CODE HERE
    a = a.uniq
    a = a.map {|s| s.to_i}
    a = a.map do |item|
      item = item + 2
    end
    a.delete_if &:odd?
    a.delete_if {|x| x > 10}
    a.sum
  end
end
