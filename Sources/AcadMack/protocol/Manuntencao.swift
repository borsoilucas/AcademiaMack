protocol Manutencao {
    var nomeItem: String { get }
    var dataUltimaManutencao: String { get }

    func realizarManuntecao() -> Bool 
}