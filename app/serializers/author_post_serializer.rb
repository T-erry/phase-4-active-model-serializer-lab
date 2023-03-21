class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content
  has_many :tags

  def short_content
   self. object.content.length > 40 ? self.object.content[0..39] + "..." : self.object.content
  end
end
 