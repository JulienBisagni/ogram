class CommentVotePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def create?
    return true
  end

  def upvote?
    return true
  end

  def downvote?
    return true
  end
end
