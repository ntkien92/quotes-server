ActiveAdmin.register Inspiration do
  permit_params :title, :content, :link_url
  csv_importable :columns => [:id, :title, :link_url],
                              :import_unique_key => :id
  index do
    column :id
    column :title
    column :content
    column "Image" do |inspiration|
      image_tag inspiration.link_url, class: 'my_image_size'
    end
    actions
  end

  form do |f|
    f.inputs 'Inspiration' do
      f.input :title
      f.input :content
      f.input :link_url
    end
    f.actions
  end
end
