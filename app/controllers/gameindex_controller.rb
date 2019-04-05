class GameindexController < ApplicationController
    def index_page
    render("move_templates/index.html.erb")
    end
end
