//
//  ContentView.swift
//  test-ondoc
//
//  Created by Roman Resenchuk on 23/8/2022.
//

import SwiftUI
import test_ondoc_spm

struct ContentView: View {
    var body: some View {
        let scheduleData = ScheduleData()
        let doctor = scheduleData.fetchDoctorAndSchedule()
        HStack {
            Image(systemName: "stethoscope")
            Text("\(doctor.name) - Schedule")
        }
        List {
            let schedule = doctor.schedule
            ForEach(schedule, id: \.id) { item in
                HStack { 
                    Text(item.startDate.getFormattedDate(format: "HH:mm"))
                    Text("-")
                    Text(item.endDate.getFormattedDate(format: "HH:mm"))
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
