defmodule RecordDrop do
  require PlanemoRecord
  require TowerRecord

  def fall_velocity(t = TowerRecord.tower()) do
    fall_velocity(TowerRecord.tower(t, :planemo), TowerRecord.tower(t, :height))
  end

  def fall_velocity(:earth, distance) when distance >= 0 do
    :math.sqrt(2 * 9.8 * distance)
  end

  def fall_velocity(:moon, distance) when distance >= 0 do
    :math.sqrt(2 * 1.6 * distance)
  end

  def fall_velocity(:mars, distance) when distance >= 0 do
    :math.sqrt(2 * 3.71 * distance)
  end

end
