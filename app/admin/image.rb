ActiveAdmin.register Image do
  permit_params :image_file, :credit

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs do
      f.input :image_file, :as => :file, :hint => f.template.image_tag(f.object.image_file.url)
      f.input :credit
    end

    f.actions
  end

end
