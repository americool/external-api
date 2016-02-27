class ItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :complete

  def id
    object.id
  end

  def title
    object.title
  end

  def body
    object.body
  end

  def complete
    object.complete
  end 

end
