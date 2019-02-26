class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :content
      t.references :chatroom
      t.references :user
      t.timestamps
    end
  end
end
