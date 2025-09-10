class AulaColetiva: Aula {
    private(set) var alunosInscritos: [String: Aluno]
    let capacidadeMaxima: Int 

    init(nome: String, instrutor: Instrutor, aluno: Aluno) {
        self.alunosInscritos = [aluno.matricula: aluno]
        self.capacidadeMaxima = 25

        super.init(nome: nome, instrutor: instrutor)
    }

    func inscrever(aluno: Aluno) -> Bool {

        if (alunosInscritos.count >= 25) {
            print("Aula ja atingiu capacidade maxima!")
            return false
        }

        if alunosInscritos.keys.contains(aluno.matricula){
            print("Aluno \(aluno.nome) ja matriculado!")
            return false
        }
        
        alunosInscritos[aluno.matricula] = aluno
        print("Aluno \(aluno.nome) matriculado com sucesso!")
        return true
    }

    override func getDescricao() -> String {
    return "Numero de vagas ocupadas: \(alunosInscritos.count) | Numero limite de vagas \(capacidadeMaxima)"
    }
}