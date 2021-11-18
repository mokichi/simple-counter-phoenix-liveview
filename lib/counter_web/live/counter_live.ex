defmodule CounterWeb.CounterLive do
  use CounterWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :count, 0)}
  end

  def handle_event("inc", _value, socket) do
    new_count = socket.assigns.count + 1
    {:noreply, assign(socket, :count, new_count)}
  end

  def handle_event("dec", _value, socket) do
    new_count = socket.assigns.count - 1
    {:noreply, assign(socket, :count, new_count)}
  end
end
