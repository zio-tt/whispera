class Episode < ApplicationRecord
  has_many :likes

  validates :title, presence: true, length: { maximum: 10 }
  validates :theme, presence: true
  validates :content, presence: true, length: { maximum: 360 }

  THEMES = [
    '','恋愛', '友情', '勉強', '部活', 'サークル', '先輩後輩', '失恋', '卒業', '入学', '初デート',
    '告白', '成績向上', '受験勉強', '仲間', '自己成長', '運動会', '修学旅行', '文化祭', '合宿',
    '卒業式', '入学式', '花火大会', 'バレンタイン', 'クリスマスパーティ', '同窓会', '天体観測',
    '料理教室', 'ジグソーパズル', 'ゴリラ', '雨の日の図書館'
  ].freeze

  def self.ransackable_attributes(auth_object = nil)
    %w[content created_at guest_token id likes_count theme title updated_at]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[likes]
  end

end
