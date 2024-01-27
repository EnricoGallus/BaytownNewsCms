class CreatePublicationHeaders < ActiveRecord::Migration[7.1]
  def change
    create_table :publication_headers do |t|
      t.belongs_to :publication, null: false, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
