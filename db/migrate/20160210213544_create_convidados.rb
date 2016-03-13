class CreateConvidados < ActiveRecord::Migration
  def change
    create_table :convidados do |t|
      t.string :name
      t.string :email
      t.integer :user_id
      t.integer :convite_id

      t.timestamps null: false
    end
  end
end
