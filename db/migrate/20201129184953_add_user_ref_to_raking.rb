class AddUserRefToRaking < ActiveRecord::Migration[6.0]
  def change
    add_reference :blog_rakings, :user, null: false, foreign_key: true
  end
end
