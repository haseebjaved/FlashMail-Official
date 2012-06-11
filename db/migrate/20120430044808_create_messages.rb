class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :who
      t.string :when
      t.string :deadline
      t.string :content
      t.string :attach_link
      t.string :action
      t.string :to
      t.string :cc
      t.string :bcc
      t.integer :user_id
      t.string :username

      t.timestamps
    end
  end
end
