//
//  ProfileView.swift
//  SuperheroSocial
//
//  Created by Scott Speedie on 27/05/2020.
//  Copyright © 2020 ScottSpeedie. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    
    var profile: Profile?
    @State var profileImage = UIImage()
    
    var body: some View {
        VStack{
            Image(uiImage: profileImage)
            Text(profile!.userName)
            Text("\(profile!.age)")
            Text(profile!.bio)
        }
    .onAppear(perform: downloadImage)
    }
    
    func downloadImage() {
        
        guard let profile = profile else { return }
        
        let imageRequest = URLRequest(url: profile.profilePhotoURL)
        
        URLSession.shared.dataTask(with: imageRequest) {
            data, response, error in
            
            guard let data = data else { return }
            
            if let profileImage = UIImage(data: data) {
                
                DispatchQueue.main.async {
                    self.profileImage = profileImage
                }
                
            }
        }
    .resume()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
