class AddCredits < ActiveRecord::Migration
  def change
    add_column :images, :credit, :string
    add_column :stories, :credit, :string
  end
end
