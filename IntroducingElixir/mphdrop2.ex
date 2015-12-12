defmodule MphDrop2 do
@moduledoc """
Dale Weber <hybotics@skynet.run>

From *Introducing Elixir*, O'Reilly Media, Inc., 2014.
Copyright 2014 by Simon St.Laurent and J. David Eisenberg.
"""
  def mph_drop do
    Process.flag(:trap_exit, true)
    drop_pid = spawn_link(Drop4, :drop, [])
    convert(drop_pid)
 end

  def convert(drop_pid) do
    receive do
      {planemo, distance} -> send(drop_pid, {self(), planemo, distance})
        convert(drop_pid)
      {:EXIT, _pid, _reason} -> new_drop_pid = spawn_link(Drop3, :drop, [])
        convert(new_drop_pid)
      {planemo, distance, velocity} -> mph_velocity = 2.23693629 * velocity
        IO.puts("On #{planemo}, a fall of #{distance} meters yields a velocity of #{mph_velocity} mph.")
        convert(drop_pid)
    end
  end
end
