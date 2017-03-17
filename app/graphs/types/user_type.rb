Types::UserType = GraphQL::ObjectType.define do
  name "User"
  field :id, !types.ID
  field :first_name, !types.String
  field :posts, types[!Types::PostType]
end
