# This migration comes from inbox (originally 20141231052616)
class AddColumn < ActiveRecord::Migration
  def change

  	add_column :inbox_receivers, :email_id, :integer
  end
end
