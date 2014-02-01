class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.timestamps
    end

    add_attachment :images, :image_file
  end
end
