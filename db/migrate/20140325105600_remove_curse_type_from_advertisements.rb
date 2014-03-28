class RemoveCurseTypeFromAdvertisements < ActiveRecord::Migration
  def change
    remove_column :advertisements, :curse_type, :string
  end
end
