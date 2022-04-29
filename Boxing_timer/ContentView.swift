//
//  ContentView.swift
//  Boxing_timer
//
//  Created by Emilio Y Martinez on 28/04/22.
//

import SwiftUI

struct ContentView: View {
    @State var time_Start : Bool = false
    @State var minutes : Int = 0
    @State var seconds : Int = 0
    @State var number_Of_rounds : Int = 0
    var body: some View {
        ZStack{
            Color(time_Start ? .green : .red)
            
            VStack{
                Text("Rounds").font(.system(size: 40)).foregroundColor(.white).fontWeight(.bold)
                HStack{
                    Text("\(number_Of_rounds)/10").font(.system(size: 30)).foregroundColor(.white).fontWeight(.bold)
                }
                Text("\(minutes):\(seconds)").font(.system(size: 70)).foregroundColor(.white).font(.title).fontWeight(.bold)
                
                
                
                HStack{
                    Spacer()
                    Button(action:{},label:{
                        Image(systemName: "play.circle").resizable()
                    }).frame(width:100,height:100).foregroundColor(Color.white)
                    Spacer()
                    Button(action:{},label:{
                        Image(systemName: "stop.circle").resizable()
                    }).frame(width:100,height:100).foregroundColor(Color.white)
                    Spacer()
                }.padding(.top, 40.0)
            }
        }.ignoresSafeArea()
            .navigationTitle(Text("Timer"))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
