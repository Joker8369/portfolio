class ProjectPolicy < ApplicationPolicy
  def create?
    true if @user.admin?
  end

  class Scope < Scope
    def resolve
      scope.all
    end

    def new?
      true
    end
  end
end
