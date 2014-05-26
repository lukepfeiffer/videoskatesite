class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :url
      t.string :username
      t.string :description
      t.integer :user_id
    end
  end
end
