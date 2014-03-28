class AddCourseTypeToAdvertisements < ActiveRecord::Migration
  def change
    add_column :advertisements, :course_type, :string
  end
end
