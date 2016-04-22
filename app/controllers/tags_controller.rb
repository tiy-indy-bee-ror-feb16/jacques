class TagsController < ApplicationController

  def show
    @tag = Tag.find_by(name: params[:tag_name])
  end

end
