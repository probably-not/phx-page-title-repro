defmodule PageTitleReproWeb.Reproduction.WithoutTitleLive do
  use PageTitleReproWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <h1>
      This page shouldn't have a title. However, if you've been to a page with a title... then it will???
    </h1>
    <.link navigate={~p"/with-title"}>
      <.button>
        Go to a page with a title!
      </.button>
    </.link>
    """
  end
end
