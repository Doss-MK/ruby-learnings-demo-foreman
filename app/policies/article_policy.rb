class ArticlePolicy < ApplicationPolicy
    attr_reader :user, :article

    def initialize(user, article)
        @user = user
        @article = article
    end

    def create?
        user.admin? || !article.published
    end
end