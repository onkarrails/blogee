class ChangeCategoriesToRichJoin < ActiveRecord::Migration
  def up
	add_column :categories_posts, :id, :primary_key
	# this might seem right, but it's not:
	#add_column :categories_posts, :id, :integer
	#add_index :categories_posts, :id
  end

  def down
	remove_column :categories_posts, :id
  end
end
