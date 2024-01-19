//
//  ItemDetail.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 20/12/23.
//

import SwiftUI

struct ItemDetailView: View {
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    let index: [Item]
    
    var body: some View {
        ZStack {
            VStack(alignment: .center) {
                
                ScrollView {
                    ItemImageList(pages: [ ItemImage(), ItemImage(), ItemImage(), ItemImage() ])
                    
                    VStack(alignment: .leading, spacing: 4.0) {
                        Text("Block A1, Ruko stasiun grogol")
                            .font(.title3)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                        
                        HStack(alignment: .center) {
                            Image(systemName: "mappin.and.ellipse")
                                .resizable()
                                .scaledToFit()
                            Text("Dago, Bandung")
                                .font(Font.custom("Inter", size: 12))
                                .foregroundColor(Color(red: 0.43, green: 0.43, blue: 0.43))
                            Image(systemName: "map")
                                .resizable()
                                .scaledToFit()
                            Text("Luas Tanah 1000 m²")
                                .font(Font.custom("Inter", size: 12))
                                .foregroundColor(Color(red: 0.43, green: 0.43, blue: 0.43))
                        }
                        .frame(height: 10.0)
                        .padding(.bottom, 10)
                        
                        
                        Text("asdas dasdasdasdas dasdasdasda sda sdasdasdasdas dasdasdasd asdasdasdas dasdasd asdas dasdasda sdasdasd asdasda sdasdas dasdasd asda sda sdasdasda sdasdasd asdas dasdadasdasdasdasd asdas")
                            .font(.caption)
                            .fontWeight(.thin)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                            .padding(.bottom, 10)
                        
                        HStack {
                            VStack(alignment: .leading, spacing: 5.0) {
                                Text("Jenis Aset")
                                    .font(.caption)
                                    .fontWeight(.semibold)
                                Text("Luas Lahan")
                                    .font(.caption)
                                    .fontWeight(.semibold)
                                Text("Luas Bangunan")
                                    .font(.caption)
                                    .fontWeight(.semibold)
                                Text("Status Lahan")
                                    .font(.caption)
                                    .fontWeight(.semibold)
                                Text("Alas Hak")
                                    .font(.caption)
                                    .fontWeight(.semibold)
                                Text("NJOP")
                                    .font(.caption)
                                    .fontWeight(.semibold)
                            }
                            
                            VStack(alignment: .center, spacing: 5.0) {
                                Text(":")
                                    .font(.caption)
                                    .fontWeight(.semibold)
                                Text(":")
                                    .font(.caption)
                                    .fontWeight(.semibold)
                                Text(":")
                                    .font(.caption)
                                    .fontWeight(.semibold)
                                Text(":")
                                    .font(.caption)
                                    .fontWeight(.semibold)
                                Text(":")
                                    .font(.caption)
                                    .fontWeight(.semibold)
                                Text(":")
                                    .font(.caption)
                                    .fontWeight(.semibold)
                            }
                            
                            VStack(alignment: .leading, spacing: 5.0) {
                                Text("Kawasan stasiun")
                                    .font(.caption)
                                    .fontWeight(.thin)
                                Text("9.123 m")
                                    .font(.caption)
                                    .fontWeight(.thin)
                                Text("-")
                                    .font(.caption)
                                    .fontWeight(.thin)
                                Text("Non clean and clear")
                                    .font(.caption)
                                    .fontWeight(.thin)
                                Text("Sertifikat")
                                    .font(.caption)
                                    .fontWeight(.thin)
                                Text("Rp 916.000,-")
                                    .font(.caption)
                                    .fontWeight(.thin)
                            }
                        }
                        .padding(.bottom, 10)
                        
                        Text("Fasilitas Terdekat")
                            .font(.title3)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                            .padding(.bottom, 5.0)
                        
                        LazyVGrid(columns: columns) {
                            ForEach (index) { index in
                                FasilitasTerdekatCardView()
                            }
                        }
                    }
                    .padding()
                }
                .padding(.top, -8.0)
            }
            
            AjukanBisnisTambahKeranjangView()
        }
        .statusBar(hidden: true)
        .navigationTitle("Detail Aset")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ItemDetailView(index: Assets)
}
