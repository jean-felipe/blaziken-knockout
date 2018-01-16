module Types
  ProductType = GraphQL::ObjectType.define do
    name "Product"

    field :name, !types.String
    field :description, !types.String
    field :price, !types.String
    field :minPrice, !types.String, property: :min_price
    field :maxPrice, !types.String, property: :max_price
    field :status, !types.String
    field :userId, !types.String, property: :user_id
  end
end