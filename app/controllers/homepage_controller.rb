# frozen_string_literal: true

class HomepageController < ApplicationController

  def index
    @posts = Post.where(status: 'pending').order(:created_at)
  end
end
