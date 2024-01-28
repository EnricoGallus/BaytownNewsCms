# frozen_string_literal: true
class ArchiveController < ApplicationController
  def index
    @publications = Publication.includes(:publication_headers).order(distribution_date: :desc).page(params[:page]).per(5)
  end
end
