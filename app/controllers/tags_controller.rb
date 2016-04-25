class TagsController < ApplicationController
  def show
    @tag = Tag.find_by(name: params[:name])
    @notes = Note.all.select { |n| n.tags.include? @tag.notes }
  end
end
