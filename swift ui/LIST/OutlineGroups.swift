//
//  OutlineGroups.swift
//  LIST
//
//  Created by iOS SDP Mac93 on 27/10/26.
//

import SwiftUI

struct Folder: Identifiable {
    let id = UUID()
    let name: String
    var subFolders: [Folder] = []
}

struct OutlineGroups: View {

    let folders: [Folder] = [
        Folder(name: "Folder 1", subFolders: [
            Folder(name: "Subfolder 1")
        ]),
        Folder(name: "Folder 2", subFolders: [
            Folder(name: "Subfolder 2", subFolders: [
                Folder(name: "Subfolder 3")
            ])
        ])
    ]

    var body: some View {
        List {
            ForEach(folders) { folder in
                DisclosureGroup {
                    ForEach(folder.subFolders) { subFolder in
                        DisclosureGroup {
                            ForEach(subFolder.subFolders) { item in
                                Label(item.name, systemImage: "doc")
                            }
                        } label: {
                            Label(subFolder.name, systemImage: "folder")
                        }
                    }
                } label: {
                    Label(folder.name, systemImage: "folder")
                }
            }
        }
    }
}

#Preview {
    OutlineGroups()
}
