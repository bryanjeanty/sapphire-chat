class Message < ApplicationRecord
    belongs_to :chatroom
    belongs_to :user
    has_many_attached :images

    after_create_commit {
        MessageBroadcastJob.perform_later(self)
    }
end
