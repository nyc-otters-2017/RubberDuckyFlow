class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.references :user
      t.integer :votable_id
      t.string :votable_type

      t.timestamps(null: false)
    end
  end
end
