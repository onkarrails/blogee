class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
		t.column :username, :string, :limit => 25, :default => "", :null => false
		t.column :hashed_password, :string, :limit => 40, :default => "", :null => false
		t.column :first_name, :string, :limit => 25, :default => "", :null => false
		t.column :last_name, :string, :limit => 40, :default => "", :null => false
		t.column :email, :string, :limit => 50, :default => "", :null => false
		t.column :display_name, :string, :limit => 25, :default => "", :null => false
		t.column :user_level, :integer, :limit => 3, :default => "", :null => false
	 end
	 User.create(:username =>'omkar', :hashed_password => 'omkar', :first_name => 'bellamkonda', :last_name => 'omkar', :email => 'abc@abc.com', :display_name => 'omkarpassword', :user_level =>9)
  end
  def self.down
	drop_table :users
	end
 end

