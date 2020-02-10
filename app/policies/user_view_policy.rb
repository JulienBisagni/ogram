class UserViewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def create?
    return true
  end
  def save?
    return true
  end
end
