namespace Demonstracao {  
    open Microsoft.Quantum.Diagnostics;

    @EntryPoint()
    operation UsoSwap() : Unit {
        
        use qs = Qubit[3];

        use qubit = Qubit();

        H(qs[0]);

        H(qs[1]);

        Y(qs[2]);

        // SWAP gate 3 e 1.
        SWAP(qs[2], qs[0]);

        // Visualiza o quantum state do qubits 
        DumpMachine();

        ResetAll(qs);

        Reset(qubit);
    }
}
