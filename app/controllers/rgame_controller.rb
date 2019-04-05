class RgameController < ApplicationController
    def user_plays_rock
        @computer_move = ["rock", "paper", "scissors"].sample
        
        if @computer_move == "rock"
            @outcome = "tied"
        elsif @computer_move == "paper"
            @outcome = "lost"
        else
            @outcome = "won"
        end
        render("move_templates/played_rock.html.erb")
    end
end