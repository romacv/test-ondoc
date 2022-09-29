//
//  Schedule.swift
//  test-ondoc
//
//  Created by Roman Resenchuk on 23/8/2022.
//

import Foundation

public struct Schedule: Identifiable {
    public let id = UUID()
    public let startDate: Date
    public let endDate: Date
    
    public init(startDate: Date,
                endDate: Date) {
        self.startDate = startDate
        self.endDate = endDate
    }
}

public struct ScheduleData {
    public init() {
    }
    
    public func fetchDoctorsSchedule() -> [Schedule] {
        let initialDate = Date(timeIntervalSince1970: 1692774000)
        var schedule = [Schedule]()
        let shifts = [(0, 60),
                      (30, 90),
                      (60, 120),
                      (150, 180),
                      (180, 210),
                      (270, 330),
                      (360, 420),
                      (360, 480)]
        for shift in shifts {
            let slot = Schedule(startDate: initialDate.addingTimeInterval(60*Double(shift.0)),
                                endDate: initialDate.addingTimeInterval(60*Double(shift.1)))
            schedule.append(slot)
            
        }
        return schedule
    }
    
}
