import Microsoft.Quantum.Diagnostics.*;

operation Main(): (Result, Result) {
    // alocando dois qubits, q1 e q2, no estado 0
    use (q1, q2) = (Qubit(), Qubit());

    // inserindo o q1 em uma super-posição
    // agora tendo 50% de chance de representar um 0 ou um 1
    H(q1);

    // emaranha o q1 e o q2, fazendo o q2 depender do q1
    CNOT(q1, q2);

    // mostra o estado emaranhado dos qubits
    DumpMachine();

    // mede o q1 e o q2 e armazena os resultados em m1 e m2
    let (m1, m2) = (M(q1), M(q2));

    // reseta o q1 e o q2 para o estado 0
    Reset(q1);
    Reset(q2);

    // retorna os resultados medidos
    return (m1, m2);
}