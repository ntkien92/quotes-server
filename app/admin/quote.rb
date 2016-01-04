ActiveAdmin.register Quote do
  permit_params :message, :image, :author

  index do
    column :message
    column :author
    column "Image" do |quote|
      image_tag quote.image, class: 'my_image_size'
    end
    actions
  end

  form do |f|
    f.inputs 'Rabbit' do
      f.input :message
      f.input :author
      f.input :image
    end
    f.actions
  end
end
