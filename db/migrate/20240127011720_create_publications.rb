class CreatePublications < ActiveRecord::Migration[7.1]
  def change
    create_table :publications do |t|
      t.string :number
      t.date :distribution_date
      t.string :title
      t.string :subtitle
      t.text :headers

      t.timestamps
    end
  end
end
