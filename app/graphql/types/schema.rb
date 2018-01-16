module Type
  Schema = GraphQL::Schema.define do
    query QueryType
    mutation MutationType
  end
end