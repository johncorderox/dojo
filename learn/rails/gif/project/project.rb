class AppleTree
    attr_accessor :height, :age, :apples
    def initialize
        @height = 0
        @age = 0
        @apples = []
    end

    def count_apples
        @apples.count
    end

    def year_gone_by
        @age += 1
    end

    def grow_apples
		if(@age.between?(4,11))
			@apples.push("Red Apple")
		end
	end

    def pick_apples
        @apples.clear
    end
end
