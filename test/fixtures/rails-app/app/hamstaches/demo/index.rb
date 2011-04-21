class Demo::Index < Hamstache::Template
  def items
    [{ :name => "Item 1"},
     { :name => "Item 2"},
     { :name => "Item 3"}]
  end
end

