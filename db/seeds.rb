User.destroy_all
u1 = User.create :email => 'jonesy@ga.co', :name => "John", :password => 'chicken'
u2 = User.create :email => 'kuzminbass@gmail.com',:name => "Alex", :password => '15', :admin => true
u3= User.create :email => 'craigsy@ga.co',:name => "Craigsy", :password => 'chicken', :instructor => true

puts "#{User.count} users"


Lesson.destroy_all
l1=Lesson.create :title =>"Iyengar yoga",:image => 'https://iymv.org/wp-content/uploads/2019/02/bks_iyengar_padma_mayurasana.jpg', :suburb => 'Sunrise beach', :postcode => "4573", :description => "Iyengar Yoga is a form of yoga as exercise with a focus on the structural alignment of the physical body through the practice of asanas. It differs from other styles of yoga in three ways: precision, sequence and use of props. Precision is sought in body alignment in every asana" , :date => '25.12.2021', :time => "8:00 AM", :contact => 'Craigsy'
l2=Lesson.create :title =>"Hatha yoga",:image => 'https://www.livelifekingsize.net/wp-content/uploads/2018/04/Hatha-Yoga.png', :suburb => 'Peregian Beach', :postcode => "4573", :description => "Hatha Yoga, (Sanskrit: “Discipline of Force”) school of Yoga that stresses mastery of the body as a way of attaining a state of spiritual perfection in which the mind is withdrawn from external objects." , :date => '26.12.2021', :time => "10:00 AM", :contact => 'Craigsy'
l3=Lesson.create :title =>"Ashtanga yoga",:image => 'https://st3.depositphotos.com/10439530/13564/i/600/depositphotos_135644744-stock-photo-man-standing-in-yoga-position.jpg', :suburb => 'Coolum beach', :postcode => "4573", :description => "Ashtanga is an athletic flow combining strength, flexibility and stamina for a complete practice. Ashtanga Vinyasa Yoga is different from many yoga classes in the West in that the order of asanas is completely predefined", :date => '27.12.2021', :time => "11:00 AM", :contact => 'Craigsy'

puts "#{Lesson.count} lessons"
