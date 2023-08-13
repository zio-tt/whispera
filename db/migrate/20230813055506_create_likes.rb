class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.references :episode, null: false, foreign_key: true
      t.string :guest_token

      t.timestamps
    end
  end
end
