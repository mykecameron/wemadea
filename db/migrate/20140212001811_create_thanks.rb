class CreateThanks < ActiveRecord::Migration
  def change
    create_table :thanks do |t|
      t.text :content
      t.timestamps
    end
  end
end
