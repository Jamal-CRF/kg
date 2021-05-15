class Contact < ApplicationRecord
  validates :name, :email, :phone, :body, presence: true
end
