class StaticPagesController < ApplicationController
  def lobby
  end

  def table
    @game_table = params[:game_table]
  end

  def user_edit
  end
end
