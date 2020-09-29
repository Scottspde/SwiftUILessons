import SwiftUI

struct ContentView: View {
    
    var movies = [Movie(title: "Episode IV", description: "The first in the saga", imageName: "Galaxy")]
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                Section(header: Text("Original Series 🤩")){
                    
                    ForEach(movies) { currentMovie in
                        NavigationLink(destination:
                        MovieView(currentMovie: currentMovie)) {
                            Text(currentMovie.title)
                        }
                        
                    }
                }
                
            }
            .navigationBarTitle("🌌 Star Wars Saga ⭐️")
            .listStyle(GroupedListStyle())
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
