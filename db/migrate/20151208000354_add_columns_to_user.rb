class AddColumnsToUser < ActiveRecord::Migration
  # => has_one :profile
  def change
    add_column :users, :name, :string
    add_column :users, :gender, :string
    add_column :users, :age, :integer
    add_column :users, :interested_in_male, :boolean
    add_column :users, :interested_in_female, :boolean




  end
end
