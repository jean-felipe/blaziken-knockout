module Type
  UserType = GraphQL::ObjectType.define do
    name "User"
    description "A full-length film or a short film"

    field :name, !types.String
    field :email, !types.String
    field :password, !types.String
    field :birthdate, !types.Date
    field :phone, !types.String
    field :cpf, !types.String
    field :status, !types.Int
    field :age, !types.Int
  end
end
