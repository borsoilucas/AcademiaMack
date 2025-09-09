class Aparelho : Manutencao {
    var nomeItem: String
    var dataUltimaManutencao = "Nenhuma"

    init(nomeItem: String){
        self.nomeItem = nomeItem
    }

    func realizarManuntecao() -> Bool {
        print("Iniciando manutenção...")
        self.dataUltimaManutencao = "30/08/2025"
        print("Manutenção realizado com sucesso! A data d ultima manuntencao foi atualizada para \(dataUltimaManutencao)")
        return true
    }
}