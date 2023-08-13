class CreateEpisodes < ActiveRecord::Migration[7.0]
  def change
    create_table :episodes do |t|
      t.string :title
      t.string :theme
      t.text :content
      t.integer :likes_count

      t.timestamps
    end
  end
end
