//
//  CourseTileView.swift
//  Course List
//
//  Created by Andy Dobbs on 1/11/24.
//

import SwiftUI

struct CourseTileView: View {
    
    let course: Course
    
    var body: some View {
        ZStack {
            AsyncImage(url: URL(string: course.image)) { response in
                switch response {
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFill()
                default:
                    DefaultImageView()
                }
            }
            VStack {
                Spacer()
                HStack {
                    Text(course.title)
                        .padding()
                        .foregroundStyle(.white)
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                .background {
                    Color.purple.opacity(0.8)
                }
            }
        }
    }
}

#Preview {
    CourseTileView(course: Course(id: 1, image: "https://zappycode.com/media/course_images/PlaygroundsCourseImageFULL.png", title: "iPhone Apps", subtitle: "You'll go from a complete beginner to having your own app in the App Store. Brand new (filmed Fall 2023) using Xcode 15"))
        .frame(height: 200)
}
