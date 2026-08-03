
// synopsys translate_off
`timescale 1 ns / 1 ps													
// synopsys translate_on

module efx_asyncreg #(
    parameter ASYNC_STAGE = 2,
    parameter WIDTH = 4,
    parameter ACTIVE_LOW = 1, // 0 - Active high reset, 1 - Active low reset
    parameter RST_VALUE = 0,
    parameter OFF_ASSERTION = 0 // 1 = Turn off PULSE_WIDTH_CHK assertion for a particular instance 
) (
    input  wire             clk,
    input  wire             reset_n,
    input  wire [WIDTH-1:0] d_i,
    output wire [WIDTH-1:0] d_o
);











`pragma protect begin_protected
`pragma protect version = 1
`pragma protect author = "author-a" , author_info = "author-a-details"
`pragma protect encrypt_agent = "QuestaSim" , encrypt_agent_info = "2023.4"
`pragma protect key_keyowner = "Efinix Inc." , key_keyname = "EFX_K01"
`pragma protect key_method = "rsa"
`pragma protect encoding = ( enctype = "base64" , line_length = 64 , bytes = 256 )
`pragma protect key_block
n9GXfY6k/ZhtJD9kiUNVLtaH0OSdANAy0snKnBtVVWQ6QOE+Ndo/VTZDI+hGg8g9
BQuVUO9VYpfcYCQvBCADNQKgSAqxFZjzIRV27HIOeZCFcQqQWxv7S+5zWngR1OAV
+Gybs11Q3LoZ/IBIGBpd0XnkdyubJyu4oBd3pKxGDxxRxImpbWTGclPoIrWLQbHy
BHYzpKNiI06B7YEvoi3X/d1pKZDVylZEMUSddSlug+uFiiaJtWQh6NA+z/owDEDE
V6bVUxyNm5aGjXjEzEECUcMJcfeV956Wj1jl3fVxGiNP0REOhvPr0bI/Girb6uQV
p+McpZkCfrqzEUBv+tF25w==
`pragma protect key_keyowner = "Cadence Design Systems." , key_keyname = "CDS_RSA_KEY_VER_2"
`pragma protect key_method = "rsa"
`pragma protect encoding = ( enctype = "base64" , line_length = 64 , bytes = 256 )
`pragma protect key_block
ANz2D8YrxkPjLNtSoqQ0qL/n/jE0iquIWk/3e3vE+oIaj29rVvK4slX1wAMRUX9N
upY9Ha7G82YH6HOWpzJQwnJ2DAY0Z3VQ3OFLkDk/Huz3SCQACFeCg8JTJ+gkqyIY
3qkzAdDWdipMtrWdFBeESV7jsaxlunckrpbgbEzci0JaAN21i098RIWuzrZr1HTH
dhLLzlbWTgr2KnB5l9x0HVdJAN9fzTDmnCmAJMU6tkoHiQaAhQNuBUDo0LAEd86e
FLJDJhF15fh4yrlIrzYr3WEqxNEjnYmgMEPuSLo8lQrcsVIomt1zamkCO09pKhfp
/GUCfdkRxv3JWfTNRFn7gg==
`pragma protect key_keyowner = "Synopsys" , key_keyname = "SNPS-VCS-RSA-2"
`pragma protect key_method = "rsa"
`pragma protect encoding = ( enctype = "base64" , line_length = 64 , bytes = 128 )
`pragma protect key_block
Zr7q0eHhaH7ptNB2EeBR/IQwCwGbZ8h5GSZSb4880yuCpqV3mF4LyVsWhgP/s+oL
K0Ls94YLsw+5IXRtW0LZarLJwXt3vd7exEKa2b4yrwhA3xkg4lvSFlzHYvUrejVb
pvELZpNMkl7gKvWAY1rITa8iFy4DIl/v0EZIF0sNnts=
`pragma protect key_keyowner = "Aldec" , key_keyname = "ALDEC15_001"
`pragma protect key_method = "rsa"
`pragma protect encoding = ( enctype = "base64" , line_length = 64 , bytes = 256 )
`pragma protect key_block
FuzzgfHyzdkm19HzCmIN77AO/gXQ89jPquRQ3E29Wuyahb8Rb3IaHBb2xF+ucNQz
iriPZJpxHjpFDU1ldMRZs9rmKQ1IEUkfM7Uriu9aXykiHujm16In9i6+P1J+GMdX
fZceSO0vZqr7OJB+4FbDAMjM/QN925xh5XTjFn6MNb2q2yn29Q7L3rCuZPQrb4Vn
lEQirmTxGZ1E+vr3rJPjXwz6dreTQb/ZBO4iFjveuPzjMlqJPyzHguB1VpgxGTPN
IqMyha9gI2WVCxiYdOnU3qGdds73SXmLkRRdn+veAxtnq3kfDb9Dkm0Mba9yro3D
hqg+l7kOuLXNiFKheBoksg==
`pragma protect key_keyowner = "Siemens" , key_keyname = "SIEMENS-VERIF-SIM-RSA-2"
`pragma protect key_method = "rsa"
`pragma protect encoding = ( enctype = "base64" , line_length = 64 , bytes = 256 )
`pragma protect key_block
Nfof9ZZHl85LF7VV8kwqITImnG3WEZ0P0YVzEeGvnS0PevbCKwpIf9HZIn40pDjp
6C7dsnYUSjkFk098OQT3cxa3sB4nEQ7tjghscEBIcr11fLIYDU+4+loBl7+vKhSE
JRtG25f4RN7VbiA9wVAQvgQi4ruRsPHC7WogI4wtvEQU35OHjmeDHS3L+Wnepjea
LnfRJMDlzCoG/Czx+a+eVXCSIDfoPGZ86v2+jnHyFeDiO0Vs+tyViM9ODIUyuDce
hi1T1CYfxnmsbjBWvmVUO1sVbRzXnMCK18kgayk/a+4zZuMsazRunqrSBabjCfrv
HMYPUZ4HGf4jWmz1yLuexA==
`pragma protect data_method = "aes256-cbc"
`pragma protect encoding = ( enctype = "base64" , line_length = 64 , bytes = 4288 )
`pragma protect data_block
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
A1csd1tPOJMVvTV2UTAmlw==
`pragma protect end_protected
