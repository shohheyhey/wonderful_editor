class AddStatusToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :article, :status, :string, default: "draft"
  end
end
