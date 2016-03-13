class AddUserRefToConvites < ActiveRecord::Migration
  def change
    add_reference :convites, :user, index: true, foreign_key: true
  end
end
