class CocktailPolicy < ApplicationPolicy

  def index?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def new?
    create?
  end

  def update?
    user == record.user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
