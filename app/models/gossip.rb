class Gossip < ApplicationRecord
  belongs_to :user
  has_many :tag_gossip_links
  has_many :tags, through: :tag_gossip_links
  has_many :comments
  has_many :likes
  validates :title,presence: true,length: { in: 1..25 }
  validates :content,presence: true
end
