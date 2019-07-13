class Rhetoric < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  has_many :picks, dependent: :destroy
  has_many :pick_users, through: :picks, source: :user
  has_many :comments,dependent: :destroy
  # has_many :rhetoric_speakers,dependent: :destroy
  acts_as_taggable
  acts_as_taggable_on :speakers
  #
  # def self.search(search)
  #   if search
  #     where(['meigen LIKE ?', "%#{search}%"])
  #   else
  #     all
  #   end
  # end

end
