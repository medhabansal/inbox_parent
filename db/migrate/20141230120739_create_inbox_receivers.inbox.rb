# This migration comes from inbox (originally 20141230101316)
class CreateInboxReceivers < ActiveRecord::Migration
  def change
    create_table :inbox_receivers do |t|
      t.string :receiver_email
      t.boolean :is_read

      t.timestamps
    end
  end
end
