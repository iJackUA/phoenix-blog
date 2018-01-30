defmodule BlogWeb.LayoutView do
  use BlogWeb, :view

  def js_script_tag(src) do
    if Mix.env == :prod do
      "<script src=\"#{src}\"></script>"
    else
      ~s(<script src="http://localhost:8080/js/app.js"></script>)
    end
  end

  def css_link_tag do
    if Mix.env == :prod do
      ~s(<link rel="stylesheet" type="text/css" href="/css/app.css" media="screen,projection" />)
    else
      ""
    end

end
