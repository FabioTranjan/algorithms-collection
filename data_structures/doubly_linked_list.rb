require_relative './node'

class DoublyLinkedList
  attr_accessor :first_node, :last_node

  def initialize(first_node = nil, last_node = nil)
   @first_node = first_node
   @last_node = last_node
  end

  def insert_at_end(value)
    new_node = Node.new(value)

    if !first_node
      @first_node = new_node
      @last_node = new_node
    else
      new_node.previous_node = @last_node
      @last_node.next_node = new_node
      @last_node = new_node
    end
  end

  def remove_from_front
    removed_node = @first_node
    @first_node = @first_node.next_node
    return removed_node
  end

  def print_reverse
    current_node = last_node

    while current_node != nil  do
      p current_node.data
      current_node = current_node.previous_node
    end
  end
end
