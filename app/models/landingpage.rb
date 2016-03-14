class Landingpage < ActiveRecord::Base
   validates :company, presence: true
   validates :name, presence: true
   validates :email, presence: true
end
