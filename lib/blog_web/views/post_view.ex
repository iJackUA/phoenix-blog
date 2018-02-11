defmodule BlogWeb.PostView do
  use BlogWeb, :view
  alias BlogWeb.PostView

  def render("index.json", %{posts: posts}) do
    %{data: render_many(posts, PostView, "post.json")}
  end

  def render("show.json", %{post: post}) do
    %{data: render_one(post, PostView, "post.json")}
  end

  def render("post.json", %{post: post}) do
    %{id: post.id,
      title: post.title,
      status: post.status,
      category_id: post.category_id,
      short_text_md: post.short_text_md,
      short_text_html: post.short_text_html,
      full_text_md: post.full_text_md,
      full_text_html: post.full_text_html,
      translations: post.translations}
  end
end
