class Publication < ApplicationRecord
  has_many :publication_headers
  has_one_attached :pdf_file
end
