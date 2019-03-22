class MyQueue
    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue << el
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue.first
    end

    def empty?
        @queue.empty?
    end
end

class MyStack
    def initialize
        @stack = []
    end

    def push(el)
        @stack.push(el)
    end

    def pop
        @stack.pop
    end

    def peek
        @stack.last
    end

    def size
        @stack.length
    end

    def empty?
        @stack.length == 0
    end

end

class StackQueue
    def initialize
        @stack_queue = MyStack.new
    end

    def enqueue(el)
        @stack_queue.push(el)
    end

    def dequeue
        storage_stack = MyStack.new
        @stack_queue.size.times do |i|
            storage_stack.push(@stack_queue.pop)
        end
        dequeued = storage_stack.pop

        storage_stack.size.times do |i|
            @stack_queue.push(storage_stack.pop)
        end
        dequeued
    end

    def size
        @stack_queue.size
    end

    def empty?
        @stack_queue.empty?
    end

    end
end

class MinMaxStack

end

class MinMaxStackQueue

end
