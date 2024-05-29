defmodule PageTitleReproWeb.Reproduction.WithTitleLive do
  use PageTitleReproWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, page_title: "Wow such title")}
  end

  def render(assigns) do
    ~H"""
    <h1>This page has a title!</h1>
    <.link navigate={~p"/without-title"}>
      <.button>
        Go to a page without a title!
      </.button>
    </.link>
    <.link navigate={~p"/with-nil-title"}>
      <.button>
        Go to a page that sets its title to nil!
      </.button>
    </.link>
    <.link navigate={~p"/with-empty-string-title"}>
      <.button>
        Go to a page that sets its title to an empty string!
      </.button>
    </.link>
    """
  end
end
