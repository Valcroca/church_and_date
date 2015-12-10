class CreateProfiles < ActiveRecord::Migration

  belongs_to :users
  has_many :interests

  def change
    create_table :profiles do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.boolean :interested_in_males
      t.boolean :interested_in_females

      t.integer :user_id





      t.timestamps null: false
    end
  end
end
