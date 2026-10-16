//
//  StudentList.swift
//  UiApp
//
//  Created by Rahman on 16/10/26.
//

import SwiftUI

struct StudentList: View{
    
    let students = [
        Student(id: 1, name: "Mo Hafizurrahman", course: "MCA"),
        Student(id: 2, name: "Mo Hafizurrahman", course: "MCA"),
        Student(id: 3, name: "Mo Hafizurrahman", course: "MCA")
    ];
    
    var body: some View{
        NavigationStack{
            List(students){ student in
                VStack(
                    alignment: .leading
                ){
                    Text(student.name)
                    Text(student.course)
                }.listRowBackground(Color.yellow)
            }
            .scrollContentBackground(.hidden)
                .background(Color.yellow)
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    Button{
                        print("Back Tapped")
                    } label: {
                        Image(systemName: "arrow.left")
                    }
                }
                ToolbarItem(placement: .principal){
                    Text("Students List")
                        .font(.headline)
                }
                ToolbarItem(placement: .topBarTrailing) {
                                    Button {
                                        print("Edit tapped")
                                    } label: {
                                        Image(systemName: "pencil")
                                    }
                                }
            }.navigationBarTitleDisplayMode(.inline)
                .toolbarBackground(.yellow, for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

#Preview {
    StudentList()
}
