ActiveAdmin.register TeacherType do
  permit_params :name

  index do
    selectable_column
    id_column
    # column  do |entity|
    #   entity.logo.present? \
    #       ? image_tag(entity.logo.url(:mini)) : content_tag(:span, "Нет логотипа")
    # end
    #
    column :name

    actions
  end


  show do
    attributes_table do
      row :name

    end
  end

  form do |f|
    f.inputs :multipart => true do
      f.input :name
    end
    f.actions
  end
end
