# frozen_string_literal: true
class ArchiveController < ApplicationController
  def index
    @publications = Publication.page(params[:page]).per(5)
  end
end
