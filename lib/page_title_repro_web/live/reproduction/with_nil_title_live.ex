defmodule PageTitleReproWeb.Reproduction.WithNilTitleLive do
  use PageTitleReproWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, page_title: nil)}
  end

  def render(assigns) do
    ~H"""
    <h1>
      This page sets its title to nil, but something is ignoring this somewhere, because it still has a different page's title...
    </h1>
    <.link navigate={~p"/without-title"}>
      <.button>
        Go to a page without a title!
      </.button>
    </.link>
    <.link navigate={~p"/with-title"}>
      <.button>
        Go to a page with a title!
      </.button>
    </.link>
    """
  end
end
