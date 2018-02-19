class AppleTree
    attr_accessor :age
    attr_reader :height, :apples
    def initialize
        @height = 5
        @age = 0
        @apples = 0
    end

    def count_apples
        return @apples
    end

    def year_gone_by
        @age += 1
        @height += 3
        if @age > 3
          @apples += 1
        end
    end
    def pick_apples
        @apples = 0
    end
end
