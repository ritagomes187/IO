 // 94595 -> remover a aresta B
// 6 é o unico vertice par que temos
// xij = xji

// Uma variavel de decisao por cada ligaçao possivel de vertices.

// Função objetivo: menor distancia possivel

min: 3.00 xi1 + 4.24 xi2 + 6.32 xi3 + 8.25 xi4 + 5.66 xi5 + 10.00 xi7 + 9.85 xi8 + 10.00 xi9 + 10.20 xi10 + 11.18 xi11 + 12.81 xi12 + 7.21 xi13 + 14.42 xif + 3.00 x12 + 6.08 x13 + 8.06 x14 + 4.12 x15 + 8.54 x17 + 7.21 x18 + 7.00 x19 + 7.28 x110 + 8.60 x111 + 10.63 x112 + 5.00 x113 + 12.04 x1f + 3.16 x23 + 5.10 x24 + 1.41 x25 + 5.83 x27 + 6.08 x28 + 7.62 x29 + 7.07 x210 + 7.28 x211 + 8.60 x212 + 3.16 x213 + 10.30 x2f + 2.00 x34 + 2.83 x35 + 4.47 x37 + 7.28 x38 + 10.00 x39 + 8.94 x310 + 8.06 x311 + 8.25 x312 + 4.47 x313 + 10.20 x3f + 4.47 x45 + 8.94 x46 + 4.00 x47 + 8.06 x48 + 11.31 x49 + 10.00 x410 + 8.54 x411 + 8.00 x412 + 5.66 x413 + 10.00 x4f + 4.47 x57 + 5.00 x58 + 7.21 x59 + 6.32 x510 + 6.08 x511 + 7.21 x512 + 2.00 x513 + 8.94 x5f + 5.00 x78 + 8.94 x79 + 7.21 x710 + 5.00 x711 + 4.00 x712 + 4.00 x713 + 6.00 x7f + 4.12 x89 + 2.24 x810 + 1.41 x811 + 4.12 x812 + 3.00 x813 + 5.00 x8f + 2.00 x910 + 5.00 x911 + 8.00 x912 + 5.66 x913 + 8.25 x9f + 3.00 x1011 + 6.00 x1012 + 4.47 x1013 + 6.32 x10f + 3.00 x1112 + 4.12 x1113 + 3.61 x11f + 5.66 x1213 + 2.00 x12f + 7.31 x13f;

// Cada restriçao representa um vertice de grau impar, o que vai obter a paridade no modelo final.
// xji + xij = 1
// xji -> percorre todos os vertices de grau impar menores que i
// xij -> percorre todos os vertices de grau impar maiores que i

verticei:   xi1 + xi2 + xi3 + xi4 + xi5 + xi7 + xi8 + xi9 + xi10 + xi11 + xi12 + xi13 + xif = 1 ;
vertice1:   xi1 + x12 + x13 + x14 + x15 + x17 + x18 + x19 + x110 + x111 + x112 + x113 + x1f = 1 ;
vertice2:   xi2 + x12 + x23 + x24 + x25 + x27 + x28 + x29 + x210 + x211 + x212 + x213 + x2f= 1 ;
vertice3:   xi3 + x13 + x23 + x34 + x35 + x37 + x38 + x39 + x310 + x311 + x312 + x313 + x3f= 1 ;
vertice4:   xi4 + x14 + x24 + x34 + x45 + x47 + x49 + x410 + x411 + x412 + x413 + x4f= 1 ;
vertice5:   xi5 + x15 + x25 + x35 + x45 + x57 + x58 + x59 + x510 + x511 + x512 + x513 + x5f = 1 ;
/* Vertice 6 tem grau par */
vertice7:   xi7 + x17 + x27 + x37 + x47 + x57 + x78 + x79 + x710 + x711 + x712 + x713 + x7f= 1 ;
vertice8:   xi8 + x18 + x28 + x38 + x48 + x58 + x78 + x89 + x810 + x811 + x812 + x813 + x8f= 1 ;
vertice9:   xi9 + x19 + x29 + x39 + x49 + x59 + x79 + x89 + x910 + x911 + x912 + x913 + x9f = 1 ;
vertice10:  xi10 + x110 + x210 + x310 + x410 + x510 + x710 + x810 + x910 + x1011 + x1012  + x1013 + x10f= 1 ;
vertice11:  xi11 + x111 + x211 + x311 + x411 + x511 + x711 + x811 + x911 + x1011 + x1112 + x1113 + x11f= 1 ;
vertice12:  xi12 + x112 + x212 + x312 + x412 + x512 + x712 + x812 + x912 + x1012 + x1112 + x1213 + x12f = 1 ;
vertice13:  xi13 x113 + x213 + x313 + x413 + x513 + x713 + x813 + x913 + x1013 + x1113 + x1213 + x13f= 1 ;
verticef:   xif + x1f + x2f + x3f + x4f + x5f + x7f + x8f + x9f + x10f + x11f + x12f + x13f = 1 ;

bin xi1, xi2, xi3, xi4, xi5, xi7, xi8, xi9, xi10, xi11, xi12, xi13, xif, x12, x13, x14, x15, x17, x18, x19, x110, x111, x112, x113, x1f, x23, x24, x25, x27, x28 ,x29, x210, x211, x212, x213, x2f, x34, x35, x37, x38 ,x39, x310, x311, x312, x313, x3f, x45, x47, x48, x49, x410, x411, x412, x413, x4f, x57, x58, x59, x510, x511, x512, x513, x5f, x78, x79, x710, x711, x712, x713, x7f, x89, x810, x811, x812, x813, x8f, x910, x911, x912, x913, x9f, x1011, x1012, x1013, x10f, x1112, x1113, x11f, x1213, x12f, x13f;

