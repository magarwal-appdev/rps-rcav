class PgameController < ApplicationController
    def user_plays_paper
        @computer_move = ["rock", "paper", "scissors"].sample
        
        if @computer_move == "rock"
            @outcome = "won"
        elsif @computer_move == "paper"
            @outcome = "tied"
        else
            @outcome = "lost"
        end  
        render("move_templates/played_paper.html.erb")
    end
end        