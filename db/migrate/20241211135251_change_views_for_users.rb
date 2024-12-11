class ChangeViewsForUsers < ActiveRecord::Migration[8.0]
  def change
    change_user :user, :views, :integer, default: 0
  end
end
