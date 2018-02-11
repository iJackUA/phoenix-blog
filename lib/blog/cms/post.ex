defmodule Blog.CMS.Post do
  use Ecto.Schema
  import Ecto.Changeset
  alias Blog.CMS.Post
  use Trans, translates: [:title, :short_text_html, :full_text_html]

  schema "posts" do
    field(:category_id, :integer)
    field(:full_text_md, :string)
    field(:full_text_html, :string)
    field(:short_text_md, :string)
    field(:short_text_html, :string)
    field(:status, :integer)
    field(:title, :string)
    field(:translations, :map)

    timestamps()
  end

  @doc false
  def changeset(%Post{} = post, attrs) do
    post
    |> cast(attrs, [:title, :status, :category_id, :short_text_md, :full_text_md, :short_text_html, :full_text_html])
    |> validate_required([:title, :status, :category_id, :short_text_md, :full_text_md, :short_text_html, :full_text_html])
  end
end
