//
//  ContentView.swift
//  AppMusica
//
//  Created by Student02 on 26/06/23.
//

import SwiftUI

struct ContentView: View {
    
    struct Song: Identifiable{//DECLARA STRUCT SONG
        var id: Int
        var name: String
        var artist: String
        var capa: String
    }
    
    struct Suggestion{//DECLARA STRUCT SUGGESTION
        var id: Int
        var albumCover: String
        var albumName: String
    }
    
    @State var arr = [//ARRAY DE SONGS
        Song(id: 1, name: "Ate Que Durou - Ao Vivo", artist: "Pericles", capa: "https://pbs.twimg.com/profile_images/1637499206096101376/pEz_Tj0o_400x400.jpg"),
        Song(id: 2, name: "Pentada Violenta", artist: "MC Luan", capa: "https://akamai.sscdn.co/uploadfile/letras/fotos/5/d/b/b/5dbb052dc27443490a996716fb09e41e.jpg"),
        Song(id: 3, name: "9th Symphony", artist: "Ludwig Van Beethoven", capa: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Beethoven_%28cropped_2%29.jpg/640px-Beethoven_%28cropped_2%29.jpg"),
        Song(id: 4, name: "Holy War", artist: "Thy Art is Murder", capa: "https://i.scdn.co/image/ab67616100005174b794abb008c8ff099dc21238"),
        Song(id: 5, name: "Meu Namorado e Mo Otario", artist: "MC Carol", capa: "https://rd1.com.br/wp-content/uploads/2019/09/20190906-mc-carol.jpg"),
        Song(id: 6, name: "Telefone Mudo", artist: "Victor & Leo", capa: "https://i.scdn.co/image/ab6761610000e5ebae970527ddf8103c553e7fb6"),
        Song(id: 7, name: "teste 7", artist: "teste 7", capa: "who"),
        Song(id: 8, name: "teste 8", artist: "teste 8", capa: "who"),
        Song(id: 9, name: "teste 9", artist: "teste 9", capa: "who"),
        Song(id: 10, name: "teste 10", artist: "teste 10", capa: "who")
    ]
    
    @State var arrSugestions = [//ARRAY DE SUGGESTIONS
        Suggestion(id: 1, albumCover: "1", albumName: "1 - One"),
        Suggestion(id: 1, albumCover: "2", albumName: "2 - Two"),
        Suggestion(id: 1, albumCover: "3", albumName: "3 - Three"),
        Suggestion(id: 1, albumCover: "4", albumName: "4 - Four")
    ]
    
    var body: some View {
        VStack{
            AsyncImage(url: URL(string: "https://www.ufpb.br/ufpb/contents/noticias/projeto-hackatruck-maker-space-servicos-cognitivos-da-ibm-brasil-e-iniciado-na-ufpb/foto-caminhao-hackatruck.jpg")!, scale: 2)
                        .frame(width: 50, height: 50)
            Text("HackaFM")
                .font(.title)
                .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom))
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
