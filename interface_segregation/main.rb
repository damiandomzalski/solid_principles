class PostController
  def get_all
    # articles.all
    puts "all"
  end

  def sorted_posts
    # get_all.order(created_at: :asc)
    puts "sorted"
  end
end

module User
  def index
    @posts = PostController.new.get_all
  end
end

module Admin
  def index
    @posts = PostController.new.sorted_posts
  end
end
