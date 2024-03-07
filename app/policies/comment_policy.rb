# app/policies/comment_policy.rb
class CommentPolicy
  attr_reader :user, :comment

  def initialize(user, comment)
    @user = user
    @comment = comment
  end

  def destroy?
    user == comment.author
  end

   def create?
    true
   end



end
