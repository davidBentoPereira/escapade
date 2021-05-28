# frozen_string_literal: true

class HomepageController < ApplicationController


  def index
    @posts = Post.all.order(:created_at)
  end
end
