require_relative './node'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def reverse!
    # your code here
    
    # reverse the head and tail
    prev_head = tail
    prev_head.prev_node = tail.prev_node

    prev_tail = head
    prev_tail.next_node = head.next_node

    tail = prev_head
    head = prev_tail

    if !head return nil
      # if the original has no next_node, assign it to head
    curr = self.head
    # iterate over list and reverse the next_node and prev_node relationships 
    if curr.next_node
      while curr.next_node
        # stepping ahead curr and modifying previous node
        previous = curr
        curr = curr.next_node
        # reverse next_node and prev_node via a placeholder
        placeholder = previous.next_node
        previous.next_node = previous.prev_node
        previous.prev_node = placeholder
        
        # elsif the original has no prev_node, assign it to tail
      end
    end
      self.tail = curr
  end
end
