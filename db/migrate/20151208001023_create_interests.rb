class CreateInterests < ActiveRecord::Migration
  belongs_to :profile
  def change
    create_table :interests do |t|

      t.string :description
      t.integer :profile_id

      

      t.timestamps null: false


    end
  end
end
