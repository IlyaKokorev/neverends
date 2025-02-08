ActiveAdmin.register Compliment do
  permit_params :text, :image

  config.filters = false

  form do |f|
    f.inputs do
      f.input :text
      f.input :image, as: :file
    end
    f.actions
  end

  index do
    selectable_column
    id_column
    column :text
    column "Пикча" do |compliment|
      compliment.image.attached? ? "Да" : "Нет"
    end
    actions
  end

  show do
    attributes_table do
      row :text
      row "Пикча" do |compliment|
        if compliment.image.attached?
          image_tag compliment.image, size: "300x300"
        else
          "Нет пикчи"
        end
      end
    end
  end
end
