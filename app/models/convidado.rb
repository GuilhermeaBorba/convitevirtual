class Convidado < ActiveRecord::Base
    belongs_to :user
    has_many :convidados
end
