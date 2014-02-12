class AddAuthorAndTitleToStories < ActiveRecord::Migration
  def change
    remove_column :stories, :credit
    add_column :stories, :title, :string
  end
end
