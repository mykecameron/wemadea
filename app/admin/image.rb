ActiveAdmin.register Image do
  permit_params :image_file

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs do
      f.input :image_file, :as => :file, :hint => f.template.image_tag(f.object.image_file.url)
    end

    f.actions
  end

end
