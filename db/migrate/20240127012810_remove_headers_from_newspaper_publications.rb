class RemoveHeadersFromNewspaperPublications < ActiveRecord::Migration[7.1]
  def change
    remove_column :publications, :headers, :text, array: true, default: []
  end
end
