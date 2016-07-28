SimpleForm.setup do |config|
  config.button_class = "button"

  config.wrappers :bulma, tag: "div", class: "control" do |b|
    b.use :html5
    b.use :placeholder
    b.use :label, class: "label"
    b.wrapper tag: "div" do |ba|
      ba.use :input, class: "input"
      ba.use :error, wrap_with: { tag: "span", class: "help-inline" }
      ba.use :hint,  wrap_with: { tag: "p", class: "help-block" }
    end
  end
end
