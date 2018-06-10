User.create! :name => 'Matt', :email => 'matthewtownsen@gmail.com', :password => 'junior38', :password_confirmation => 'junior38'
User.create! :name => 'Heather', :email => 'hnsmith1984@gmail.com', :password => 'amber2002', :password_confirmation => 'amber2002'

Question.create! :name => 'I feel loved and cared for when you...'
Question.create! :name => 'I use to feel loved and cared for when you...'
Question.create! :name => 'I want you to...'

Answer.create! :question_id => 1, :user_id => 1, :value => 'test answer 1'
Answer.create! :question_id => 1, :user_id => 2, :value => 'test answer 1'