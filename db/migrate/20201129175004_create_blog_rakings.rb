class CreateBlogRakings < ActiveRecord::Migration[6.0]
  def change
    create_table :blog_rakings do |t|
      t.integer :raking

      t.timestamps
    end
  end
end
