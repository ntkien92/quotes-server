ActiveAdmin.register Rabbit do
  permit_params :title, :content, :link_url

  index do
    column :title
    column :content
    column "Image" do |rabbit|
      image_tag rabbit.link_url, class: 'my_image_size'
    end
    actions
  end

  form do |f|
    f.inputs 'Rabbit' do
      f.input :title
      f.input :content
      f.input :link_url
    end
    f.actions
  end
end
