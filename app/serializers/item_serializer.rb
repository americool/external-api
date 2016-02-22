class ItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :body

  def id
    object.id
  end

  def title
    object.title
  end

  def body
    object.body
  end 

end
