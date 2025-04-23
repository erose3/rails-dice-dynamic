class DiceController < ApplicationController
  def home
    render ({:template => "roll_templates/home"})
  end

  def dynamic_roll

    @num_dice = params.fetch("number_of_dice").to_i
    @sides = params.fetch("how_many_sides").to_i

      @rolls = []

    @num_dice.times do
      die = rand(1...@sides)

      @rolls.push(die)
    end

    render ({:template => "roll_templates/dynamic"})
  end
end
