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
      t.string :user_id

      t.timestamps
    end
  end
end
