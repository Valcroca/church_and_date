class DeleteNameGenderAgeFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :name
    remove_column :users, :age
    remove_column :users, :interested_in_male
    remove_column :users, :interested_in_female
    remove_column :users, :gender

  end
end
