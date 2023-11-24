/// # Criar um qubit e medir ele no estado |0>
///
namespace ExemploQuantumQShapr {

    open Microsoft.Quantum.Measurement;

    @EntryPoint()
    operation Exemplo01() : Result {
        Message("Exemplo 01");
        use q = Qubit();

        return MResetZ(q);
    }
}
