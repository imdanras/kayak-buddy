class User < ApplicationRecord
  has_and_belongs_to_many :groups, join_table: :groups_users
  has_secure_password

  validates :email,
  presence: true,
  uniqueness: {case_sensitive: false}

  validates :password,
  length: { in: 8..72 },
  on: :create

  validates :name,
  presence: true,
  length: { in: 2...20 }


  def self.authenticate(params)
    User.find_by_email(params[:email]).try(:authenticate, params[:password])
end

end
