class FortunesController < ApplicationController

  def horoscopes

    #  Parameters: {"the_sign"=>"aries"}

    @this_sign = params.fetch("the_sign")
    this_sign_sym = @this_sign.to_sym
    all_zodiacs = Zodiac.list
    this_zodiac = all_zodiacs.fetch(this_sign_sym)
    @horoscope = this_zodiac.fetch(:horoscope) 

    #@num_faces = params.fetch("how_many_sides")
    @array_of_numbers = Array.new

    5.times do
      another_number = rand(1...100)
      
      @array_of_numbers.push(another_number)
    end

    render({ :template => "zodiac_templates/zodiac_all.html.erb" })
  end


end
