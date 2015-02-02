class StaticPagesController < ApplicationController

  def landing
  end

  def about
  end

  def contact
    respond_to do |format|
      format.js
    end
  end

  def projects
  end

end
