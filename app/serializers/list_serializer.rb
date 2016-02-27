class ListSerializer < ActiveModel::Serializer
  attributes :id, :title, :permissions

  def title
    object.title
  end

  def permissions
    object.permissions
  end

end
