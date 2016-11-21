@fastmath function gravityFridaLS(q)
q1 = q[1]
q2 = q[2]
q3 = q[3]
q4 = q[4]
q5 = q[5]
q6 = q[6]
q7 = q[7]
x0 = sin(q1)
x1 = sin(q2)
x2 = cos(q1)
x3 = cos(q2)
x4 = 0.697295708269533*x0
x5 = 0.541168840393165*x2
x6 = -x4 - x5
x7 = x1*x6
x8 = x3*x6
x9 = sin(q3)
x10 = 0.57228523877055*x0
x11 = 0.104138475375735*x2
x12 = -x10 + x11
x13 = x12*x9
x14 = 0.104138475375735*x0
x15 = 0.57228523877055*x2
x16 = x14 + x15
x17 = x1*x16
x18 = x16*x3
x19 = 0.616137883653368*x0
x20 = 0.70917830844951*x2
x21 = x19 + x20
x22 = x21*x9
x23 = 0.70917830844951*x0
x24 = 0.616137883653368*x2
x25 = x23 - x24
x26 = x1*x25
x27 = x25*x3
x28 = cos(q3)
x29 = 0.813415504789374*x1
x30 = x18 - x29
x31 = x28*x30
x32 = 0.342695542941311*x1
x33 = x27 - x32
x34 = x28*x33
x35 = sin(q4)
x36 = 0.470015937406816*x3
x37 = 1.0*x7
x38 = -x36 - x37
x39 = x35*x38
x40 = 0.813415504789374*x3
x41 = 1.0*x17
x42 = -x40 - x41
x43 = x35*x42
x44 = cos(q4)
x45 = x42*x44
x46 = 0.342695542941311*x3
x47 = 1.0*x26
x48 = -x46 - x47
x49 = x35*x48
x50 = x44*x48
x51 = 0.541168840393165*x0
x52 = 0.697295708269533*x2
x53 = x51 - x52
x54 = x53*x9
x55 = 0.470015937406816*x1
x56 = -x55 + x8
x57 = x28*x56
x58 = x54 + x57
x59 = x44*x58
x60 = x13 + x31
x61 = x35*x60
x62 = x44*x60
x63 = x22 + x34
x64 = x35*x63
x65 = x44*x63
x66 = sin(q5)
x67 = 1.0*x28
x68 = x53*x67
x69 = x56*x9
x70 = 1.0*x69
x71 = x68 - x70
x72 = x66*x71
x73 = x12*x67
x74 = 1.0*x9
x75 = x30*x74
x76 = x73 - x75
x77 = x66*x76
x78 = x21*x67
x79 = x33*x74
x80 = x78 - x79
x81 = x66*x80
x82 = cos(q5)
x83 = x38*x44
x84 = x35*x58
x85 = x83 - x84
x86 = x82*x85
x87 = x45 - x61
x88 = x82*x87
x89 = x50 - x64
x90 = x82*x89
x91 = sin(q6)
x92 = 1.0*x39
x93 = 1.0*x59
x94 = -x92 - x93
x95 = x91*x94
x96 = 1.0*x43
x97 = 1.0*x62
x98 = -x96 - x97
x99 = x91*x98
x100 = 1.0*x49
x101 = 1.0*x65
x102 = -x100 - x101
x103 = x102*x91
x104 = cos(q6)
x105 = x72 + x86
x106 = x104*x105
x107 = x77 + x88
x108 = x104*x107
x109 = x81 + x90
x110 = x104*x109
x111 = x28*x53
x112 = x71*x82
x113 = x66*x85
x114 = 1.0*x91
x115 = x104*x94
x116 = x105*x91
x117 = 0.0001838304*x112 - 0.0001838304*x113 - 0.0010393488*x115 + 0.0010393488*x116
x118 = -0.0010393488*x106 + 0.0117863568*x112 - 0.0117863568*x113 - 0.0010393488*x95
x119 = 1.0*x104*x118 - 0.161738346*x111 + 0.0323579802*x112 - 0.0323579802*x113 - x114*x117 + 0.161738346*x69 + 0.037160844*x72 + 0.05087742*x83 - 0.05087742*x84 + 0.037160844*x86
x120 = -0.0001838304*x106 + 0.0117863568*x115 - 0.0117863568*x116 - 0.0323579802*x39 - 0.0323579802*x59 - 0.014548821*x72 - 0.014548821*x86 - 0.0001838304*x95
x121 = x104*x117 + 0.014548821*x112 - 0.014548821*x113 + x114*x118 - 0.037160844*x39 - 0.037160844*x59
x122 = -0.018536232*x111 - x120*x66 + x121*x82 - 0.05087742*x39 - 0.05087742*x59 + 0.018536232*x69
x123 = -0.11684311752429*x0 - 0.0240200945428039*x1 - 0.382327461*x111 - x119*x35 - 1.0*x122*x44 + 0.150552282964644*x2 + 0.1658527296*x54 + 0.1658527296*x57 + 0.382327461*x69 + 0.0511048512*x8
x124 = x120*x82 + 1.0*x121*x66 + 0.179699999978283*x3 + 0.161738346*x39 - 0.1144497432*x54 - 0.1144497432*x57 + 0.161738346*x59 + 0.382327461*x7 + 0.018536232*x83 - 0.018536232*x84
x125 = 0.1144497432*x111 + x119*x44 - x122*x35 - 0.0779534261744232*x3 - 0.1144497432*x69 - 0.1658527296*x7
x126 = -0.0212753492534853*x0 + 0.0184841365096011*x2 + 0.0376965097235442
x127 = -0.00312415426127204*x0 - 0.0171685571631165*x2 + 0.0894757055268311
x128 = 0.020918871248086*x0 + 0.0162350652117949*x2 + 0.0517017531147498
x129 = -0.0141004781222045*x1 + x128 + 0.03*x8
x130 = -0.0244024651436812*x1 + x127 + 0.03*x18
x131 = -0.0102808662882393*x1 + x126 + 0.03*x27
x132 = -0.03*x1 + 0.0244024651436812*x18 + 0.0102808662882393*x27 + 0.0141004781222045*x8
x133 = x129 + 0.11585892857078*x3 + 0.0405*x54 + 0.0405*x57 + 0.2465*x7
x134 = 0.0405*x13 + x130 + 0.2465*x17 + 0.200506921930581*x3 + 0.0405*x31
x135 = x131 + 0.0405*x22 + 0.2465*x26 + 0.0844744513350332*x3 + 0.0405*x34
x136 = x133 - 0.0405*x83 + 0.0405*x84
x137 = x134 - 0.0405*x45 + 0.0405*x61
x138 = x135 - 0.0405*x50 + 0.0405*x64
x139 = 0.0329433279439696*x13 + x132 + 0.200506921930581*x17 + 0.0138791694891231*x22 + 0.0844744513350332*x26 + 0.2465*x3 + 0.0329433279439696*x31 + 0.0138791694891231*x34 + 0.0190356454649761*x54 + 0.0190356454649761*x57 + 0.11585892857078*x7
x140 = x136 + 0.265*x39 + 0.265*x59 + 0.0135*x72 + 0.0135*x86
x141 = x137 + 0.265*x43 + 0.265*x62 + 0.0135*x77 + 0.0135*x88
x142 = x138 + 0.265*x49 + 0.265*x65 + 0.0135*x81 + 0.0135*x90
x143 = x139 - 0.0329433279439696*x45 - 0.0138791694891231*x50 + 0.0329433279439696*x61 + 0.0138791694891231*x64 - 0.0190356454649761*x83 + 0.0190356454649761*x84
x144 = -0.027*x106 + x140 - 0.027*x95
x145 = -0.027*x108 + x141 - 0.027*x99
x146 = -0.027*x103 - 0.027*x110 + x142
x147 = x143 + 0.124554223412806*x39 + 0.215555108769184*x43 + 0.0908143188794475*x49 + 0.124554223412806*x59 + 0.215555108769184*x62 + 0.0908143188794475*x65 + 0.00634521515499202*x72 + 0.0109811093146565*x77 + 0.0046263898297077*x81 + 0.00634521515499202*x86 + 0.0109811093146565*x88 + 0.0046263898297077*x90
x148 = -x129*(-x51 + x52) - x130*(x10 - x11) - x131*(-x19 - x20)
x149 = x129*(x55 - x8) + x130*(-x18 + x29) + x131*(-x27 + x32)
x150 = -x133*(x36 + x37) - x134*(x40 + x41) - x135*(x46 + x47)
x151 = x133*(-x54 - x57) + x134*(-x13 - x31) + x135*(-x22 - x34)
x152 = -x136*(-x68 + x70) - x137*(-x73 + x75) - x138*(-x78 + x79)
x153 = x136*(-x83 + x84) + x137*(-x45 + x61) + x138*(-x50 + x64)
tau = zeros(7)
tau[1] = -0.137800840091765*x0 - 1.0*x1*(0.295664321227919*x0 - x124*x74 + x125*x28 - 0.380963290737269*x2 - 0.0240200945428039*x3 - 0.0511048512*x7) - 1.4361011721727e-17*x1 + 0.0155281670596695*x103 - 8.67361737988404e-19*x106 - 0.00654208533039307*x108 + 0.0155281670596695*x110 + 1.0*x123*x3 + 0.201986884575886*x13 + 1.22937696414706*x17 + 0.244116702606334*x18 - 1.0885276841467*x2 - 0.479432157967297*x22 - 2.918025356517*x26 - 0.579430678245076*x27 + 1.40830566561452e-16*x3 + 0.201986884575886*x31 - 0.479432157967297*x34 - 5.55111512312578e-17*x39 + 0.382580746288959*x43 - 0.10344672428684*x45 - 0.908086251120643*x49 + 0.245539141631024*x50 - 5.55111512312578e-17*x59 + 0.10344672428684*x61 + 0.382580746288959*x62 - 0.245539141631024*x64 - 0.908086251120643*x65 - 5.55111512312578e-17*x7 + 4.33680868994202e-19*x72 + 0.019489962546796*x77 + 2.08166817117217e-17*x8 - 0.0462609976985988*x81 + 4.33680868994202e-19*x86 + 0.019489962546796*x88 - 0.0462609976985988*x90 - 8.67361737988404e-19*x95 - 0.00654208533039307*x99 - 0.174256048902845
tau[2] = 0.17501244800646*x0 + 0.256790363241774*x1 + x124*x67 + x125*x74 + 11.1604156298999*x126*(-x23 + x24) + 11.1604156298999*x127*(-x14 - x15) + 11.1604156298999*x128*(x4 + x5) + 4.3201608889935*x129*x6 + 4.3201608889935*x130*x16 + 4.3201608889935*x131*x25 + x132*(6.40920744847358*x0 + 4.97416421985058*x2) + 3.33704735335716*x133*x6 + 3.33704735335716*x134*x16 + 3.33704735335716*x135*x25 + 1.52313364676053*x136*x6 + 1.52313364676053*x137*x16 + 1.52313364676053*x138*x25 + x139*(4.95070190731453*x0 + 3.84222300315381*x2) + 1.64775367240457*x140*x6 + 1.64775367240457*x141*x16 + 1.64775367240457*x142*x25 + x143*(2.25965647221825*x0 + 1.75371174417809*x2) + 0.332320068384115*x144*x6 + 0.332320068384115*x145*x16 + 0.332320068384115*x146*x25 + x147*(2.44453745630883*x0 + 1.89719725051993*x2) + 0.135826568869997*x2 + 0.101480579282457*x3 + 0.2159088048*x7 - 0.5463439488*x8 + (0.49301595757489*x0 + 0.382628016911583*x2)*(-0.0092527796594154*x103 - 0.012690430309984*x106 - 0.0219622186293131*x108 - 0.0092527796594154*x110 + x147 - 0.012690430309984*x95 - 0.0219622186293131*x99) + 0.121833706492903
tau[3] = x123 + (-3.84222300315381*x0 + 4.95070190731453*x2)*(x133*x56 + x134*x30 + x135*x33 + x149) + (-1.89719725051993*x0 + 2.44453745630883*x2)*(x140*x56 + x141*x30 + x142*x33 + x149) + (-1.75371174417809*x0 + 2.25965647221825*x2)*(x136*x56 + x137*x30 + x138*x33 + x149) + (-0.382628016911583*x0 + 0.49301595757489*x2)*(x144*x56 + x145*x30 + x146*x33 + x149) + (0.332320068384115*x1 - 0.70704*x8)*(-x12*x145 - x144*x53 - x146*x21 + x148) + (1.52313364676053*x1 - 3.2406*x8)*(-x12*x137 - x136*x53 - x138*x21 + x148) + (1.64775367240457*x1 - 3.50574*x8)*(-x12*x141 - x140*x53 - x142*x21 + x148) + (3.33704735335716*x1 - 7.09986*x8)*(-x12*x134 - x133*x53 - x135*x21 + x148)
tau[4] = x124 + (0.332320068384115*x3 + 0.70704*x7)*(x144*x58 + x145*x60 + x146*x63 + x151) + (1.52313364676053*x3 + 3.2406*x7)*(x136*x58 + x137*x60 + x138*x63 + x151) + (1.64775367240457*x3 + 3.50574*x7)*(x140*x58 + x141*x60 + x142*x63 + x151) + (-3.50574*x54 - 3.50574*x57)*(-x140*x38 - x141*x42 - x142*x48 + x150) + (-3.2406*x54 - 3.2406*x57)*(-x136*x38 - x137*x42 - x138*x48 + x150) + (-0.70704*x54 - 0.70704*x57)*(-x144*x38 - x145*x42 - x146*x48 + x150)
tau[5] = x119 + (-3.50574*x111 + 3.50574*x69)*(x140*x85 + x141*x87 + x142*x89 + x153) + (-0.70704*x111 + 0.70704*x69)*(x144*x85 + x145*x87 + x146*x89 + x153) + (-3.50574*x83 + 3.50574*x84)*(-x140*x71 - x141*x76 - x142*x80 + x152) + (-0.70704*x83 + 0.70704*x84)*(-x144*x71 - x145*x76 - x146*x80 + x152)
tau[6] = x120 + (0.70704*x39 + 0.70704*x59)*(x105*x144 + x107*x145 + x109*x146 + x140*(-x72 - x86) + x141*(-x77 - x88) + x142*(-x81 - x90)) + (-0.70704*x72 - 0.70704*x86)*(-x102*x146 - x140*(x92 + x93) - x141*(x96 + x97) - x142*(x100 + x101) - x144*x94 - x145*x98)
tau[7] = x118
return tau
end
