class NotesController < ApplicationController

  def index
    @notes = Note.all
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      create_taggings(@note)
    else
      render :errors, status: 400
    end
  end

  def show
    @note = Note.find(params[:name])
  end

  private

  def note_params
    params.permit(:title, :body) # :tag_list
  end

  def create_taggings(note)
    tag_names = params[:tags].split(",").map(&:strip)
    tag_names.each do |n|
      tag = Tag.find_or_create_by(name: n)
      Tagging.create(tag_id: tag.id, note_id: note.id)
    end
  end
end
