class Picture
  include Mongoid::Document
  field :url, type: String
  field :description, type: String
  field :hint, type: String
end
