func flyBy(lamps: String, drone: String) -> String {
  
  let replaced = String(lamps.prefix(drone.count).map {
    $0 == "x" ? "o" : $0
  }) + lamps.dropFirst(drone.count)
  
  return replaced
}