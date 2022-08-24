//
//  ContentView.swift
//  test-ondoc
//
//  Created by Roman Resenchuk on 23/8/2022.
//

import SwiftUI
import test_ondoc_spm

struct ContentView: View {
    @State var schedule = [Schedule]()
    
    var body: some View {
        HStack {
            Image(systemName: "stethoscope")
            Text("Doctor iBolit - Schedule")
        }
        List {
            ForEach(schedule, id: \.id) { item in
                HStack {
                    Text(item.startDate.getFormattedDate(format: "HH:mm"))
                    Text("-")
                    Text(item.endDate.getFormattedDate(format: "HH:mm"))
                }
            }
            Section {
                Button(action: optimizeSchedule) {
                    Text("Optimize schedule!")
                }
            }
        }.onAppear {
            let scheduleData = ScheduleData()
            schedule = scheduleData.fetchDoctorsSchedule()
        }
    }
    
    private func optimizeSchedule() {
        // Implementation here
        // schedule =
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
