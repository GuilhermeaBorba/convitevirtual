class CreateConvites < ActiveRecord::Migration
  def change
    create_table :convites do |t|
      t.string :anfitriao
      t.integer :anos
      t.string :dataevento
      t.string :horainicio
      t.string :horafinal
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
