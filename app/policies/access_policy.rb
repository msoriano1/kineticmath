class AccessPolicy
  include AccessGranted::Policy

  def configure
    # Example policy for AccessGranted.
    # For more details check the README at
    #
    # https://github.com/chaps-io/access-granted/blob/master/README.md
    #
    # Roles inherit from less important roles, so:
    # - :admin has permissions defined in :member, :guest and himself
    # - :member has permissions from :guest and himself
    # - :guest has only its own permissions since it's the first role.
    #
    # The most important role should be at the top.
    # In this case an administrator.
    #
    # role :admin, proc { |user| user.admin? } do
    #   can :destroy, User
    # end

    # More privileged role, applies to registered users.
    #
    # role :member, proc { |user| user.registered? } do
    #   can :create, Post
    #   can :create, Comment
    #   can [:update, :destroy], Post do |post, user|
    #     post.author == user
    #   end
    # end

    # The base role with no additional conditions.
    # Applies to every user.
    #
    # role :guest do
    #  can :read, Post
    #  can :read, Comment
    # end
    
    role :admin, proc { |user| user.admin? } do
      can [:read, :create, :update, :destroy], Topic
      can [:read, :create, :update, :destroy], Yearlevel
      can [:read, :create, :update, :destroy], Worksheet
      can [:read, :create, :update, :destroy], Item
      can [:read, :create, :update, :destroy], Teacher
      can [:read, :create, :update, :destroy], Student
    end

    role :teacher, proc { |user| user.teacher? } do
      can [:read, :create, :update, :destroy], Topic
      can [:read, :create, :update, :destroy], Yearlevel
      can [:read, :create, :update, :destroy], Worksheet
    end

    role :student do
      can :read, Topic
      can :read, Yearlevel
      can :read, Worksheet
    end
  end
end
