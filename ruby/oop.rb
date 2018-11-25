class Character

  def initialize(class2, sex, hair_color, clothes_color)
    @class2,@sex,@hair_color,@clothes_color = class2, sex, hair_color, clothes_color
  end

    def printChar
      puts @class2
    end

    def printSex
      puts @sex
    end

    def printHairColor
      puts @hair_color
    end

    def printClothesColor
      puts @clothes_color
    end

    def setHair_Color(hair_color)
      @hair_color = hair_color
    end

    def setClothes_color(clothes_color)
      @clothes_color = clothes_color
    end

end



mage = Character.new("Mage", "Male", "Black", "Grey")
mage.printSex
mage.printChar
mage.setHair_Color("red")
mage.setClothes_color("yellow")
mage.printHairColor
mage.printClothesColor
