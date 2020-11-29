class BlogRaking < ApplicationRecord
    belongs_to :user
    def index
        User.order(created_at: :desc)
    end
end
