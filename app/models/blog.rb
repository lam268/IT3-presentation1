class Blog < ApplicationRecord
    belongs_to :user
    def index
        @blog = Blog.all
    end
end
