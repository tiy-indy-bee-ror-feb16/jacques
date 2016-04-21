class NotesController < ApplicationController

  def index
    @notes = Note.all
  end

  def create
    @note = Note.new(note_params)
    if @note.save
    else
      render :errors, status: 400
    end
  end

  private

  def note_params
    params.permit(:title, :body)
  end

end
