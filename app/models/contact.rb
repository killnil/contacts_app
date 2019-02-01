class Contact < ApplicationRecord
  has_many :contact_groups
  has_many :groups, through: :contact_groups

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true

  def friendly_created_at
    created_at.strftime("%b %d, %Y")
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def japan_phone_number
    "+81 #{phone_number}"
  end
end
