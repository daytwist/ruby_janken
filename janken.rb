RPS_HANDS = ["グー", "チョキ", "パー"]

def janken
  puts "じゃんけん..."
  puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
  your_hand = gets.chop.to_i
  com_hand = rand(0..2)

  if your_hand.between?(0, 2)
    puts "ホイ！"
    judge(your_hand, com_hand)
  else
    puts "じゃんけんを終了します"
  end
end

def judge(your_hand, com_hand)
  puts "---------------"
  puts "あなた：" + RPS_HANDS[your_hand] + "を出しました"
  puts "相手：" + RPS_HANDS[com_hand] + "を出しました"
  puts "---------------"

  if (your_hand == 0 && com_hand == 1) || (your_hand == 1 && com_hand == 2) || (your_hand == 2 && com_hand == 0)
    facing_over_there("you")

  elsif your_hand == com_hand
    puts "あいこで..."
    puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
    your_hand = gets.chop.to_i
    com_hand = rand(0..2)

    if your_hand.between?(0, 2)
      puts "ショ！"
      judge(your_hand, com_hand)
    else
      puts "じゃんけんを終了します"
    end

  else
    facing_over_there("com")
  end
end

def facing_over_there(master)
  face_directions = ["上", "下", "左", "右"]
  puts "あっち向いて〜"
  puts "0(上) 1(下) 2(左) 3(右)"
  your_face = gets.chop.to_i
  com_face = rand(0..3)
  puts "ホイ！"
  puts "---------------"
  puts "あなた：" + face_directions[your_face]
  puts "相手：" + face_directions[com_face]
  puts "---------------"

  if master == "you" && your_face == com_face
    puts "あなたの勝ち！"
  elsif master == "com" && your_face == com_face
    puts "あなたの負け"
  end
  janken()
end

janken()
