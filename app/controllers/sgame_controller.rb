class SgameController < ApplicationController
    def user_plays_scissors
        @computer_move = ["rock", "paper", "scissors"].sample
        
        if @computer_move == "rock"
            @outcome = "lost"
        elsif @computer_move == "paper"
            @outcome = "won"
        else
            @outcome = "tied"
        end  
        render("move_templates/played_scissors.html.erb")
    end
end