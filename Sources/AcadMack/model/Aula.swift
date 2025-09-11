class Aula {
    let nome: String
    var instrutor: Instrutor
    
    init(nome: String, instrutor: Instrutor) {
        self.nome = nome
        self.instrutor = instrutor
    }
    
    func getDescricao() -> String {
        return "Aula de \(nome) do instrutor \(instrutor.nome)"
    }
}