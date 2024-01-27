# frozen_string_literal: true

json.extract! publication, :id, :number, :title, :subtitle, :distribution_date
#json.url publication_url(publication, format: :json)
json.pdf_url url_for(publication.pdf_file)