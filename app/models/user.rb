class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :messages
  has_many :chatrooms,  dependent: :delete_all
  has_many :editors,    dependent: :delete_all
  has_many :active_relationships,   class_name: "Relationship",
                                    foreign_key: "follower_id",
                                    dependent: :destroy
  has_many :following, through: :active_relationships,  source: :followed
  
  has_many :passive_relationships,  class_name: "Relationship",
                                    foreign_key: "followed_id",
                                    dependent: :destroy
  has_many :followers, through: :passive_relationships, source: :follower


  # Follows a user
  def follow(other_user)
    self.following << other_user
  end

  # Unfollows a user
  def unfollow(other_user)
    self.following.delete(other_user)
  end

  # Returns true if the current user is following the other user
  def following?(other_user)
    self.following.include?(other_user)
  end
end
