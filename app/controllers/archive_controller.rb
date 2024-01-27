# frozen_string_literal: true
class ArchiveController < ApplicationController
  def index
    @publications = Publication.order(distribution_date: :desc).page(params[:page]).per(5)
  end
end
