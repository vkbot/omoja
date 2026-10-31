.class public final Lcom/sun/jna/Platform;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final AIX:I = 0x7

.field public static final ANDROID:I = 0x8

.field public static final ARCH:Ljava/lang/String;

.field public static final C_LIBRARY_NAME:Ljava/lang/String;

.field public static final FREEBSD:I = 0x4

.field public static final GNU:I = 0x9

.field public static final HAS_AWT:Z

.field public static final HAS_BUFFERS:Z

.field public static final HAS_DLL_CALLBACKS:Z

.field public static final HAS_JAWT:Z

.field public static final KFREEBSD:I = 0xa

.field public static final LINUX:I = 0x1

.field public static final MAC:I = 0x0

.field public static final MATH_LIBRARY_NAME:Ljava/lang/String;

.field public static final NETBSD:I = 0xb

.field public static final OPENBSD:I = 0x5

.field public static final RESOURCE_PREFIX:Ljava/lang/String;

.field public static final RO_FIELDS:Z

.field public static final SOLARIS:I = 0x3

.field public static final UNSPECIFIED:I = -0x1

.field public static final WINDOWS:I = 0x2

.field public static final WINDOWSCE:I = 0x6

.field private static final osType:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1
    const-string v0, "os.name"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "Linux"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x7

    .line 14
    const/16 v3, 0x8

    .line 15
    .line 16
    const/4 v4, 0x2

    .line 17
    const/4 v5, 0x6

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x1

    .line 20
    if-eqz v1, :cond_36

    .line 21
    .line 22
    const-string v0, "java.vm.name"

    .line 23
    .line 24
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "dalvik"

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_32

    .line 39
    .line 40
    sput v3, Lcom/sun/jna/Platform;->osType:I

    .line 41
    .line 42
    const-string v0, "jna.nounpack"

    .line 43
    .line 44
    const-string v1, "true"

    .line 45
    .line 46
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    goto/16 :goto_c5

    .line 50
    .line 51
    :cond_32
    sput v7, Lcom/sun/jna/Platform;->osType:I

    .line 52
    .line 53
    goto/16 :goto_c5

    .line 54
    .line 55
    :cond_36
    const-string v1, "AIX"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_42

    .line 62
    .line 63
    sput v2, Lcom/sun/jna/Platform;->osType:I

    .line 64
    .line 65
    goto/16 :goto_c5

    .line 66
    .line 67
    :cond_42
    const-string v1, "Mac"

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_c3

    .line 74
    .line 75
    const-string v1, "Darwin"

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_54

    .line 82
    .line 83
    goto/16 :goto_c3

    .line 84
    .line 85
    :cond_54
    const-string v1, "Windows CE"

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_60

    .line 92
    .line 93
    sput v5, Lcom/sun/jna/Platform;->osType:I

    .line 94
    .line 95
    goto/16 :goto_c5

    .line 96
    .line 97
    :cond_60
    const-string v1, "Windows"

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_6b

    .line 104
    .line 105
    sput v4, Lcom/sun/jna/Platform;->osType:I

    .line 106
    .line 107
    goto :goto_c5

    .line 108
    :cond_6b
    const-string v1, "Solaris"

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-nez v1, :cond_bf

    .line 115
    .line 116
    const-string v1, "SunOS"

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_7c

    .line 123
    .line 124
    goto :goto_bf

    .line 125
    :cond_7c
    const-string v1, "FreeBSD"

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_88

    .line 132
    .line 133
    const/4 v0, 0x4

    .line 134
    sput v0, Lcom/sun/jna/Platform;->osType:I

    .line 135
    .line 136
    goto :goto_c5

    .line 137
    :cond_88
    const-string v1, "OpenBSD"

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_94

    .line 144
    .line 145
    const/4 v0, 0x5

    .line 146
    sput v0, Lcom/sun/jna/Platform;->osType:I

    .line 147
    .line 148
    goto :goto_c5

    .line 149
    :cond_94
    const-string v1, "gnu"

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_a1

    .line 156
    .line 157
    const/16 v0, 0x9

    .line 158
    .line 159
    sput v0, Lcom/sun/jna/Platform;->osType:I

    .line 160
    .line 161
    goto :goto_c5

    .line 162
    :cond_a1
    const-string v1, "gnu/kfreebsd"

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-eqz v1, :cond_ae

    .line 169
    .line 170
    const/16 v0, 0xa

    .line 171
    .line 172
    sput v0, Lcom/sun/jna/Platform;->osType:I

    .line 173
    .line 174
    goto :goto_c5

    .line 175
    :cond_ae
    const-string v1, "netbsd"

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_bb

    .line 182
    .line 183
    const/16 v0, 0xb

    .line 184
    .line 185
    sput v0, Lcom/sun/jna/Platform;->osType:I

    .line 186
    .line 187
    goto :goto_c5

    .line 188
    :cond_bb
    const/4 v0, -0x1

    .line 189
    sput v0, Lcom/sun/jna/Platform;->osType:I

    .line 190
    .line 191
    goto :goto_c5

    .line 192
    :cond_bf
    :goto_bf
    const/4 v0, 0x3

    .line 193
    sput v0, Lcom/sun/jna/Platform;->osType:I

    .line 194
    .line 195
    goto :goto_c5

    .line 196
    :cond_c3
    :goto_c3
    sput v6, Lcom/sun/jna/Platform;->osType:I

    .line 197
    .line 198
    :goto_c5
    :try_start_c5
    const-string v0, "java.nio.Buffer"

    .line 199
    .line 200
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_ca
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c5 .. :try_end_ca} :catch_cc

    .line 201
    .line 202
    .line 203
    move v0, v7

    .line 204
    goto :goto_cd

    .line 205
    :catch_cc
    move v0, v6

    .line 206
    :goto_cd
    sget v1, Lcom/sun/jna/Platform;->osType:I

    .line 207
    .line 208
    if-eq v1, v5, :cond_d7

    .line 209
    .line 210
    if-eq v1, v3, :cond_d7

    .line 211
    .line 212
    if-eq v1, v2, :cond_d7

    .line 213
    .line 214
    move v2, v7

    .line 215
    goto :goto_d8

    .line 216
    :cond_d7
    move v2, v6

    .line 217
    :goto_d8
    sput-boolean v2, Lcom/sun/jna/Platform;->HAS_AWT:Z

    .line 218
    .line 219
    if-eqz v2, :cond_e0

    .line 220
    .line 221
    if-eqz v1, :cond_e0

    .line 222
    .line 223
    move v2, v7

    .line 224
    goto :goto_e1

    .line 225
    :cond_e0
    move v2, v6

    .line 226
    :goto_e1
    sput-boolean v2, Lcom/sun/jna/Platform;->HAS_JAWT:Z

    .line 227
    .line 228
    sput-boolean v0, Lcom/sun/jna/Platform;->HAS_BUFFERS:Z

    .line 229
    .line 230
    if-eq v1, v5, :cond_e9

    .line 231
    .line 232
    move v0, v7

    .line 233
    goto :goto_ea

    .line 234
    :cond_e9
    move v0, v6

    .line 235
    :goto_ea
    sput-boolean v0, Lcom/sun/jna/Platform;->RO_FIELDS:Z

    .line 236
    .line 237
    const-string v0, "coredll"

    .line 238
    .line 239
    const-string v2, "msvcrt"

    .line 240
    .line 241
    if-ne v1, v4, :cond_f4

    .line 242
    .line 243
    move-object v3, v2

    .line 244
    goto :goto_fa

    .line 245
    :cond_f4
    if-ne v1, v5, :cond_f8

    .line 246
    .line 247
    move-object v3, v0

    .line 248
    goto :goto_fa

    .line 249
    :cond_f8
    const-string v3, "c"

    .line 250
    .line 251
    :goto_fa
    sput-object v3, Lcom/sun/jna/Platform;->C_LIBRARY_NAME:Ljava/lang/String;

    .line 252
    .line 253
    if-ne v1, v4, :cond_100

    .line 254
    .line 255
    move-object v0, v2

    .line 256
    goto :goto_105

    .line 257
    :cond_100
    if-ne v1, v5, :cond_103

    .line 258
    .line 259
    goto :goto_105

    .line 260
    :cond_103
    const-string v0, "m"

    .line 261
    .line 262
    :goto_105
    sput-object v0, Lcom/sun/jna/Platform;->MATH_LIBRARY_NAME:Ljava/lang/String;

    .line 263
    .line 264
    const-string v0, "os.arch"

    .line 265
    .line 266
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-static {v0, v1}, Lcom/sun/jna/Platform;->getCanonicalArchitecture(Ljava/lang/String;I)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    sput-object v0, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    .line 275
    .line 276
    if-ne v1, v4, :cond_11e

    .line 277
    .line 278
    const-string v1, "aarch"

    .line 279
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    if-nez v0, :cond_11e

    .line 285
    .line 286
    move v6, v7

    .line 287
    :cond_11e
    sput-boolean v6, Lcom/sun/jna/Platform;->HAS_DLL_CALLBACKS:Z

    .line 288
    .line 289
    invoke-static {}, Lcom/sun/jna/Platform;->getNativeLibraryResourcePrefix()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    sput-object v0, Lcom/sun/jna/Platform;->RESOURCE_PREFIX:Ljava/lang/String;

    .line 294
    .line 295
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getCanonicalArchitecture(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "powerpc"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v1, "ppc64"

    .line 16
    .line 17
    if-eqz v0, :cond_15

    .line 18
    .line 19
    const-string p0, "ppc"

    .line 20
    .line 21
    goto :goto_51

    .line 22
    :cond_15
    const-string v0, "powerpc64"

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1f

    .line 29
    .line 30
    move-object p0, v1

    .line 31
    goto :goto_51

    .line 32
    :cond_1f
    const-string v0, "i386"

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_4f

    .line 39
    .line 40
    const-string v0, "i686"

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_30

    .line 47
    .line 48
    goto :goto_4f

    .line 49
    :cond_30
    const-string v0, "x86_64"

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_4c

    .line 56
    .line 57
    const-string v0, "amd64"

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_41

    .line 64
    .line 65
    goto :goto_4c

    .line 66
    :cond_41
    const-string v0, "zarch_64"

    .line 67
    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_51

    .line 73
    .line 74
    const-string p0, "s390x"

    .line 75
    .line 76
    goto :goto_51

    .line 77
    :cond_4c
    :goto_4c
    const-string p0, "x86-64"

    .line 78
    .line 79
    goto :goto_51

    .line 80
    :cond_4f
    :goto_4f
    const-string p0, "x86"

    .line 81
    .line 82
    :cond_51
    :goto_51
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_67

    .line 87
    .line 88
    const-string v0, "sun.cpu.endian"

    .line 89
    .line 90
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const-string v1, "little"

    .line 95
    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_67

    .line 101
    .line 102
    const-string p0, "ppc64le"

    .line 103
    .line 104
    :cond_67
    const-string v0, "arm"

    .line 105
    .line 106
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_7a

    .line 111
    .line 112
    const/4 v0, 0x1

    .line 113
    if-ne p1, v0, :cond_7a

    .line 114
    .line 115
    invoke-static {}, Lcom/sun/jna/Platform;->isSoftFloat()Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_7a

    .line 120
    .line 121
    const-string p0, "armel"

    .line 122
    .line 123
    :cond_7a
    return-object p0
.end method

.method public static getNativeLibraryResourcePrefix()Ljava/lang/String;
    .registers 3

    .line 113
    const-string v0, "jna.prefix"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    .line 114
    :cond_9
    invoke-static {}, Lcom/sun/jna/Platform;->getOSType()I

    move-result v0

    const-string v1, "os.arch"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "os.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sun/jna/Platform;->getNativeLibraryResourcePrefix(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNativeLibraryResourcePrefix(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p1, p0}, Lcom/sun/jna/Platform;->getCanonicalArchitecture(Ljava/lang/String;I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    packed-switch p0, :pswitch_data_70

    .line 6
    .line 7
    .line 8
    :pswitch_7
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string p2, " "

    .line 13
    .line 14
    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    const/4 v0, -0x1

    .line 19
    if-eq p2, v0, :cond_19

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    :cond_19
    const-string p2, "-"

    .line 27
    .line 28
    invoke-static {p0, p2, p1}, Lai/onnxruntime/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :pswitch_20
    const-string p0, "netbsd-"

    .line 34
    .line 35
    invoke-static {p0, p1}, Lai/onnxruntime/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :pswitch_27
    const-string p0, "kfreebsd-"

    .line 41
    .line 42
    invoke-static {p0, p1}, Lai/onnxruntime/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :pswitch_2e
    const-string p0, "arm"

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_37

    .line 54
    .line 55
    move-object p1, p0

    .line 56
    :cond_37
    const-string p0, "android-"

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :pswitch_3e
    const-string p0, "w32ce-"

    .line 64
    .line 65
    invoke-static {p0, p1}, Lai/onnxruntime/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    :pswitch_45
    const-string p0, "openbsd-"

    .line 71
    .line 72
    invoke-static {p0, p1}, Lai/onnxruntime/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :pswitch_4c
    const-string p0, "freebsd-"

    .line 78
    .line 79
    invoke-static {p0, p1}, Lai/onnxruntime/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0

    .line 84
    :pswitch_53
    const-string p0, "sunos-"

    .line 85
    .line 86
    invoke-static {p0, p1}, Lai/onnxruntime/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0

    .line 91
    :pswitch_5a
    const-string p0, "win32-"

    .line 92
    .line 93
    invoke-static {p0, p1}, Lai/onnxruntime/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    :pswitch_61
    const-string p0, "linux-"

    .line 99
    .line 100
    invoke-static {p0, p1}, Lai/onnxruntime/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    return-object p0

    .line 105
    :pswitch_68
    const-string p0, "darwin-"

    .line 106
    .line 107
    invoke-static {p0, p1}, Lai/onnxruntime/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0

    .line 112
    nop

    .line 113
    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_68
        :pswitch_61
        :pswitch_5a
        :pswitch_53
        :pswitch_4c
        :pswitch_45
        :pswitch_3e
        :pswitch_7
        :pswitch_2e
        :pswitch_7
        :pswitch_27
        :pswitch_20
    .end packed-switch
.end method

.method public static final getOSType()I
    .registers 1

    .line 1
    sget v0, Lcom/sun/jna/Platform;->osType:I

    .line 2
    .line 3
    return v0
.end method

.method public static final hasRuntimeExec()Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/sun/jna/Platform;->isWindowsCE()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_16

    .line 6
    .line 7
    const-string v0, "java.vm.name"

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "J9"

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_16

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    return v0

    .line 23
    :cond_16
    const/4 v0, 0x1

    .line 24
    return v0
.end method

.method public static final is64Bit()Z
    .registers 3

    .line 1
    const-string v0, "com.ibm.vm.bitmode"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "sun.arch.data.model"

    .line 8
    .line 9
    invoke-static {v1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_15

    .line 14
    .line 15
    const-string v1, "64"

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0

    .line 22
    :cond_15
    sget-object v0, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    .line 23
    .line 24
    const-string v1, "x86-64"

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x1

    .line 31
    if-nez v1, :cond_72

    .line 32
    .line 33
    const-string v1, "ia64"

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_72

    .line 40
    .line 41
    const-string v1, "ppc64"

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_72

    .line 48
    .line 49
    const-string v1, "ppc64le"

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_72

    .line 56
    .line 57
    const-string v1, "sparcv9"

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_72

    .line 64
    .line 65
    const-string v1, "mips64"

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_72

    .line 72
    .line 73
    const-string v1, "mips64el"

    .line 74
    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_72

    .line 80
    .line 81
    const-string v1, "loongarch64"

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_72

    .line 88
    .line 89
    const-string v1, "amd64"

    .line 90
    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-nez v1, :cond_72

    .line 96
    .line 97
    const-string v1, "aarch64"

    .line 98
    .line 99
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_69

    .line 104
    .line 105
    goto :goto_72

    .line 106
    :cond_69
    sget v0, Lcom/sun/jna/Native;->POINTER_SIZE:I

    .line 107
    .line 108
    const/16 v1, 0x8

    .line 109
    .line 110
    if-ne v0, v1, :cond_70

    .line 111
    .line 112
    return v2

    .line 113
    :cond_70
    const/4 v0, 0x0

    .line 114
    return v0

    .line 115
    :cond_72
    :goto_72
    return v2
.end method

.method public static final isAIX()Z
    .registers 2

    .line 1
    sget v0, Lcom/sun/jna/Platform;->osType:I

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    if-ne v0, v1, :cond_7

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    return v0

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public static final isARM()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "arm"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_15

    .line 10
    .line 11
    const-string v1, "aarch"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_13

    .line 18
    .line 19
    goto :goto_15

    .line 20
    :cond_13
    const/4 v0, 0x0

    .line 21
    return v0

    .line 22
    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 23
    return v0
.end method

.method public static final isAndroid()Z
    .registers 2

    .line 1
    sget v0, Lcom/sun/jna/Platform;->osType:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-ne v0, v1, :cond_8

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public static final isFreeBSD()Z
    .registers 2

    .line 1
    sget v0, Lcom/sun/jna/Platform;->osType:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_7

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    return v0

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public static final isGNU()Z
    .registers 2

    .line 1
    sget v0, Lcom/sun/jna/Platform;->osType:I

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    if-ne v0, v1, :cond_8

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public static final isIntel()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "x86"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public static final isLinux()Z
    .registers 2

    .line 1
    sget v0, Lcom/sun/jna/Platform;->osType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_6

    .line 5
    .line 6
    return v1

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public static final isLoongArch()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "loongarch"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static final isMIPS()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "mips"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_25

    .line 10
    .line 11
    const-string v1, "mips64"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_25

    .line 18
    .line 19
    const-string v1, "mipsel"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_25

    .line 26
    .line 27
    const-string v1, "mips64el"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_23

    .line 34
    .line 35
    goto :goto_25

    .line 36
    :cond_23
    const/4 v0, 0x0

    .line 37
    return v0

    .line 38
    :cond_25
    :goto_25
    const/4 v0, 0x1

    .line 39
    return v0
.end method

.method public static final isMac()Z
    .registers 1

    .line 1
    sget v0, Lcom/sun/jna/Platform;->osType:I

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public static final isNetBSD()Z
    .registers 2

    .line 1
    sget v0, Lcom/sun/jna/Platform;->osType:I

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    if-ne v0, v1, :cond_8

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public static final isOpenBSD()Z
    .registers 2

    .line 1
    sget v0, Lcom/sun/jna/Platform;->osType:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-ne v0, v1, :cond_7

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    return v0

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public static final isPPC()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "ppc"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public static final isSPARC()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "sparc"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static isSoftFloat()Z
    .registers 4

    .line 1
    const-class v0, Lcom/sun/jna/Platform;

    .line 2
    .line 3
    :try_start_2
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    const-string v2, "/proc/self/exe"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_41

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Lcom/sun/jna/ELFAnalyser;->analyse(Ljava/lang/String;)Lcom/sun/jna/ELFAnalyser;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/sun/jna/ELFAnalyser;->isArmHardFloat()Z

    .line 25
    .line 26
    .line 27
    move-result v0
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1b} :catch_20
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_1b} :catch_1e

    .line 28
    xor-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    return v0

    .line 31
    :catch_1e
    move-exception v1

    .line 32
    goto :goto_22

    .line 33
    :catch_20
    move-exception v1

    .line 34
    goto :goto_32

    .line 35
    :goto_22
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 44
    .line 45
    const-string v3, "SecurityException while analysing \'/proc/self/exe\' or the target binary."

    .line 46
    .line 47
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    goto :goto_41

    .line 51
    :goto_32
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 60
    .line 61
    const-string v3, "Failed to read \'/proc/self/exe\' or the target binary."

    .line 62
    .line 63
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    :cond_41
    :goto_41
    const/4 v0, 0x0

    .line 67
    return v0
.end method

.method public static final isSolaris()Z
    .registers 2

    .line 1
    sget v0, Lcom/sun/jna/Platform;->osType:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_7

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    return v0

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public static final isWindows()Z
    .registers 2

    .line 1
    sget v0, Lcom/sun/jna/Platform;->osType:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_b

    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    if-ne v0, v1, :cond_9

    .line 8
    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return v0

    .line 12
    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 13
    return v0
.end method

.method public static final isWindowsCE()Z
    .registers 2

    .line 1
    sget v0, Lcom/sun/jna/Platform;->osType:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    if-ne v0, v1, :cond_7

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    return v0

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public static final isX11()Z
    .registers 1

    .line 1
    invoke-static {}, Lcom/sun/jna/Platform;->isWindows()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_e

    .line 6
    .line 7
    invoke-static {}, Lcom/sun/jna/Platform;->isMac()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_e

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public static final iskFreeBSD()Z
    .registers 2

    .line 1
    sget v0, Lcom/sun/jna/Platform;->osType:I

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    if-ne v0, v1, :cond_8

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    return v0
.end method
