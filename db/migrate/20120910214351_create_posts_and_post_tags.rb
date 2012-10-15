class CreatePostsAndPostTags < ActiveRecord::Migration
  def change
    create_table :post_tags_posts, :id => false do |t|
      t.integer :post_tag_id
      t.integer :post_id
    end
  end
end
