defmodule BlogWeb.LayoutView do
  use BlogWeb, :view

  def js_script_tag(src) do
    if Mix.env() == :prod do
      "<script src=\"#{src}\"></script>"
    else
      "<script src=\"http://localhost:8080/#{src}\"></script>"
    end
  end

  def css_link_tag(src) do
    if Mix.env() == :prod do
      "<link rel=\"stylesheet\" type=\"text/css\" href=\"#{src}\" media=\"screen,projection\" />"
    else
      ""
    end
  end
end
