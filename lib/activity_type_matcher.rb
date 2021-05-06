class ActivityTypeMatcher
  def self.match(location)
    input = location.upcase
    # Boat match
    boatMatch = [
      "BOATING",
      "BOAT",
      "BOATRIDE",
    ]
    boatMatch.each do |item|
      if input.include? item
        return "Boating"
     end
    end

    # Kiting match
    kiteMatch = [
      "KITE",
      "KITING",
      "LYLE"
    ]
    kiteMatch.each do |item|
      if input.include? item
        return "Kiting"
      end
    end

    # Windsurfing match
    wndMatch = [
      "WINDSURF",
      "WINDSURFING",
      "MARYHILL",
      "ROWENA"
    ]
    wndMatch.each do |item|
      if input.include? item
        return "Windsurfing"
      end
    end

    # SUP match
    supMatch = [
      "SUP",
      "Sup",
    ]
    supMatch.each do |item|
      if input.include? item
        return "SUP"
      end
    end
    return nil
  end
end