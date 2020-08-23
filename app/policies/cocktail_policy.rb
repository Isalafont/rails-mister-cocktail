class CocktailPolicy < ApplicationPolicy

  def index?
    true
  end

  def show?
    record.user == user
  end

  def create?
    true
  end

  def edit
    update?
  end

  # def new?
  #   create?
  # end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
