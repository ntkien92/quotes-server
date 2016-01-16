ActiveAdmin.register QuoteVersion do
  permit_params :quote_version
  index do
    column :id
    column :quote_version
    actions
  end

  form do |f|
    f.inputs 'Version' do
      f.input :quote_version
    end
    f.actions
  end
end
