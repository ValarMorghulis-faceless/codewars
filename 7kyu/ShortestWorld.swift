func find_short(_ str: String) -> Int
{
  return str.split(separator: " ").sorted{ $0.count < $1.count }[0].count
}