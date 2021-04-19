class AddCountToCookies < ActiveRecord::Migration[5.1]
  def change
    add_column :cookies, :count, :integer, :default => 1
  end
end
