class CreatePostTags < ActiveRecord::Migration
  def change
    create_table :post_tags do |t|
      t.string :title
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
