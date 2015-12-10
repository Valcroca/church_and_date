class CreateProfileInterests < ActiveRecord::Migration
  def change
    create_table :profile_interests do |t|
      t.integer :profile_id
      t.integer :interest_id

      t.timestamps null: false
    end
  end
end
