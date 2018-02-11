defmodule Blog.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :status, :integer
      add :category_id, :integer
      add :short_text_md, :string
      add :short_text_html, :string
      add :full_text_md, :string
      add :full_text_html, :string
      add :translations, :map

      timestamps()
    end

  end
end
