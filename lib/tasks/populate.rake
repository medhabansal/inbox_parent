namespace :db do
  desc "Fill database"
  task :populate => :environment do
    require 'populator'
    require 'faker'
    
    Inbox::Email.populate 20 do |email|
      email.sender  = Faker::Internet.email
      email.subject  = Populator.words(1..5).titleize
      email.message = Populator.sentences(2..10)
      email.is_draft = [true,false]
      Inbox::Receiver.populate 2 do |r|
        r.inbox_email_id = email.id
        r.email_id = email.id
        r.receiver_email= Faker::Internet.email
        r.is_read = [true,false]
    
        #r.created_at = 2.years.ago..Time.now
      end
    end
    
    end
end