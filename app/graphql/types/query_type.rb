Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # TODO: remove me
  field :user do
    type UserType
    argument :id, !types.ID
    resolve ->(obj, args, ctx) {
      User.where(id: args[:id])
    }
  end

  field :product do
    type ProductType
    argument :id, !types.ID
    resolve -> (obj, args, ctx) {
      Product.where(id: args[:id])
    }
  end
end
