module Menus
  def crete_menu
  puts 'menu created'
  end
end

class Start
  include Menus  
end

coffee = Start.new.create_menu # => "menu created"
