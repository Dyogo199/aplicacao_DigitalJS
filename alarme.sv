// =====================================================
// Sistema de Alarme Digital (maioria de 3 entradas)
// Ativa Y=1 quando pelo menos dois sensores estão em 1
// Entradas: A (porta), B (janela), C (presença)
// Saída: Y (alarme)
// =====================================================
module alarme (
    input  wire A,
    input  wire B,
    input  wire C,
    output wire Y
);
    wire AB, AC, BC;

    assign AB = A & B;
    assign AC = A & C;
    assign BC = B & C;

    assign Y = AB | AC | BC;
endmodule
