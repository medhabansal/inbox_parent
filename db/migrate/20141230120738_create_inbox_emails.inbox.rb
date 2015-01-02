# This migration comes from inbox (originally 20141230101126)
class CreateInboxEmails < ActiveRecord::Migration
  def change
    create_table :inbox_emails do |t|
      t.string :subject
      t.string :sender
      t.text :message
      t.boolean :is_draft

      t.timestamps
    end
  end
end
