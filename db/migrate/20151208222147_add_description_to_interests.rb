class AddDescriptionToInterests < ActiveRecord::Migration
  def change
      add_column :interests, :description, :text
      add_column :interests, :profile_id, :integer

  end
end
