class NotesController < ApplicationController

  def index
    @notes = Note.all
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      add_tags(@note)
      render :show, status: :created
    else
      render :errors, status: 400
    end
  end

  private

  def note_params
    params.permit(:title, :body)
  end

  def add_tags(note)
    tags_array = params[:tags].split(",").collect(&:strip)
    tags_array.each do |tag|
      new_tag = Tag.find_or_create_by(name: tag)
      Tagging.create(tag_id: new_tag.id, note_id: note.id)
    end
  end

end
