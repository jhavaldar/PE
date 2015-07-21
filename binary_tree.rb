
module BinaryTree

	class Node
		attr_accessor :left, :right, :q
		attr_reader :value

		def initialize (v, label)
			@value = v
			@label = label
			@q = Queue.new
			q.enq(self)
		end

		def inspect
			until q.empty?

				line = Queue.new
				# Print out all the values in the queue
				str = 
				until q.empty?
					popped = q.deq
					line.enq(popped)
					print popped.value.to_s + "\t"
				end
				puts ""

				until line.empty?
					curr = line.deq
					if curr.left
						q.enq(curr.left)
					end
					if curr.right
						q.enq(curr.right)
					end
				end
			end
		end

		def insert (num)
			if num < @value
				if left 
					@left.insert(num)
				else 
					@left = Node.new(num)
				end
			elsif num > @value
				if right 
					@right.insert(num)
				else 
					@right = Node.new(num)
				end
			end
		end
	end
end