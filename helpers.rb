class Item
  @@items = []
  attr_accessor :name, :id, :sym, :max
  def initialize(name, id, max=64, sym=nil)
    sym = name.to_sym unless sym
    @name = name
    @sym = sym
    @id = id
    @max = max
  end
  
  def self.item_for name
    
  end
  
  def image
    "/items/#{@sym.to_s}.png"
  end
  
  def image_tag
    "<img src=\"#{image}\" />"
  end
  
  def self.items=(v)
    @@items = v
  end
  def self.items
    @@items
  end
end

Item.items = [
    Item.new("plank", 5),
    Item.new("stick", 280),
    Item.new("axe_diamond", 279,1),
    Item.new("coal_item", 263),
    Item.new("cobblestone", 4),
    Item.new("diamond_gem", 264,1),
    Item.new("fence", 85),
    Item.new("fishingrod", 346,1),
    Item.new("gold_ingot", 266),
    Item.new("hoe_diamond", 1562,1),
    Item.new("iron_ingot", 265),
    Item.new("shovel_diamond", 277,1),
    Item.new("string", 287),
    Item.new("torch", 50),
  ]


def cart_item item
  "<li>#{item.image_tag} #{item.name}</li>"
end

# 
# def recipe item
#   items = recipe_for(item)
#   p items
#   rows = [
#     items[0..2].map!{ |i| "<td>#{image_for_item(i)}</td>" },
#     items[3..5].map!{ |i| "<td>#{image_for_item(i)}</td>" },
#     items[6..8].map!{ |i| "<td>#{image_for_item(i)}</td>" }
#   ].map{ |r| "<tr>#{r}</tr>" }.join("\n")
#   "<table cellspacing=\"0\" cellpadding=\"0\" class=\"recipe\">#{rows}</table>"
# end
