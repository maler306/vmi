class Ability
  include CanCan::Ability

  def initialize(user)
    
      user ||= User.new # guest user (not logged in)
      if user.admin?
        can :manage, :all
      else
        can :read, :all
        can :create, [Organization, User, Product, Order]
        can :manage, [Cart, LineItem]
        can [:destroy, :edit], Organization do |object|
        object.user_id == user.id
        end
        can [:destroy, :edit], User do |object|
        object.organization.user_id == user.id and object.id != user.id
        end

      end
    
  end
end
