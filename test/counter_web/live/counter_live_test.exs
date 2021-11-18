defmodule CounterWeb.CounterLiveTest do
  use CounterWeb.ConnCase
  import Phoenix.LiveViewTest

  test "increments count", %{conn: conn} do
    {:ok, view, _html} = live(conn, "/")
    assert view
           |> element("button", "増")
           |> render_click() =~ "Count: 1"
  end
end
