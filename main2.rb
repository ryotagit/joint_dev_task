class User

  attr_reader :name, :age
  
  def initialize(name:,age:)
    @name = name
    @age = age
  end

end

class Zoo
    
  attr_reader :name, :entry_fee
  
  def initialize(name:,entry_fee:)
    @name = name
    @entry_fee = entry_fee
  end
  
  def info_entry_fee(user)
    
    if user.age <= 5
      @fee = entry_fee[:infant]
    elsif user.age <=12
      @fee = entry_fee[:children]
    elsif user.age <=64
      @fee = entry_fee[:adult]
    elsif user.age <=120
      @fee = entry_fee[:senior]
    end
    
    puts "#{user.name}さんの入場料は #{@fee} 円です。"
  end


end

zoo = Zoo.new(name: "旭山動物園", entry_fee: { infant: 0, children: 400, adult: 800, senior: 500 })

users = [
  User.new(name: "たま", age: 3),
  User.new(name: "ゆたぼん", age: 10),
  User.new(name: "あじー", age: 32),
  User.new(name: "ぎん", age: 108)
]

users.each do |user|
  zoo.info_entry_fee(user)
end
