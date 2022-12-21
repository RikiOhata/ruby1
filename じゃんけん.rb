#じゃんけん
def hand

  puts "じゃんけん..."
  puts "1(グー),2(チョキ),3(パー)を入力"
  
  num1 = gets.to_i
  num2 = rand(1..3)
  result = (num1-num2+3)%3
  
  if num1 == 1 #グー
  
    puts "ホイ！"
    puts "----------"
  
    case result
    when 0 #あいこ
      puts "あなた：グーを出しました"
      puts "あいて：グーを出しました"
    when 2 #かち
      puts "あなた：グーを出しました"
      puts "あいて：チョキを出しました"
    else #まけ
      puts "あなた：グーを出しました"
      puts "あいて：パーを出しました"
    end
    
  elsif num1 == 2 #チョキ
    
    puts "ホイ！"
    puts "----------"
  
    case result
    when 0 #あいこ
      puts "あなた：チョキを出しました"
      puts "あいて：チョキを出しました"
    when 2 #かち
      puts "あなた：チョキを出しました"
      puts "あいて：パーを出しました"
    else #まけ
      puts "あなた：チョキを出しました"
      puts "あいて：グーを出しました"
    end
      
  elsif num1 == 3 #パー
    
    puts "ホイ！"
    puts "----------"
  
    case result
    when 0 #あいこ
      puts "あなた：パーを出しました"
      puts "あいて：パーを出しました"
    when 2 #かち
      puts "あなた：パーを出しました"
      puts "あいて：グーを出しました"
    else #まけ
      puts "あなた：パーを出しました"
      puts "あいて：チョキを出しました"
    end
    
  else
    
    puts "1,2,3を入力してください"
  
  end
  
  return result

end

#あっち向いてホイ
def direction
  
  puts "あっち向いて..."
  puts "1(右),2(下),3(左),4(上)を入力"
  
  dire1 = gets.to_i
  dire2 = rand(1..4)
  result2 = dire1 - dire2

  if dire1 == 1
    puts "ホイ！"
    puts "----------"
    
     case dire2
     when 1
       puts "あなた：右"
       puts "あいて：右"
     when 2
       puts "あなた：右"
       puts "あいて：下"
       
     when 3
       puts "あなた：右"
       puts "あいて：左"
       
     else
       puts "あなた：右"
       puts "あいて：上"
       
     end 
       
  elsif  dire1 == 2
    puts "ホイ！"
    puts "----------"
    
     case dire2
     when 1
       puts "あなた：下"
       puts "あいて：右"
     when 2
       puts "あなた：下"
       puts "あいて：下"
       
     when 3
       puts "あなた：下"
       puts "あいて：左"
       
     else
       puts "あなた：下"
       puts "あいて：上"
       
     end 
    
  elsif  dire1 == 3
    puts "ホイ！"
    puts "----------"
    
     case dire2
     when 1
       puts "あなた：左"
       puts "あいて：右"
     when 2
       puts "あなた：左"
       puts "あいて：下"
       
     when 3
       puts "あなた：左"
       puts "あいて：左"
       
     else
       puts "あなた：左"
       puts "あいて：上"
       
     end 
    
  elsif dire1 == 4  
    puts "ホイ！"
    puts "----------"

     case dire2
     when 1
       puts "あなた：上"
       puts "あいて：右"
     when 2
       puts "あなた：上"
       puts "あいて：下"
       
     when 3
       puts "あなた：上"
       puts "あいて：左"
       
     else
       puts "あなた：上"
       puts "あいて：上"
       
     end 
     
  else
    
    puts "1,2,3,4を入力してください"

  end  
  
  return result2
  
end

#システム
finish = 0

until finish == 1 do
  
  return_result = hand
  
  if return_result == 0
    
    puts "あいこです"
    
    next

  end  
  
  return_result2 = direction
  
  if return_result2 == 0
    finish = 1
    case return_result
    when 2
      puts "あなたの勝ちです"
    when 1
      puts "あなたの負けです"
    end  

  end
  
end