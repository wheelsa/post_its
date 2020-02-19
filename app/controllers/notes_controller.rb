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

  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    if @note.update(note_params)
      redirect_to notes_path
    else
      render :edit
    end 
  end

  def destroy
    @note = Note.find(params[:id]).destroy #find the page we want to destroy
    redirect_to notes_path
  end

  def create
    @note = Note.new(notes_params)
    if @note.save
      redirect_to notes_path
    else 
      render :new
    end
  end 

  private
    def notes_params
      params.require(:note).permit(:date, :author, :notes, :deliverable_date)
    end 
end
