class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :amount, :currency, :description, :transaction_date
  has_one :user
end
