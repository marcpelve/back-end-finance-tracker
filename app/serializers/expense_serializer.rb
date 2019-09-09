class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :amount, :currency, :description, :transaction_date,
             :ownership

  has_one :user

  def ownership
    scope == object.user
  end
end
