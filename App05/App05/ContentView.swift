//
//  ContentView.swift
//  App05
//
//  Created by Christopher on 1/5/22.
//  https://www.creatisoft.com

import SwiftUI

struct ContentView: View {
    
    
    
    //Declaring our variables
    
    @State var slider01 = 0.0
    @State var slider02 = 0.0
    
    
    
    var body: some View {
        
        
        
        VStack {
                      
            Text("Adding two Sliders together")
            
            Slider(value: $slider01, in:0...10, step: 1){
                
                
                //I convert the float into an int here
                Text("\(Int(slider01))")
                
            }.accentColor(Color.red).frame(width: 200, height: 10, alignment: .center).padding()
            
            
            //I convert the float into an int here
            Slider(value: $slider02, in:0...10){
                
                Text("\(Int(slider02))")
                
            }.accentColor(Color.green).frame(width: 200, height: 10, alignment: .center).padding()
            
            
            
            let finalValue = Int(slider01 + slider02)
            
            Text("Total: \(Int(finalValue))")
            
            
          
                

 
        }.frame(width: 250, height: 150, alignment: .center)
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
    
    }
}
