class CreateKomentars < ActiveRecord::Migration
  def change
    create_table :komentars do |t|
      t.integer :forums_id
      t.string :description_komentar
      t.integer :user_id
      t.date :date_post

      t.timestamps
    end
  end
end
