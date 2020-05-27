ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation, :featured_image

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email, as: :rich, config: { width: '76%', height: '400px' }
      f.input :password
      f.input :password_confirmation
      f.inputs 'Featured Image' do
        f.input :featured_image, as: :rich_picker, config: { type:'image', style: 'width: 400px !important;'}
      end
    end
    f.actions
  end

end
