ActiveAdmin.register Quote do
  permit_params :message, :image

  index do
    column :message
    column "Image" do |quote|
      image_tag quote.image, class: 'my_image_size'
    end
    actions
  end

  form do |f|
    f.inputs 'Rabbit' do
      f.input :message
      f.input :image
    end
    f.actions
  end
end
