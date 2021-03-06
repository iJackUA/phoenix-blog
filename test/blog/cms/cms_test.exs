defmodule Blog.CMSTest do
  use Blog.DataCase

  alias Blog.CMS

  describe "posts" do
    alias Blog.CMS.Post

    @valid_attrs %{category_id: 42, full_text: "some full_text", short_text: "some short_text", status: 42, title: "some title", translations: %{}}
    @update_attrs %{category_id: 43, full_text: "some updated full_text", short_text: "some updated short_text", status: 43, title: "some updated title", translations: %{}}
    @invalid_attrs %{category_id: nil, full_text: nil, short_text: nil, status: nil, title: nil, translations: nil}

    def post_fixture(attrs \\ %{}) do
      {:ok, post} =
        attrs
        |> Enum.into(@valid_attrs)
        |> CMS.create_post()

      post
    end

    test "list_posts/0 returns all posts" do
      post = post_fixture()
      assert CMS.list_posts() == [post]
    end

    test "get_post!/1 returns the post with given id" do
      post = post_fixture()
      assert CMS.get_post!(post.id) == post
    end

    test "create_post/1 with valid data creates a post" do
      assert {:ok, %Post{} = post} = CMS.create_post(@valid_attrs)
      assert post.category_id == 42
      assert post.full_text == "some full_text"
      assert post.short_text == "some short_text"
      assert post.status == 42
      assert post.title == "some title"
      assert post.translations == %{}
    end

    test "create_post/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = CMS.create_post(@invalid_attrs)
    end

    test "update_post/2 with valid data updates the post" do
      post = post_fixture()
      assert {:ok, post} = CMS.update_post(post, @update_attrs)
      assert %Post{} = post
      assert post.category_id == 43
      assert post.full_text == "some updated full_text"
      assert post.short_text == "some updated short_text"
      assert post.status == 43
      assert post.title == "some updated title"
      assert post.translations == %{}
    end

    test "update_post/2 with invalid data returns error changeset" do
      post = post_fixture()
      assert {:error, %Ecto.Changeset{}} = CMS.update_post(post, @invalid_attrs)
      assert post == CMS.get_post!(post.id)
    end

    test "delete_post/1 deletes the post" do
      post = post_fixture()
      assert {:ok, %Post{}} = CMS.delete_post(post)
      assert_raise Ecto.NoResultsError, fn -> CMS.get_post!(post.id) end
    end

    test "change_post/1 returns a post changeset" do
      post = post_fixture()
      assert %Ecto.Changeset{} = CMS.change_post(post)
    end
  end
end
