class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :amount, :currency, :description
  has_one :user
end
