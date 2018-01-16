Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  # TODO: Remove me
  field :user, Types::UserType do
    description "An example field added by the generator"
    argument :id, types.Int
    resolve ->(obj, args, ctx) {
      User.find(args[:id])
    }
  end
end
