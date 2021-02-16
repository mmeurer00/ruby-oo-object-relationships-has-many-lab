class Author
    attr_accessor :name, :post

    @@all = []

    def initialize(name)
        @name = name
        @posts = []
    end

    def add_post(post)
        @posts << post
    end

    def add_post_by_title(post_title)
        Post.new(post_title)
    end

    def posts
        Post.all.select { |post| post.author = self} 
    end
    
    def self.post_count
        Post.all.count
    end
end