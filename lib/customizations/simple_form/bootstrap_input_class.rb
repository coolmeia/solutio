module BootstrapInputClass
  # Adding 'form-control' class to inputs
  def input_html_classes
    @input_html_classes + ['form-control']
  end
end
