20.times do |n|
  Episode.create!(
    title: "名もなき物語 Part#{n}",
    theme: Episode::THEMES.sample,
    content: 
    "この物語はフィクションです。実在の人物・団体には関係ありません。
    私の物語には難解な単語が何回も出てきます。なんちゃって。",
    likes_count: rand(99),
    guest_token: "aaaa444411"
  )
end
