//
//  Model.swift
//  AulaAPI
//
//  Created by Student02 on 29/06/23.
//
struct User: Codable, Identifiable{//CRIA CLASSE USER
    var id: Int//TEM ID
    var login: String?//CREDENCIAL DE LOGIN
    var avatar_url: String?//URL DO AVATAR DELE
    
    init (id: Int, login: String?, avatar_url: String?){//METODO CONSTRUTOR PARA A CLASSE
        self.id = id//RECEBE DO PARAMETRO
        self.login = login//RECEBE DO PARAMETRO
        self.avatar_url = avatar_url//RECEBE DO PARAMETRO
    }
}

class APIService{//CLASSE PARA PEGAR DADO DA API (FETCH DATA)
    
    static let shared = APIService()
    
    func getUsers() -> AnyPublisher<[User], Error> {
        guard let url = URL(string: "https://api.github.com/users") else {
            return Fail(error: "Nao deu para pegar URL" as! Error)
                .eraseToAnyPublisher()
        }
        return Future {
            promise in URLSession.shared.dataTask(with: url)
            {
                (data, _, _) in DispatchQueue.main.async{
                    do {
                        guard let data = data else {
                            return promise(.failure("Älgo deu errado!" as! Error))
                        }
                        let users = try JSONDecoder().decode([User].self, from: data)
                        return promise(.success(users))
                    }
                    catch let error {
                        return promise(.failure(error))
                    }
                }
            }
            .resume()
        }
        .eraseToAnyPublisher()
    }
}
