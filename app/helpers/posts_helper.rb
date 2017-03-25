module PostsHelper
  def getDate
    @post.date.strftime("%B #{@post.date.day.ordinalize}, %Y")
  end
end
