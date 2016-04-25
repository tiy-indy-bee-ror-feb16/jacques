class NotesController < ApplicationController
  before_action :set_notes, only: [:update, :show]

  def index
    @notes = Note.all
  end

  def new
    @note = Note.new
  end

  def show
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      render json: @note
    else
      render :errors, status: 400
    end
  end

  def update
    if @note.update(note_params)
      render :show, status: :ok, location: @note
    else
      render json: @note.errors, status: :unprocessable_entity
    end
  end

private

  def set_notes
    @note = Note.find(params[:id])
  end

  def note_params
    params.permit(:title, :body, :tags)
  end

end
