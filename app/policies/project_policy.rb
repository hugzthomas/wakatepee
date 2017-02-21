class ProjectPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all #== Project.all
    end
  end

  def create?
    # if current user is not admin, can not create a product
    true
  end

  def show?
    true
  end

  # @restaurant  <=> record
  # current_user <=> user
  def update?
    # seul le createur d'un restau ou un admin peut le modifier
    is_user_owner_or_admin?
  end

  # def destroy?
  #   is_user_owner_or_admin?
  # end

  private

  def is_user_owner_or_admin?
    user == record.admin
  end
end
