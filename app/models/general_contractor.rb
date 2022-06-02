class GeneralContractor < ActiveRecord::Base
  has_secure_password
  validates :email presence: true, uniqueness: true
  validates :password_digest, length: {in: 6..12}

  has_many :projects


end
