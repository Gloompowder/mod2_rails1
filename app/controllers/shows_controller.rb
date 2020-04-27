class ShowsController < ActionController::Base
    def index 
        @shows = Show.all
    end 

    def show 
        @show = Show.find_by(params[:id])
    end 

    def new 
        @show = Show.new 
    end

    def create 
        show = Show.create(show_params)
        redirect_to show_path(show)
    end 

    def edit 
        @show = Show.find(params[:id])
    end 

    def update 
        show = Show.find_by(params[:id])
        show.update(show_params)
        redirect_to show_path(show)
    end 

    private 

    def show_params
        params.require(:show).permit(:title, :director, :year, :explicit, :genre)
    end
end