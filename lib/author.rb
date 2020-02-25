require_relative("post.rb")
class Author 
    
    attr_accessor :name 

    def  initialize(name)
        @name = name
    end

    def posts
        Post.all
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        new_post = Post.new(title)
        new_post.author = self
    end

    def self.post_count
        new_array = []
        for i in Post.all
            new_array.push i.author
        end
        new_array.length
        #this seemed to work when I did just Post.all.count, but
        #if there's no author attached to a post, it'll still count.
        #so I'm doing this loop to make sure it only counts
        #posts with authors. 
    end
end