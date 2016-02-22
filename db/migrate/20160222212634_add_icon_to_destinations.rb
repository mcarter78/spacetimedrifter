class AddIconToDestinations < ActiveRecord::Migration
  def change
    add_column :destinations, :icon_url, :string
  end
end
