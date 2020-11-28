class Blog < ApplicationRecord
    belongs_to :user
    def index
        @blog = Blog.all
    end
    has_many :blog_comment, -> { order "created_at DESC"}
end
