class AddTitleTotask < ActiveRecord::Migration[5.0]
  def change
    add_columm :tasks, :status, :string
  end
end
