class NotesController < ApplicationController

  def index
    @notes = Note.all
  end

  def create
    @note = Note.new(title: params[:title],
                      body: params[:body],
                      tags: params[:tags]
                    ) # Jacques!!!
      if @note.save
      else
      end
  end

  def show
    @note = Note.find(params[:name])
  end
end
