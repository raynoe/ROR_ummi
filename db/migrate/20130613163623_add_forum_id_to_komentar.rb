class AddForumIdToKomentar < ActiveRecord::Migration
  def change
    add_column :komentars, :forum_id, :integer
  end
end
