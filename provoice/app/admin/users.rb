ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation, :first_name, :last_name, :phone_number

  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :email
    column :phone_number
    column :current_sign_in_at, :sortable => :created_at do |obj|
      obj.created_at.localtime
    end
    column :sign_in_count, :sortable => :created_at do |obj|
      obj.created_at.localtime
    end
    column :created_at, :sortable => :created_at do |obj|
      obj.created_at.localtime
    end
    actions
  end

  filter :email
  filter :phone_number
  filter :last_name
  filter :first_name
  filter :current_sign_in_at, :sortable => :created_at do |obj|
    obj.created_at.localtime
  end
  filter :sign_in_count, :sortable => :created_at do |obj|
    obj.created_at.localtime
  end
  filter :created_at, :sortable => :created_at do |obj|
    obj.created_at.localtime
  end

  form do |f|
    f.inputs do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :phone_number
      f.input :password
      f.input :password_confirmation

    end
    f.actions
  end

end
