class NotesController < ApplicationController

  def index
    @notes = Note.all
    render json: @notes
  end

  def create
    @note = Note.new(title: params[:title],
                      body: params[:body],
                      tags: params[:tags]
                    ) # Jacques!!!
    if @note.save
      render json: @note
    else
    end
  end

  def show
    @note = Note.find(params[:name])
    render json: @note
  end
end
