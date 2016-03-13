class AddUserRefToConvidados < ActiveRecord::Migration
  def change
    add_reference :convidados, :user, index: true, foreign_key: true
  end
end
