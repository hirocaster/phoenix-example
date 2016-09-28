defmodule Example.ExampleTest do
  use Example.ModelCase

  alias Example.Example

  @valid_attrs %{name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Example.changeset(%Example{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Example.changeset(%Example{}, @invalid_attrs)
    refute changeset.valid?
  end

  test "create and read" do
    example = %Example{name: "foobar"}
    Repo.insert(example)
    count = Repo.aggregate(Example, :count, :id)
    assert count === 1
    assert Repo.get_by(Example, name: "foobar").name === example.name
  end
end
