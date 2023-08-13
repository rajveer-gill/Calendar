//
//  ContentView.swift
//  GridCalendar
//
//  Created by Raj on 8/9/23.
//

import SwiftUI

struct ContentView: View {
    let layout = [//creates grid layout of 7 columns
        GridItem(.flexible(minimum: 40)),
        GridItem(.flexible(minimum: 40)),
        GridItem(.flexible(minimum: 40)),
        GridItem(.flexible(minimum: 40)),
        GridItem(.flexible(minimum: 40)),
        GridItem(.flexible(minimum: 40)),
        GridItem(.flexible(minimum: 40))
    ]
    
    var body: some View {
        ScrollView{//allows scrolling
            LazyVGrid(columns: layout, pinnedViews: [.sectionHeaders]){//sets up grid
                ForEach(year, id: \.name) { month in//iterates through the year constant
                    Section(header: Text(verbatim: month.name).font(.headline)){//puts month name at the top of every month
                        ForEach(month.days) { day in//iterates through days of the month
                            Capsule()//makes bubbles with day # in them
                                .overlay(Text("\(day.value)").foregroundColor(.white))
                                .foregroundColor(.blue)
                                .frame(height: 40)
                        }
                    }
                }
            }
        }
    }
}

struct Day: Identifiable{//struct to make each day unique
    let id = UUID()
    let value: Int
}

struct Month{//struct for month and holds days inside as an array
    let name: String
    let numberOfDays: Int
    var days: [Day]
    
    init(name: String, numberOfDays: Int) {
        self.name = name
        self.numberOfDays = numberOfDays
        self.days = []
        
        for n in 1...numberOfDays{
            self.days.append(Day(value: n))
        }
    }
}

let year = [//holds all months of the year
    Month(name: "January", numberOfDays: 31),
    Month(name: "February", numberOfDays: 28),
    Month(name: "March", numberOfDays: 31),
    Month(name: "April", numberOfDays: 30),
    Month(name: "May", numberOfDays: 31),
    Month(name: "June", numberOfDays: 30),
    Month(name: "July", numberOfDays: 31),
    Month(name: "August", numberOfDays: 31),
    Month(name: "September", numberOfDays: 30),
    Month(name: "October", numberOfDays: 31),
    Month(name: "November", numberOfDays: 30),
    Month(name: "December", numberOfDays: 31)
]

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
