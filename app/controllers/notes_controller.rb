class NotesController < ApplicationController
  def index
    @notes = Note.all
  end 

  def show
    @note = Note.find(params[:id])
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(notes_params)
    if @note.save
      redirect_to note_path
    else 
      render :new
    end
  end 

  private
    def notes_params
      params.require(:note).permit(:date, :author, :notes, :deliverable_date)
    end 


  def edit
  end

  def destroy
  end
end
