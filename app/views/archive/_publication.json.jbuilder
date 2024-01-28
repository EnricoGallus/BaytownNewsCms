# frozen_string_literal: true

json.extract! publication, :id, :title, :subtitle, :number, :distribution_date
json.headers publication.publication_headers, partial: 'publication_header', as: :header
json.download_url publication.pdf_file.service_url if publication.pdf_file.attached?