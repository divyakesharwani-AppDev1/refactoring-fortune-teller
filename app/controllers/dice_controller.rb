class DiceController < ApplicationController
  def infinity_and_beyond
     #Parameters: {"number_of_dice"=>"42", "how_many_sides"=>"513"}

     @num_dice = params.fetch("number_of_dice")
     @num_faces = params.fetch("how_many_sides")

     @array_of_rolls = Array.new

     @num_dice.to_i.times do
      @array_of_rolls.push(rand(@num_faces.to_i)+1)
     end

     render({:template => "dice_templates/infinity.html.erb"})
  end
end
