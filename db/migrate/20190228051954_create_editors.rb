class CreateEditors < ActiveRecord::Migration[5.2]
  def change
    create_table :editors do |t|
      t.text  :content
      t.references :user
      t.references :chatroom
      t.timestamps
    end
  end
end
