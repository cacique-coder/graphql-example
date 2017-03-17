
Root = GraphQL::ObjectType.define do
  name "QueryUser"
  description "The query root of this schema"

  field :user do
    type Types::UserType
    argument :id, !types.ID
    description "Find a User by ID"
    resolve ->(obj, args, ctx) { User.find(args["id"]) }
  end
end

UserSchema = GraphQL::Schema.define do
  query Root
end
