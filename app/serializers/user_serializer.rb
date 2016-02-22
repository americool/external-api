class UserSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :name, :email

  def id
    object.id
  end
  
  def name
    object.name
  end

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end

  def email
    object.name
  end
end
