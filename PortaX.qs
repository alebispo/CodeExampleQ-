namespace Demonstracao {  
    open Microsoft.Quantum.Diagnostics;
    
    @EntryPoint()
    operation UsoSwap() : Unit {
        
        use qs = Qubit[3];

        // Allocate a single qubit
        use qubit = Qubit();

        H(qs[0]);

        H(qs[1]);

        Y(qs[2]);

        // SWAP gate 3 e 1.
        SWAP(qs[2], qs[0]);

        // Display the quantum state of the qubits.
        DumpMachine();

        // Reset the allocated qubits.
        ResetAll(qs);

        // Reset the single qubit.
        Reset(qubit);
    }
}
