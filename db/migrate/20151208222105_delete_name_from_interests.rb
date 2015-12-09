class DeleteNameFromInterests < ActiveRecord::Migration
  def change
    remove_column :interests, :name
  end
end
