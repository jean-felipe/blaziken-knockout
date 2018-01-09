class Product
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :description, type: String
  field :price, type: String
  field :min_price, type: String
  field :max_price, type: String
  field :status, type: String
  field :user_id, type: String

  STATUSES = %i[disabled enabled]
 # enum status: STATUSES

 embedded_in :user

 belongs_to :user
end
