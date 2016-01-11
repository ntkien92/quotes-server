ActiveAdmin.register Quote do
  permit_params :image, :type_quote
  csv_importable :columns => [:id, :image, :type_quote],
                              :import_unique_key => :id
  index do
    column :id
    column :type_quote
    column "Image" do |quote|
      image_tag quote.image, class: 'my_image_size'
    end
    actions
  end

  form do |f|
    f.inputs 'Rabbit' do
      f.input :type_quote
      f.input :image
    end
    f.actions
  end
end
