module WrappedButton
  def wrapped_button(*args, &block)
    template.content_tag :div, :class => "form-group" do
      options = args.extract_options!
      args << options

      submit(*args, &block)
    end
  end
end
