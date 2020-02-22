class UserPolicy < ApplicationPolicy
  def show?
    return true
  end

  def create?
    return true
  end

  def destroy?
    return true
  end
end
