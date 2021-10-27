User.destroy_all
u1 = User.create :email => 'jonesy@ga.co', :password => 'chicken'
u2 = User.create :email => 'kuzminbass@gmail.com', :password => '1', :admin => true
u3= User.create :email => 'craigsy@ga.co', :password => 'chicken', :instructor => true

puts "#{User.count} users"


Lesson.destroy_all
l1=Lesson.create :title =>"Iyengar yoga"
l2=Lesson.create :title =>"Hatha yoga"
l3=Lesson.create :title =>"Ashtanga yoga"

puts "#{Lesson.count} lessons"
