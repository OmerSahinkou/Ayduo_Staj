`define IP_UUID _449a7b9bfbac46b2a2d60d871e2fb599
`define IP_NAME_CONCAT(a,b) a``b
`define IP_MODULE_NAME(name) `IP_NAME_CONCAT(name,`IP_UUID)

module efx_mac1gbe_exp_speed_ctrl #(
   parameter PORT_ID = 0,
   parameter INIT_SPEED = "1G", // "1G"/ "100M"/ "1000M"
   parameter DLY_CLK_STABLE = 50 // 1us (APB_CLK = 50MHz)
)
(
   input  logic         clk,
   input  logic         rst_n,

   // From VIO
   input  logic         speed_chg_i,   // Assert a pulse to change the speed to sgmii_speed_i, this will trigger the assertion & deassertion of reset
   input  logic [1:0]   sgmii_speed_i,   
   // SerDes Interface
   input  logic         pcs_an_complete_i,

   output logic [1:0]   sgmii_speed_o,
   output logic         pcs_rst_n_o,
   output logic         speed_chg_active_o, // Indicates that the speed change is in progress and occupying the APB path
   output logic         speed_chg_done_o, // Indicates that the AN handshake is completed

   output logic [23:0]  user_apb_paddr_o,
   output logic         user_apb_psel_o,
   output logic         user_apb_penable_o,
   output logic         user_apb_pwrite_o,
   output logic [31:0]  user_apb_pwdata_o,
   input  logic [31:0]  user_apb_prdata_i,
   input  logic         user_apb_pready_i
);

`IP_MODULE_NAME(efx_mac1gbe_exp_speed_ctrl) #(
   .PORT_ID        (PORT_ID),
   .INIT_SPEED     (INIT_SPEED),
   .DLY_CLK_STABLE (DLY_CLK_STABLE)
) inst_speed_ctrl (
   .clk   (clk),
   .rst_n (rst_n),

   .speed_chg_i        (speed_chg_i),
   .sgmii_speed_i      (sgmii_speed_i),   
   
   .pcs_an_complete_i  (pcs_an_complete_i),

   .sgmii_speed_o      (sgmii_speed_o),
   .pcs_rst_n_o        (pcs_rst_n_o),
   .speed_chg_active_o (speed_chg_active_o),
   .speed_chg_done_o   (speed_chg_done_o),

   .user_apb_paddr_o   (user_apb_paddr_o),
   .user_apb_psel_o    (user_apb_psel_o),
   .user_apb_penable_o (user_apb_penable_o),
   .user_apb_pwrite_o  (user_apb_pwrite_o),
   .user_apb_pwdata_o  (user_apb_pwdata_o),
   .user_apb_prdata_i  (user_apb_prdata_i),
   .user_apb_pready_i  (user_apb_pready_i)
);
endmodule

//pragma protect
//pragma protect begin

/* Encryption Envelope */

`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "QuestaSim" , encrypt_agent_info = "2021.1"
`pragma protect key_keyowner = "Efinix Inc." , key_keyname = "EFX_K01"
`pragma protect key_method = "rsa"
`pragma protect encoding = ( enctype = "base64" , line_length = 64 , bytes = 256 )
`pragma protect key_block
XrSdy8Mdmzf+SwQCtJmwGBbFDppxc890GVzWYu90ZI0YZTjkTrsYEQuCDGje2v5R
luZtgBcB/dMqMFkpY6I2HJjkCr7wDRV92BaAzz6KiAWHsb2574KTE/My0waPesPm
fZfFhzjBZQCueMlwFGIoayLEpcL8x1Hx7zU83pqjfz6oSn5HY4LgAnsniJ0y2GwW
ED4EC0ye4XIEV4ysKwYypbSZ7FJVT9RmPFiKwiHmXZhC7mlPAAGW7cQgoc9SKnNU
LxYiOTek6Q2cScaq1HsWcPQ5Rm2B2PXtlaiXHXAxJfhtsFixmynb4oEr1PDUudZ/
vss59FvPOMcy5upyD7rhdg==
`pragma protect data_method = "aes256-cbc"
`pragma protect encoding = ( enctype = "base64" , line_length = 64 , bytes = 6272 )
`pragma protect data_block
eCZGT/DToIXyPDuKGw8HCATS5xJv8j9h8PtxKRewXhZx/wSeaymfwRYSRC9uFQEa
cDWAxbr7RpiWM9FhSWOitQu+EEHGnv4mEqAhO34Uh14gBHO+Hsr1TIyZ8yxHrMyp
LgvG3/eNRkVijvqswG6VUpxTcW8fS/eMY3bKqOzVlsYl3y2iyIVO0IekrSOjunuI
JepBS7s54FjhGoi3509uOIDSZ/X/2D5sbH/gNUehqlICBz2EztUKEXysmZxjyxI5
4mTKhvZ/CgpT3eZ4YyH2rffnawtdmZPdfgUb+Zvna4KMKApE03RM3/4h1jd9n4lt
Uz3vCucRHwoDMFke93/s8SPbYrh0kwmUYbjda1y1C8dRV+WqDox1VhQLQQpETxex
EWFRGMamEm1juRboH+woolkH3LCQMK0bc4bwI8qoKuWogOsAOsU7MTThADEF46MY
+HA/wMqOYEeSBOO8TG4mMVPsjtadw451piymN1Q5CPSuevwYciG9bWSNrR8er9zV
Rqh3sIvQQ5n8Fg4zn4MjEQMvxVD+FyrwU7kJNHWEFXYsCjm/dlwcGFh0raqa9Jn2
x0HSC5WiTaAQpIqRw6DO6tOaFbyNLzmkXBQo/IqwGqhDlz6fdXJeBPvRpwx8zNpT
oZFZacQdLPla01ll8iLgVs1UBDko8dqJKACj9V2W+HQVSJ2FInP99mZBaYCiZKlI
0t/P76M6t0T/NHnQkY3tf4qrxD5X8+YDpzUXVjuG4nTeF4ID+mob2fsRfzdaDlZs
K3fOu+SQ5xrVh5DgZF61Al1pQhzHLgYqFP+q+VvJQQj3S3zouS8ETTB39Jfl+zew
8dUCMYQQYRlif+96Nvjx/PcvTo95noXsIU7IZdeEWwYWERZuEetLmEIa8f52mglt
fDrWcUBUyt1yHHwWHVQyPzed8oAXAmZVZ/Kp6CrDDXpduucZ1+ZxetHeX72xfvtU
2cOCCxQGbA6iMjqZrO9P2fUjUsuIjJQBB02uklLhW3dg/9jdirQk2FL8OANhA8oU
/HVR9fO59hOc52RyQ1IxVW5q+IGK139zXBEhrh2tYvs8x4gLV2kSr08SA4iSYtxx
feRP1M4at8bTzSjq6B+Pp0K0ZXC0r3z+sRuVJyilTJPazgqHcV5u7s3DPy81DM3z
8RUlDEa/gp0FtCUYFcaloAf4hLA7DZG6i2gAV1vBIkjOLo4ZRaG+W0mfr6rAMrNg
h0VdTtpfizZQXj1DqE2J1D0jADTl3Hg/HoQphkwTmNq9PB9SQupfAVbXBBreitXF
XkMmW4nmP09Mf9dv/YD2hP2ZtQ+dG1IHFgKK6srElm8wpqY254oGHD0ATyMr2A7I
4wZFI1Tf7Red4YaKd+xwaDwVoWgN6KFulDi0Y+ZXWrvlP9SRRdXfPeV1q827J0+w
ybvdy1b2oKgVNfAQ/jPBqeBJYu+Q9cPM6+aWuLQ1XpjCqVXdJ3z0o7t88bYO6b4D
oD5oNQmERirlD/jFjacC9gljCVDtzIVuqJOEXAkXb+koa0m0ygVFWsRUL8Yvlrnt
jHEva6hZtUNlauGaV4UIOzDnPnvVOXe2er2kUorAjsH+9QyctSgY0SB0XXtRwMzW
SdQhTEytATXF7p5oiyQm2rmqaXD6XAf60Lo75ad+6XWlGTMhVWVzSdT544j0lsrR
XtNyNuECfswnlfZvA/NshVbBm+Aj4jPNl2qMj6RjeBkJ2hj8wV7VO7OYyd0YUz8I
X0bbLsZ1sZy6GKJ4WD43RraRqfnGdOi3A+7wt/eXK8H3dY69bczN7TOaE5bG2R1h
vFbo60uYSBfhrZA+7/hGSCICxGbyakoUIQ+neSd5wHxHFdI6Din1ljbogmcGE5xv
+ZZWX5Zo2EXawaHKWewt8WYrlaHlNcnHPjxS+uEeNtR+8G6Yf28z35BcZRuBGHdH
TtSEGYciP5YmeodrzxTGUNkRcWp6cqIWR3H/jrG6OidcvGOT4eTYnj/K6LHNJ4Yi
AudgFmgWD4NNGGcZESFSssbGELGL8qmpquJoy/pmyhm5Ns5JLKdG1A1Cr8pXsauY
7PWdSgEyxoCQi9VbWBX8iB7Nia3IWzVHkbE9y8hys3WoVsIn71Tnt+9XWvzTVjLT
Qzj/Vq4ht4BstJkhizMJymSUDidon5EXi/aw+x1GRHs8w2Kt2eDP7AkGCXPbeOnk
UhPYUPQvK0ymh/IVq0QC9U216k+FF4dJgyCFavPsTmq9tjui232B1GQ7pbcbrxw6
maWS6Rhmbcv1u1IK+hLpAMCRFU7rR7T8YA4Gkv/ekyHxpugwjPbB6+64JfTE0A26
rJnhaqHzzvaP50OlpHw/6YAq2dpS4wnwFMHWyfmttgrTWx9Q4dFKgKoXW0QXtvd1
Y8bEbZ/ooAyaPDgtJBmwx+LcO6Md9vd1cdCl74vhKYfFnd0jfK0MttHd16JPrQkJ
obU9q5+6v438ekli/dxYZes9LG/P/voXVXaEuc23wEWOnuvjkaxYtRrtHHWhyLVi
gvpX4kI24bxaM9tJNi6+RJd8cvFSgZmMzyLt/guYguggBEzFIW1raAoOqRHxU5GF
xMd/GGeZPL1NfZ3Wv2VASLZix6ecL7u16g+qEITIjyMLlUTUh9DY+6H8FLHEOMo+
c8mvenw8LFfLJRhd+HzObHI2kzZcPfGpQjUdbNI0w6t6mRGznAba6B7twC0SHctM
SnydbJO7Xocm35jCWaV5DrmNuH8jRMVlI4KoxNGmdTgIdijJsm6UVrpmeiLCmEYZ
BnVFgGSrsyiG812ge39WYY5f31T6cHEERdSAtzwdUTD0zO1EjFRk8oHgRkHUc7U+
rz2XOBpSWl1biwALXQWn6+ngOhFOD54JJViWof3MEWn4bemfyyvjWbreFpqlUNgN
qID8SZKlWmbN/T2EWE9B+NBwUQsGkl+SO5J2ncAUWM6oTYJcAb4vBZZPnUGS/+Mp
NifYHHdF0hfmvX+p7mxuTVhsgJ63dGxbXwtqYhpdnzoJW7cjvvTo7XBW+J5mnyv7
SXKfiF50RKlnPNGBKex0iRbn54pcItxty+N41lZY8iWr5lrBVwOy5EjL2mPRNpKT
VQAxVnRaCWQeezILVEhgrwbj0hE/M+I5qnMa5PVuyI/XhUOHUL2UIIvFr/97aJcq
slixvTP2obLZdQSAx0vrZKes4IY10a/wrucgH0Cy0E2DNPY4+FYm3oNhX2AIp+ex
YNjwDk9g2EHvVhT4BLEhywGJhXVSjtZrT69P+qZS9HHSPlCiZuEvXHuZyyh4VGBi
ni/CBI/saQTswp8WXgimbJ39ncwpPt8DkTWbf01qjBgJ4r4TzcrFRtyIuBkLM9hc
u4rpk06QYFKIr7FN0F6cyX1a1LR4goeoBwqiJaCv1HRegbwV5SyxuQ6xr1B7g9A8
P1roa4iUX/AuucgkxcnhSXi9Dvu+apL3qT+tELMvjlhLpopR3zEAhpjQRGS8rMh2
Bh1lbuYgZaxvKEQFvlsMPWsK+2L0qPlrnrUTuyAdOliHI6FAVi1EfjNSVKmZpyf3
tlESHBmPk2Jzgv2OqkGt35G3ebnWQ+UgsUfn5ganaITCDg+8kh4xkHKmY93Z/pEi
HPdlVjt469BYbozED8W+b88IpkSHmQPgwhsxWkIViR0TrZd6HYiC+ZcH060q+1P2
mi65v0gGLWR8Hmo9KDd3eAiSWMohh8Yp4cysSwKGV8WLULi1LvAZCUjFFfTT9m2x
rKfyvQaOoSLyiG0w1F+kCAqzqa0IWboj1vx3MONQ1bK8ReHIVlIatw3t5Se7JWSv
jtFkPRVW818LV7rKm1KdlO+fS2kebiBlCRwUQss59ikQUyVU/Ltk/yi7vsAY+e8g
4V6E1MB6jHMkE1bdDNsHuGHlcola4asDoMYDO1RAAbE/7iFhcejLJ7bVT71X7bmz
AHWMGkvTX66PBgi/+9JafTmHqixUKeDX3hNXc21kn2v620crh6K7WfzXIslwqmRq
Pjy2npteibDQbli3AmDEvUVBRseBRbFf7OmDVq0rwFLYfFzCvP0ZbrBQ30UO9SCz
HR613IwBixjs7fWFJ53YgxQmHYyMkEUh8oFq3AewwgF0o5Fax3/GAEsne/d8qY+j
4iHyD4nfcIwuQFPnV2vVXTrNhKfDKub8uvRpcbEeCW5sEwmWmk0iEKeZvbTE8n/3
wYpc0/FxWGU9rlE/YmoqhaMzM3lDVxMiU2pSLqAdtrkUV280n+BwRVFfauUvSwuQ
j/atE+GOhCt8dPd2EORKXJjkBD8V+Z7iRXqIMsXsKiTUAKUVh2Z4stYTppRO6zj+
rQWU4CVjtYYN/+/JQmGAPrYxCykD5Gt7wj+ZhccQrwqaPkL78CSIfkukyXhPzCkO
Y6GIMaLL3ofZb+1UTW8a6WR4H7zjLov28ZDTGH4FRMQTdRu79mN7bZi2OiaFN2u2
qHBegZnVi7BCeZQ+pw+t/23a7JpcsOHR1jTP8YozDnyDXpNvlnKKg7tOaR9wGqza
wP/i3dkNPAMS/5uTekSfsKtvYBEj+GONE97h2pd4xnO435CdX3WIgXroRv7nqsxE
FZ3rp779Mf72Pa+56W9FwQL3Q7sN2SpFxqu9GGNgJ9NPU66/ogIZ5dMBK9NNCjvh
R9uQjqq6KJMOqXzTkIDky4uSX/ihxhxZOEqJ0uDAGEx2HWHp7H7pAv1vFwHX0wOt
TUZGfpTcF5RZUWakpbn+jz4pir1/LSGcR7juKmV/He6uUctzUu5V7OPuzCrCcrFX
/NOvcR5/JaeK8gVFpE8VTHtTvcIAuH+k4NfQwfgrHYK2iEKQcjTCunEYpr7+oSWx
H7Dz5dVqSYcG4LjxMm2PI6DQpWyOgVUCFJT60RkU5ltC00RF5L7lGJDPnAM/b5GS
Qu09/5hnzf9PZS7v19EzoKuc14G0N1SB9euG/EubM6RfE+MCsDFj9qxJ46+eSchc
HUN3Go65AlGCzWlzFBDduOg4YzSZWjcXLCnje83qj4i36f1NmVfy0zm3elJ2RaHE
pGWK/f+LUlmYTor+UfkFsDxnSI87Bhee1U95T68AqPYV1kJmFL8Coyc7fAk+D62k
f454Cr++q1iQp1BcFi1uRvrOBvpQBxiEHS6LHMfnEr4rWop1JQepVxuMF2QAPznr
U4FpV3viY688ezagks43cFp+JmW1YwzbY9MKDUbTdgn0GSPhdlCQgg/QRxWIchkx
42ndOscYtfhqWOfILk4vmFt0Tsuyi3WlSduqSVzjcoGt0ZQASwC4mHC2hU624oe2
UaEJjMzFv5y2GsN/huYwjkludMiNrcC/R8fcO6sW2Gonm9E7mMe8ui3p48zi8l5B
6oh32QBSfyWZfp43s3M47eJIl4rYUxuORoVgwOkqxm508ijGyuwoE0xcbgjldwvl
ntvvXe5Im9CCl0dd8icrMEIhlvmbE7VA3dYr+PHJ+Vg9+6bJuqk8HcA8ZydOCSPN
Wgqmj1k0KdcXc0+It59Eer6K5486gLiiYlqtWyQeyOFhuScVbu1GTBjtCSm40e4b
CbyOInyEyRqVxcR42mqLYrFkCKMdnuQzF1EKEGwP/llGLMYFkkScO5E5zgdhU304
FMXM92Xg3woWcDe1dYynIUnuXksGNcWG1h77cS4Q6+dELxuNe9AjHx1Z310O/CgF
0W+GW5v5kRwFJxhy+fDaHv1+3HupujebJ9Q6vAhOttjUD7X6opLPCcFU9iwWLOub
blSDKY+oz/ktyYK9Y8hzw99sRjJmFG0b78WI1NdHw+amP4BtF/z/Z+AQ8tJQkurd
sadvmRTCq/WKvUJVWspH/l5PBxALKVvGTCWLfcU22cIlBKWeO4GY23Uhjv3srGjy
ITpQ4vFSkohMi+yKEo//g4fl7ho8zTkDttl9OaVbSdhhoKoGBbQzBP8LRSLdlMM3
FPyyDcD5ZQod4X4i8WjNrflU6CtAkXpuSMGjwj0+GrakMmb89oF3aC1A5beElgzP
2Zu4PRJ7xDc0VGyJccVU19LIJX8Awldc0QAAXlYmn/ZwoUgjqHLFe4VMZS5WSakP
0HH3JlE7vmgh7obRSpmMSv5203AbF/8d2P5Kz5h8ZFTCWFd/OflFr53h5cDAgfcI
xFtyBh8y1QTh3Q0Vlht7tZYEvqzqDMQN+kp/VYcjPU6Z5gtA71xUqyQ8AHYkI3K6
B1rzvwvksaZG+H1PRh6r+iKusxs/dYvfE+yfdsNuv/w1qAmxYoMsDZdNw9Vbcz52
ufgqOwrN0FFny1F1YYWgfKX1UcPavov7xapA3bV4wCLPfJ10iymngDN/+7rQ2wou
GAHlxoMTs1K5npmvPoXj1IICkkgyw3aPxcnsp993UthTWu7RftIqA0cKSG1FfmQZ
zu+bIJXHZymWBDO1CvQwg2vUHwvfrUl5A3gMziEQ2ee/J2p29Bnfx9P+vCnAjzJ3
sTZ41PmI9nwO70C3G4a6Mn9tkxUsqFWtciOQW8CmdAjXX1G3QNKqxQ14xkLZPoFD
oguICkIZwBxZOksAaJPT4fHmPdXFS2sWR5ckl0J22Ldi6wytnbxT2VgGkTENqZYZ
uWsOhUKsADuHR0AYkMU97pQltbYDH9NVAhZR3B8fz40F7YwYYzWz9KBZNmV+JdiG
ZBHna7UEIH3IqVmVc9S79hEYUEqJroEwvInjNO2cJNUq9dzuTqFeinlKtdXkVW0F
GezyIjwZDcJBytXZLP2J3sg0CIIQh/7rkZvaplZCE0I5abQUp5OAdEuygmCY0d6O
zsqc3W8VUF1zt1VWRuVR1gOlxqsv27j5K0H5mVCvZAEAztQopcIJHOuu+STyYxlv
iLy3f7eUREBHa4sgHB0MCBOgnPYrl16aTtQxsYVT81Mm1pjeZybIELQMbVQy2/oM
CnfSpBm6J7M8XCHEBRRTw+0Wj0NDeejJM+APNQzfUtJWRM2mOwZv0E+6q2f0zpIU
WL2UwR/hBEkEd0OZadGwmmr5UNPYQi544Ik7B2KxLSsx+8w6sLU5SxdwHk61GZbZ
73SbPfFTYldbpbO3elFMp2ghFqKEjE7IVLK8DC2Q1LR8LZ2eMz9P1A45pUt03DUD
hKB8bb/aH9Yz1og8pr8/C2iLL7SzUGlWH8wePxP96HiKfnlu+vSEPtIzqa92FBlq
xAfqbsWfrINuEunh/dtw1RVZIRA5SbzDqXcuiZWNd95qaDB9kc4fZcerd9gYIjwK
cFzsBUc3vNTXtAp+ASJvUxBq1Qv/3P/935iv79KVV59w9RMXePkcei0+Y4jViTdT
g0KHyV7HovvLh1DG5YFPfoJKpEIDdOGTvqVRQpRF/GJ4N04G5jneopqSBtDy4382
VzWIwYBkl3bdGWsJL9nMRzMP8yo6b08tJ4+NDvxjJqR0Xt0zFG1C3YW522NQZ6Ps
9l4gNZILwqjDBQHnF3Cmta8nCWXynU6uP+JgPjE+V5l1/dWpvZcoW3z91fsClq4q
nU7BQHxjWLXuF13loiKSjaszE04QCfHDT4g/semrnnUAf1ZfyFzrJ37nmuYDuQPK
oVha1wLtiZyaq7dmNCx0TkgMo5pI+wRqfHqsRDo+RJ/y59pPr06YFI87Mk4JPQ0p
MPebF+s43kS0Gzjuo0UPmp2S3NXtW+ZhRjKuMLvnYQujTWrzy0/Fq1EU7I6aqRe4
V9SYrLRNNehaGwlBbuhAnnD+3KGU1gwbSoMrhcxvybDZD0nBxGs3Vvnv9x5sE0VW
Q6GDbYJX7FmXWfxc9SEVGcO1/KFbYyRLn1NEAF7V8ZLXT/KZjoGA3ClT8SYYV8cW
o6157rnAc6VaTU5Ku6jvKKX3FSaFMWcWn4ROglsBPsLT9F+1qYy2CX2tfvbPv4OM
ZnEKFvuZriCNxMnu9e0ZOtW55/gYdjwfzC/RUk7N/s6GB0CBB2Q0QyFhhB/8LTKZ
FsZP8s3SAVquKlVtMvIiC53+jD71U9x8IFuP8327X/6q9eQ94amb7GuDyYjaWLFZ
c1nuHJn46E2+g8W2fGSrx2fyUPUFV4OEEkiA6dQN/OiS285f0/oEZldyWXflaPGo
Sfh/CxREcHY7jb37xOey979zXH5P7dBdiP9b1jceok1VEstEYwdd2Mh149FoyIfe
DgkxlvibF2YIHS/h4RgI7AcfX7z0nn3pQoyUXRAtWx9VJfeSDlyIHPeHd7ISxx3X
8VlP3pOLGq5bY8Ul/Hi/8mdvUcuzLo57Irg9YI1F2jfYnOaRwelMQc06qezM2IZH
yEey4usRjTY7+c5KHmjsk1yXR8V5GrkE5oq0CHkFhbjjbMhyPizy0xyBOljQ/C8q
pegLoEArEkHDHla+wsIIrCIL8aNd6HB73T9/Sder8+EXthO4YzrBVuqYZHWbG5GA
2ine5gxA329NUNXGMBz1xOBPibBDAVmFOjXuOskGR4Y=
`pragma protect end_protected

//pragma protect end

`undef IP_UUID
`undef IP_NAME_CONCAT
`undef IP_MODULE_NAME
