module NestedForm
  class Builder < ActionView::Helpers::FormBuilder
    def link_to_add(name, association)
      @template.link_to(name, "javascript:void(0)", :class => "add_nested_fields", "data-association" => association)
    end
    
    def link_to_remove(name)
      hidden_field(:_destroy) + @template.link_to(name, "javascript:void(0)", :class => "remove_nested_fields")
    end
  end
end
