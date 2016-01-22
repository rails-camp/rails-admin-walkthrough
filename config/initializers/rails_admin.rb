RailsAdmin.config do |config|

  config.model 'Post' do
    list do
      field :title
      field :author
      field :created_at
    end

    exclude_fields :content, :updated_at
    
    edit do
      exclude_fields :author
    end
  end

  config.actions do
    dashboard
    index
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
  end
end
