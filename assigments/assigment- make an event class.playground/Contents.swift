import Foundation

// MARK: - 1. Base Class: Event
class Event {
    var eventName: String
    var location: String
    var date: String
    var organizer: String
    
    init(eventName: String, location: String, date: String, organizer: String) {
        self.eventName = eventName
        self.location = location
        self.date = date
        self.organizer = organizer
    }
    
    func scheduleEvent() {
        print("Event '\(eventName)' scheduled at \(location) on \(date) by \(organizer).")
    }
    
    func rescheduleEvent(newDate: String) {
        self.date = newDate
        print("Event '\(eventName)' has been rescheduled to \(newDate).")
    }
    
    func displayInfo() {
        print("----------------------------------------")
        print("Event Name: \(eventName)")
        print("Location  : \(location)")
        print("Date      : \(date)")
        print("Organizer : \(organizer)")
    }
}

// MARK: - 2. Intermediate Classes

// Class: Satsang (inherits from Event)
class Satsang: Event {
    var speakerName: String
    var bhajanList: [String]
    var duration: Int // in minutes
    
    init(eventName: String, location: String, date: String, organizer: String, speakerName: String, duration: Int, bhajanList: [String] = []) {
        self.speakerName = speakerName
        self.duration = duration
        self.bhajanList = bhajanList
        super.init(eventName: eventName, location: location, date: date, organizer: organizer)
    }
    
    func addBhajan(name: String) {
        bhajanList.append(name)
        print("Added Bhajan: '\(name)' to the Satsang event '\(eventName)'.")
    }
    
    func displayBhajans() {
        print("Bhajan List for '\(eventName)':")
        if bhajanList.isEmpty {
            print("  (No bhajans scheduled yet)")
        } else {
            for (index, bhajan) in bhajanList.enumerated() {
                print("  \(index + 1). \(bhajan)")
            }
        }
    }
    
    override func displayInfo() {
        super.displayInfo()
        print("Speaker   : \(speakerName)")
        print("Duration  : \(duration) minutes")
        print("Bhajans   : \(bhajanList.count) scheduled")
    }
}

// Class: Concert (inherits from Event)
class Concert: Event {
    var performer: String
    var genre: String
    var ticketPrice: Double
    var seatsAvailable: Int
    
    init(eventName: String, location: String, date: String, organizer: String, performer: String, genre: String, ticketPrice: Double, seatsAvailable: Int) {
        self.performer = performer
        self.genre = genre
        self.ticketPrice = ticketPrice
        self.seatsAvailable = seatsAvailable
        super.init(eventName: eventName, location: location, date: date, organizer: organizer)
    }
    
    func bookTicket(count: Int) {
        if count <= 0 {
            print("Invalid number of tickets to book.")
            return
        }
        
        if count <= seatsAvailable {
            seatsAvailable -= count
            let totalPrice = Double(count) * ticketPrice
            print("Successfully booked \(count) ticket(s) for '\(eventName)'. Total cost: $\(String(format: "%.2f", totalPrice)).")
        } else {
            print("Booking failed for '\(eventName)': Not enough seats available. Requested: \(count), Available: \(seatsAvailable).")
        }
    }
    
    func isSoldOut() -> Bool {
        return seatsAvailable == 0
    }
    
    override func displayInfo() {
        super.displayInfo()
        print("Performer : \(performer)")
        print("Genre     : \(genre)")
        print("Ticket Price: $\(String(format: "%.2f", ticketPrice))")
        print("Seats Left: \(seatsAvailable)")
    }
}

// MARK: - 3. More Specific Classes

// Class: MeditationSession (inherits from Satsang)
class MeditationSession: Satsang {
    var meditationType: String
    
    init(eventName: String, location: String, date: String, organizer: String, speakerName: String, duration: Int, meditationType: String, bhajanList: [String] = []) {
        self.meditationType = meditationType
        super.init(eventName: eventName, location: location, date: date, organizer: organizer, speakerName: speakerName, duration: duration, bhajanList: bhajanList)
    }
    
    override func displayInfo() {
        super.displayInfo()
        print("Meditation: \(meditationType)")
    }
}

// Class: RockConcert (inherits from Concert)
class RockConcert: Concert {
    var bandName: String
    
    init(eventName: String, location: String, date: String, organizer: String, performer: String, genre: String, ticketPrice: Double, seatsAvailable: Int, bandName: String) {
        self.bandName = bandName
        super.init(eventName: eventName, location: location, date: date, organizer: organizer, performer: performer, genre: genre, ticketPrice: ticketPrice, seatsAvailable: seatsAvailable)
    }
    
    override func displayInfo() {
        super.displayInfo()
        print("Band Name : \(bandName)")
    }
}

// MARK: - 4. Demonstration
print("========================================")
print("     EVENT MANAGEMENT SYSTEM DEMO")
print("========================================")

// 1. Create objects
print("\n--- [Creating Event Objects] ---")
let generalEvent = Event(
    eventName: "Community Clean-up",
    location: "Central Park",
    date: "2026-09-10",
    organizer: "Eco Club"
)

let standardSatsang = Satsang(
    eventName: "Evening Devotion",
    location: "Temple Hall",
    date: "2026-08-15",
    organizer: "Spiritual Society",
    speakerName: "Swami Ji",
    duration: 90
)

let standardConcert = Concert(
    eventName: "Jazz Under the Stars",
    location: "City Amphitheatre",
    date: "2026-08-20",
    organizer: "Blue Note Productions",
    performer: "The Miles Quartet",
    genre: "Jazz",
    ticketPrice: 45.0,
    seatsAvailable: 3
)

let meditationSession = MeditationSession(
    eventName: "Inner Peace Retreat",
    location: "Zen Garden",
    date: "2026-08-22",
    organizer: "Mindfulness Center",
    speakerName: "Guru Nithya",
    duration: 120,
    meditationType: "Zen Mindfulness"
)

let rockConcert = RockConcert(
    eventName: "Summer Shred Fest",
    location: "Arena Stage",
    date: "2026-09-05",
    organizer: "Live Loud Inc.",
    performer: "Thunderstrike",
    genre: "Hard Rock",
    ticketPrice: 75.0,
    seatsAvailable: 200,
    bandName: "Thunderstrike"
)

// 2. Schedule events
print("\n--- [Scheduling Events] ---")
generalEvent.scheduleEvent()
standardSatsang.scheduleEvent()
standardConcert.scheduleEvent()
meditationSession.scheduleEvent()
rockConcert.scheduleEvent()

// 3. Reschedule events
print("\n--- [Rescheduling Events] ---")
generalEvent.rescheduleEvent(newDate: "2026-09-12")
rockConcert.rescheduleEvent(newDate: "2026-09-06")

// 4. Satsang operations: Add and Display Bhajans
print("\n--- [Satsang Operations] ---")
standardSatsang.addBhajan(name: "Hare Krishna")
standardSatsang.addBhajan(name: "Om Namah Shivaya")
standardSatsang.displayBhajans()

meditationSession.addBhajan(name: "Gayatri Mantra")
meditationSession.displayBhajans()

// 5. Concert operations: Booking and checking sold-out status
print("\n--- [Concert Operations - standardConcert] ---")
print("Sold out? \(standardConcert.isSoldOut() ? "Yes" : "No")")
standardConcert.bookTicket(count: 2)
print("Sold out? \(standardConcert.isSoldOut() ? "Yes" : "No")")
standardConcert.bookTicket(count: 1)
print("Sold out? \(standardConcert.isSoldOut() ? "Yes" : "No")")
standardConcert.bookTicket(count: 1) // Should fail

print("\n--- [Concert Operations - rockConcert] ---")
print("Sold out? \(rockConcert.isSoldOut() ? "Yes" : "No")")
rockConcert.bookTicket(count: 50)
print("Seats remaining in Rock Concert: \(rockConcert.seatsAvailable)")

// 6. Display Information for each object (demonstrating method overriding)
print("\n--- [Displaying Information - Method Overriding] ---")
generalEvent.displayInfo()
standardSatsang.displayInfo()
standardConcert.displayInfo()
meditationSession.displayInfo()
rockConcert.displayInfo()
print("----------------------------------------")
