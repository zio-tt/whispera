class AddColumnToEpisodes < ActiveRecord::Migration[7.0]
  def up
    add_column :episodes, :guest_token, :string
  end

  def down
    remove_column :episodes, :guest_token, :string
  end
end
