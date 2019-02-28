class Chatroom < ApplicationRecord
    has_many :messages, dependent: :delete_all
    has_many :editors, dependent: :delete_all
    belongs_to :user
end
