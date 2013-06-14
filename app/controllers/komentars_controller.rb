class KomentarsController < ApplicationController

    def show
        @komentar = Komentar.find(params[:id])    
    end

    def new
        @komentar = Komentar.new
    end

    def edit
        @komentar = Komentar.find(params[:id])
    end

    def create
        # forum = Forum.where(:id => params[:komentar][:forum_id]).first
        @komentar = Komentar.new(params[:komentar])
        if @komentar.save
            flash[:notice] = "Create new komentar Successfully"
            redirect_to forums_path
        else
            redirect_to forums_path
        end
    end

    def update
      @komentar = Komentar.find(params[:id])
      if @komentar.update_attributes (params[:komentar])
        flash[:notice] = "Update komentar Successfully"
        redirect_to :action => :index
      else
        render :action => :new
      end
    end

    def destroy
        @komentar = Komentar.find(params[:id])
        @komentar.destroy
        redirect_to komentars_path
    end
end
