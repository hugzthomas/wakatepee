class SubMilestonePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def destroy?
    record.project.users.include? user
  end
end
