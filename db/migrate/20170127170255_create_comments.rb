class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :comment, null: false
      t.references :user
      t.string :commentable_type
      t.integer :commentable_id

      t.timestamps(null: false)
    end
  end
end
