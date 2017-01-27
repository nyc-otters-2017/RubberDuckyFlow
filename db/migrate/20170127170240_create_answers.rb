class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.string :answer, null: false
      t.references :user
      t.references :question

      t.timestamps(null: false)
    end
  end
end
