ActiveAdmin.register About do
  menu label: "About"
  permit_params :content

  form do |f|
    f.inputs do
      f.input :content, label: 'Content (format with HTML)'
      f.actions
    end
  end
end
