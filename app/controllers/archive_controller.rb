# frozen_string_literal: true
class ArchiveController < ApplicationController
  def index
    @publications = Publication.includes(:publication_headers).order(distribution_date: :desc).page(params[:page]).per(5)
    respond_to do |format|
      format.html
      format.json { render 'index.json.jbuilder' }
    end
  end
end
