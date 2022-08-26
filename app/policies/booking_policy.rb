class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(user: user)
    end
  end

  def create?
    true
  end

  def show?
    record.user == user
  end

  def destroy?
    record.user == user || record.bicycle.user == user
  end

  def confirm?
    record.bicycle.user == user
  end

  def cancel?
    record.bicycle.user == user
  end
end
