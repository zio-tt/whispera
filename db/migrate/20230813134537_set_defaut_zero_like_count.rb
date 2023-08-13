class SetDefautZeroLikeCount < ActiveRecord::Migration[7.0]
  def change
    change_column_default :episodes, :likes_count, from: nil, to: "0"
  end
end
