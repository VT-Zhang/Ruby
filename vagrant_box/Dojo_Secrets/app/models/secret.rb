class Secret < ActiveRecord::Base
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes
  validates :secret, presence:true, length:{minimum:2}
end
