defmodule PlanemoStorage2 do
@moduledoc """
Dale Weber <hybotics@skynet.run>

From *Introducing Elixir*, O'Reilly Media, Inc., 2014.
Copyright 2014 by Simon St.Laurent and J. David Eisenberg.
"""
  require PlanemoRecord

  def setup do
    planemo_table = :ets.new(:planemos,[:named_table, {:keypos, PlanemoRecord.planemo(:name) + 1}])
    :ets.info planemo_table
  end
end
