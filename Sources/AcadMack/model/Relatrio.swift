extension Academia {
    func gerarRelatorio() -> (totalAlunos: Int, totalInstrutores: Int, totalAulas: Int) {
        let totalAlunos = alunosMatriculados.count
        let totalInstrutores = instrutoresContratados.count
        let totalAulas = aulasDisponiveis.count
        
        return (totalAlunos, totalInstrutores, totalAulas)
    }
}