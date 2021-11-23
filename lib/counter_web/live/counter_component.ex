defmodule CounterWeb.CounterComponent do
  use CounterWeb, :live_component

  #def mount(socket) do
  #  {:ok, socket}
  #end

  def update(assigns, socket) do
    socket =
      if Map.has_key?(socket.assigns, :count) do
        socket
      else
        assign(socket, :count, assigns.initial_count)
      end
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div>
      Count: <%= @count %>
      <button phx-click="inc" phx-target={@myself}>+</button>
    </div>
    """
  end

  def handle_event("inc", _value, socket) do
    new_count = socket.assigns.count + 1
    {:noreply, assign(socket, :count, new_count)}
  end
end
