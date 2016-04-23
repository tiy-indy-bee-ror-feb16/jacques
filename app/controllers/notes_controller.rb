class NotesController < ApplicationController

  def index
    @notes = Note.all
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      create_taggings(@note)
    else
      # return status: "400"
    end
  end

  def show
    @note = Note.find(params[:name])
  end

  private

  def note_params
    params.permit(:title, :body)
  end

  def create_taggings(note)
    tag_names = params[:tags].split(",").map(&:strip)
    tag_names.each do |n|
      tag = Tag.find_or_create_by(name: n)
      Tagging.create(tag_id: tag.id, note_id: note.id)
    end
  end
end

# def note_params
#   params.permit(:title, :body, :tag_list)
# end

# post '/api/notes',
#   params: {
#     title:  "My created post",
#     body:   "My created body",
#     tags:   "api, machine, first"
# }

# def tag_list
#   tags.map(&:name).join(", ")
# end
#
# def tag_list=(tag_string)
#   tag_names = tag_string.split(",").map(&:strip)
#   tags = tag_names.map do |name|
#     Tag.find_or_initialize_by(name: CleansedString.new(name).to_s)
#   end
#   self.tags = tags
# end
