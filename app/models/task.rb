class Task < ApplicationRecord
  before_save { self.email.downcase! }
  validates :content, presence: true, length: { maximum: 10 }
  validates :status, presence: true, length: { maximum: 10 }
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
  has_secure_password
end
