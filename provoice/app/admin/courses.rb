ActiveAdmin.register Course do
  permit_params :teacher_id, :name, :description, :starts_at, :ends_at, :completed_at

end
