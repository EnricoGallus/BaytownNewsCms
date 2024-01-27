class Publication < ApplicationRecord
  has_many :publication_headers
  has_one_attached :pdf_file

  validates :title, presence: true
  validates :number, presence: true
  validates :subtitle, presence: true
  validates :distribution_date, presence: true
  validates :pdf_file, presence: true
  validate :validate_pdf_file_type

  private

  def validate_pdf_file_type
    if pdf_file.attached? && !pdf_file.content_type.in?(%w(application/pdf))
      errors.add(:pdf_file, I18n.t('activerecord.errors.models.publication.attributes.pdf_file.content_type'))
    end
  end
end
