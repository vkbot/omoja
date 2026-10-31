.class public final enum Lorg/apache/commons/io/FileSystem;
.super Ljava/lang/Enum;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/FileSystem$NameLengthStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/io/FileSystem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/io/FileSystem;

.field static final synthetic $assertionsDisabled:Z = false

.field private static final CURRENT:Lorg/apache/commons/io/FileSystem;

.field public static final enum GENERIC:Lorg/apache/commons/io/FileSystem;

.field private static final IS_OS_LINUX:Z

.field private static final IS_OS_MAC:Z

.field private static final IS_OS_WINDOWS:Z

.field public static final enum LINUX:Lorg/apache/commons/io/FileSystem;

.field public static final enum MAC_OSX:Lorg/apache/commons/io/FileSystem;

.field private static final OS_NAME_WINDOWS_PREFIX:Ljava/lang/String; = "Windows"

.field public static final enum WINDOWS:Lorg/apache/commons/io/FileSystem;


# instance fields
.field private final blockSize:I

.field private final casePreserving:Z

.field private final caseSensitive:Z

.field private final illegalFileNameChars:[I

.field private final maxFileNameLength:I

.field private final maxPathLength:I

.field private final nameLengthStrategy:Lorg/apache/commons/io/FileSystem$NameLengthStrategy;

.field private final nameSeparator:C

.field private final nameSeparatorOther:C

.field private final reservedFileNames:[Ljava/lang/String;

.field private final reservedFileNamesExtensions:Z

.field private final supportsDriveLetter:Z


# direct methods
.method private static synthetic $values()[Lorg/apache/commons/io/FileSystem;
    .locals 4

    .line 1
    sget-object v0, Lorg/apache/commons/io/FileSystem;->GENERIC:Lorg/apache/commons/io/FileSystem;

    .line 2
    .line 3
    sget-object v1, Lorg/apache/commons/io/FileSystem;->LINUX:Lorg/apache/commons/io/FileSystem;

    .line 4
    .line 5
    sget-object v2, Lorg/apache/commons/io/FileSystem;->MAC_OSX:Lorg/apache/commons/io/FileSystem;

    .line 6
    .line 7
    sget-object v3, Lorg/apache/commons/io/FileSystem;->WINDOWS:Lorg/apache/commons/io/FileSystem;

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, v3}, [Lorg/apache/commons/io/FileSystem;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 39

    .line 1
    new-instance v0, Lorg/apache/commons/io/FileSystem;

    .line 2
    .line 3
    const/4 v14, 0x0

    .line 4
    filled-new-array {v14}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v8

    .line 8
    new-array v9, v14, [Ljava/lang/String;

    .line 9
    .line 10
    sget-object v28, Lorg/apache/commons/io/FileSystem$NameLengthStrategy;->BYTES:Lorg/apache/commons/io/FileSystem$NameLengthStrategy;

    .line 11
    .line 12
    const-string v1, "GENERIC"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/16 v3, 0x1000

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/16 v6, 0x3fc

    .line 20
    .line 21
    const/high16 v7, 0x100000

    .line 22
    .line 23
    const/4 v10, 0x0

    .line 24
    const/4 v11, 0x0

    .line 25
    const/16 v12, 0x2f

    .line 26
    .line 27
    move-object/from16 v13, v28

    .line 28
    .line 29
    invoke-direct/range {v0 .. v13}, Lorg/apache/commons/io/FileSystem;-><init>(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZCLorg/apache/commons/io/FileSystem$NameLengthStrategy;)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lorg/apache/commons/io/FileSystem;->GENERIC:Lorg/apache/commons/io/FileSystem;

    .line 33
    .line 34
    new-instance v15, Lorg/apache/commons/io/FileSystem;

    .line 35
    .line 36
    const/16 v0, 0x2f

    .line 37
    .line 38
    filled-new-array {v14, v0}, [I

    .line 39
    .line 40
    .line 41
    move-result-object v23

    .line 42
    new-array v1, v14, [Ljava/lang/String;

    .line 43
    .line 44
    const/16 v26, 0x0

    .line 45
    .line 46
    const/16 v27, 0x2f

    .line 47
    .line 48
    const-string v16, "LINUX"

    .line 49
    .line 50
    const/16 v17, 0x1

    .line 51
    .line 52
    const/16 v18, 0x2000

    .line 53
    .line 54
    const/16 v19, 0x1

    .line 55
    .line 56
    const/16 v20, 0x1

    .line 57
    .line 58
    const/16 v21, 0xff

    .line 59
    .line 60
    const/16 v22, 0x1000

    .line 61
    .line 62
    const/16 v25, 0x0

    .line 63
    .line 64
    move-object/from16 v24, v1

    .line 65
    .line 66
    invoke-direct/range {v15 .. v28}, Lorg/apache/commons/io/FileSystem;-><init>(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZCLorg/apache/commons/io/FileSystem$NameLengthStrategy;)V

    .line 67
    .line 68
    .line 69
    sput-object v15, Lorg/apache/commons/io/FileSystem;->LINUX:Lorg/apache/commons/io/FileSystem;

    .line 70
    .line 71
    new-instance v15, Lorg/apache/commons/io/FileSystem;

    .line 72
    .line 73
    const/16 v1, 0x3a

    .line 74
    .line 75
    filled-new-array {v14, v0, v1}, [I

    .line 76
    .line 77
    .line 78
    move-result-object v23

    .line 79
    new-array v0, v14, [Ljava/lang/String;

    .line 80
    .line 81
    const-string v16, "MAC_OSX"

    .line 82
    .line 83
    const/16 v17, 0x2

    .line 84
    .line 85
    const/16 v18, 0x1000

    .line 86
    .line 87
    const/16 v22, 0x400

    .line 88
    .line 89
    move-object/from16 v24, v0

    .line 90
    .line 91
    invoke-direct/range {v15 .. v28}, Lorg/apache/commons/io/FileSystem;-><init>(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZCLorg/apache/commons/io/FileSystem$NameLengthStrategy;)V

    .line 92
    .line 93
    .line 94
    sput-object v15, Lorg/apache/commons/io/FileSystem;->MAC_OSX:Lorg/apache/commons/io/FileSystem;

    .line 95
    .line 96
    new-instance v0, Lorg/apache/commons/io/FileSystem;

    .line 97
    .line 98
    const/16 v1, 0x29

    .line 99
    .line 100
    new-array v8, v1, [I

    .line 101
    .line 102
    fill-array-data v8, :array_0

    .line 103
    .line 104
    .line 105
    const-string v37, "NUL"

    .line 106
    .line 107
    const-string v38, "PRN"

    .line 108
    .line 109
    const-string v9, "AUX"

    .line 110
    .line 111
    const-string v10, "COM1"

    .line 112
    .line 113
    const-string v11, "COM2"

    .line 114
    .line 115
    const-string v12, "COM3"

    .line 116
    .line 117
    const-string v13, "COM4"

    .line 118
    .line 119
    const-string v14, "COM5"

    .line 120
    .line 121
    const-string v15, "COM6"

    .line 122
    .line 123
    const-string v16, "COM7"

    .line 124
    .line 125
    const-string v17, "COM8"

    .line 126
    .line 127
    const-string v18, "COM9"

    .line 128
    .line 129
    const-string v19, "COM\u00b2"

    .line 130
    .line 131
    const-string v20, "COM\u00b3"

    .line 132
    .line 133
    const-string v21, "COM\u00b9"

    .line 134
    .line 135
    const-string v22, "CON"

    .line 136
    .line 137
    const-string v23, "CONIN$"

    .line 138
    .line 139
    const-string v24, "CONOUT$"

    .line 140
    .line 141
    const-string v25, "LPT1"

    .line 142
    .line 143
    const-string v26, "LPT2"

    .line 144
    .line 145
    const-string v27, "LPT3"

    .line 146
    .line 147
    const-string v28, "LPT4"

    .line 148
    .line 149
    const-string v29, "LPT5"

    .line 150
    .line 151
    const-string v30, "LPT6"

    .line 152
    .line 153
    const-string v31, "LPT7"

    .line 154
    .line 155
    const-string v32, "LPT8"

    .line 156
    .line 157
    const-string v33, "LPT9"

    .line 158
    .line 159
    const-string v34, "LPT\u00b2"

    .line 160
    .line 161
    const-string v35, "LPT\u00b3"

    .line 162
    .line 163
    const-string v36, "LPT\u00b9"

    .line 164
    .line 165
    filled-new-array/range {v9 .. v38}, [Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v9

    .line 169
    const/16 v12, 0x5c

    .line 170
    .line 171
    sget-object v13, Lorg/apache/commons/io/FileSystem$NameLengthStrategy;->UTF16_CODE_UNITS:Lorg/apache/commons/io/FileSystem$NameLengthStrategy;

    .line 172
    .line 173
    const-string v1, "WINDOWS"

    .line 174
    .line 175
    const/4 v2, 0x3

    .line 176
    const/4 v5, 0x1

    .line 177
    const/16 v6, 0xff

    .line 178
    .line 179
    const/16 v7, 0x7fff

    .line 180
    .line 181
    const/4 v10, 0x1

    .line 182
    const/4 v11, 0x1

    .line 183
    invoke-direct/range {v0 .. v13}, Lorg/apache/commons/io/FileSystem;-><init>(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZCLorg/apache/commons/io/FileSystem$NameLengthStrategy;)V

    .line 184
    .line 185
    .line 186
    sput-object v0, Lorg/apache/commons/io/FileSystem;->WINDOWS:Lorg/apache/commons/io/FileSystem;

    .line 187
    .line 188
    invoke-static {}, Lorg/apache/commons/io/FileSystem;->$values()[Lorg/apache/commons/io/FileSystem;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    sput-object v0, Lorg/apache/commons/io/FileSystem;->$VALUES:[Lorg/apache/commons/io/FileSystem;

    .line 193
    .line 194
    const-string v0, "Linux"

    .line 195
    .line 196
    invoke-static {v0}, Lorg/apache/commons/io/FileSystem;->getOsMatchesName(Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    sput-boolean v0, Lorg/apache/commons/io/FileSystem;->IS_OS_LINUX:Z

    .line 201
    .line 202
    const-string v0, "Mac"

    .line 203
    .line 204
    invoke-static {v0}, Lorg/apache/commons/io/FileSystem;->getOsMatchesName(Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    sput-boolean v0, Lorg/apache/commons/io/FileSystem;->IS_OS_MAC:Z

    .line 209
    .line 210
    const-string v0, "Windows"

    .line 211
    .line 212
    invoke-static {v0}, Lorg/apache/commons/io/FileSystem;->getOsMatchesName(Ljava/lang/String;)Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    sput-boolean v0, Lorg/apache/commons/io/FileSystem;->IS_OS_WINDOWS:Z

    .line 217
    .line 218
    invoke-static {}, Lorg/apache/commons/io/FileSystem;->current()Lorg/apache/commons/io/FileSystem;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    sput-object v0, Lorg/apache/commons/io/FileSystem;->CURRENT:Lorg/apache/commons/io/FileSystem;

    .line 223
    .line 224
    return-void

    .line 225
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x22
        0x2a
        0x2f
        0x3a
        0x3c
        0x3e
        0x3f
        0x5c
        0x7c
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZCLorg/apache/commons/io/FileSystem$NameLengthStrategy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZII[I[",
            "Ljava/lang/String;",
            "ZZC",
            "Lorg/apache/commons/io/FileSystem$NameLengthStrategy;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lorg/apache/commons/io/FileSystem;->blockSize:I

    .line 5
    .line 6
    iput p6, p0, Lorg/apache/commons/io/FileSystem;->maxFileNameLength:I

    .line 7
    .line 8
    iput p7, p0, Lorg/apache/commons/io/FileSystem;->maxPathLength:I

    .line 9
    .line 10
    const-string p1, "illegalFileNameChars"

    .line 11
    .line 12
    invoke-static {p8, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    check-cast p8, [I

    .line 16
    .line 17
    iput-object p8, p0, Lorg/apache/commons/io/FileSystem;->illegalFileNameChars:[I

    .line 18
    .line 19
    const-string p1, "reservedFileNames"

    .line 20
    .line 21
    invoke-static {p9, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    check-cast p9, [Ljava/lang/String;

    .line 25
    .line 26
    iput-object p9, p0, Lorg/apache/commons/io/FileSystem;->reservedFileNames:[Ljava/lang/String;

    .line 27
    .line 28
    iput-boolean p10, p0, Lorg/apache/commons/io/FileSystem;->reservedFileNamesExtensions:Z

    .line 29
    .line 30
    iput-boolean p4, p0, Lorg/apache/commons/io/FileSystem;->caseSensitive:Z

    .line 31
    .line 32
    iput-boolean p5, p0, Lorg/apache/commons/io/FileSystem;->casePreserving:Z

    .line 33
    .line 34
    iput-boolean p11, p0, Lorg/apache/commons/io/FileSystem;->supportsDriveLetter:Z

    .line 35
    .line 36
    iput-char p12, p0, Lorg/apache/commons/io/FileSystem;->nameSeparator:C

    .line 37
    .line 38
    invoke-static {p12}, Lorg/apache/commons/io/FilenameUtils;->flipSeparator(C)C

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iput-char p1, p0, Lorg/apache/commons/io/FileSystem;->nameSeparatorOther:C

    .line 43
    .line 44
    iput-object p13, p0, Lorg/apache/commons/io/FileSystem;->nameLengthStrategy:Lorg/apache/commons/io/FileSystem$NameLengthStrategy;

    .line 45
    .line 46
    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/io/FileSystem;CI)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/FileSystem;->lambda$toLegalFileName$0(CI)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$100(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/io/FileSystem;->safeTruncate(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lorg/apache/commons/io/FileSystem;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/io/FileSystem;->isIllegalFileNameChar(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static current()Lorg/apache/commons/io/FileSystem;
    .locals 1

    .line 1
    sget-boolean v0, Lorg/apache/commons/io/FileSystem;->IS_OS_LINUX:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lorg/apache/commons/io/FileSystem;->LINUX:Lorg/apache/commons/io/FileSystem;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    sget-boolean v0, Lorg/apache/commons/io/FileSystem;->IS_OS_MAC:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sget-object v0, Lorg/apache/commons/io/FileSystem;->MAC_OSX:Lorg/apache/commons/io/FileSystem;

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_1
    sget-boolean v0, Lorg/apache/commons/io/FileSystem;->IS_OS_WINDOWS:Z

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    sget-object v0, Lorg/apache/commons/io/FileSystem;->WINDOWS:Lorg/apache/commons/io/FileSystem;

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_2
    sget-object v0, Lorg/apache/commons/io/FileSystem;->GENERIC:Lorg/apache/commons/io/FileSystem;

    .line 23
    .line 24
    return-object v0
.end method

.method public static getCurrent()Lorg/apache/commons/io/FileSystem;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/io/FileSystem;->CURRENT:Lorg/apache/commons/io/FileSystem;

    .line 2
    .line 3
    return-object v0
.end method

.method private static getOsMatchesName(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "os.name"

    .line 2
    .line 3
    invoke-static {v0}, Lorg/apache/commons/io/FileSystem;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p0}, Lorg/apache/commons/io/FileSystem;->isOsNameMatch(Ljava/lang/String;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "Caught a SecurityException reading the system property \'"

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p0, "\'; the SystemUtils property value will default to null."

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method private static indexOfFirstDot(Ljava/lang/CharSequence;)I
    .locals 3

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    .line 2
    .line 3
    const/16 v1, 0x2e

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ge v0, v2, :cond_2

    .line 20
    .line 21
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-ne v2, v1, :cond_1

    .line 26
    .line 27
    return v0

    .line 28
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 p0, -0x1

    .line 32
    return p0
.end method

.method private isIllegalFileNameChar(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/FileSystem;->illegalFileNameChars:[I

    .line 2
    .line 3
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-ltz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    return p1
.end method

.method private static isOsNameMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method private synthetic lambda$toLegalFileName$0(CI)I
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lorg/apache/commons/io/FileSystem;->isIllegalFileNameChar(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return p1

    .line 8
    :cond_0
    return p2
.end method

.method private static replace(Ljava/lang/String;CC)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static safeTruncate(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gt v0, p1, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 9
    .line 10
    invoke-static {v0}, Ljava/text/BreakIterator;->getCharacterInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v2, p1, 0x1

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/text/BreakIterator;->preceding(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    if-gt p1, v0, :cond_1

    .line 31
    .line 32
    const-string p1, "1 character"

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, " characters"

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :goto_0
    const-string v0, " can not be truncated to "

    .line 53
    .line 54
    const-string v1, " without breaking the first codepoint or grapheme cluster"

    .line 55
    .line 56
    const-string v2, "The value "

    .line 57
    .line 58
    invoke-static {v2, p0, v0, p1, v1}, Landroidx/navigation/b;->r(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    const/4 p0, 0x0

    .line 62
    return-object p0

    .line 63
    :cond_2
    const/4 p0, 0x0

    .line 64
    invoke-virtual {v1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0
.end method

.method public static splitExtension(Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 5

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/FileSystem;->indexOfFirstDot(Ljava/lang/CharSequence;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-ge v0, v3, :cond_0

    .line 9
    .line 10
    new-array v0, v1, [Ljava/lang/CharSequence;

    .line 11
    .line 12
    aput-object p0, v0, v2

    .line 13
    .line 14
    const-string p0, ""

    .line 15
    .line 16
    aput-object p0, v0, v3

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 20
    .line 21
    invoke-interface {p0, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    aput-object v4, v1, v2

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-interface {p0, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    aput-object p0, v1, v3

    .line 36
    .line 37
    return-object v1
.end method

.method public static trimExtension(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/FileSystem;->indexOfFirstDot(Ljava/lang/CharSequence;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/io/FileSystem;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/commons/io/FileSystem;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/apache/commons/io/FileSystem;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/apache/commons/io/FileSystem;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/io/FileSystem;->$VALUES:[Lorg/apache/commons/io/FileSystem;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/apache/commons/io/FileSystem;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/apache/commons/io/FileSystem;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/io/FileSystem;->blockSize:I

    .line 2
    .line 3
    return v0
.end method

.method public getIllegalFileNameChars()[C
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/FileSystem;->illegalFileNameChars:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    new-array v0, v0, [C

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/io/FileSystem;->illegalFileNameChars:[I

    .line 8
    .line 9
    array-length v3, v2

    .line 10
    if-ge v1, v3, :cond_0

    .line 11
    .line 12
    aget v2, v2, v1

    .line 13
    .line 14
    int-to-char v2, v2

    .line 15
    aput-char v2, v0, v1

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-object v0
.end method

.method public getIllegalFileNameCodePoints()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/FileSystem;->illegalFileNameChars:[I

    .line 2
    .line 3
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [I

    .line 8
    .line 9
    return-object v0
.end method

.method public getMaxFileNameLength()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/io/FileSystem;->maxFileNameLength:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxPathLength()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/io/FileSystem;->maxPathLength:I

    .line 2
    .line 3
    return v0
.end method

.method public getNameLengthStrategy()Lorg/apache/commons/io/FileSystem$NameLengthStrategy;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/FileSystem;->nameLengthStrategy:Lorg/apache/commons/io/FileSystem$NameLengthStrategy;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNameSeparator()C
    .locals 1

    .line 1
    iget-char v0, p0, Lorg/apache/commons/io/FileSystem;->nameSeparator:C

    .line 2
    .line 3
    return v0
.end method

.method public getReservedFileNames()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/FileSystem;->reservedFileNames:[Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method public isCasePreserving()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/FileSystem;->casePreserving:Z

    .line 2
    .line 3
    return v0
.end method

.method public isCaseSensitive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/FileSystem;->caseSensitive:Z

    .line 2
    .line 3
    return v0
.end method

.method public isLegalFileName(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 46
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/io/FileSystem;->isLegalFileName(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Z

    move-result p1

    return p1
.end method

.method public isLegalFileName(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/commons/io/FileSystem;->nameLengthStrategy:Lorg/apache/commons/io/FileSystem$NameLengthStrategy;

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/apache/commons/io/FileSystem;->getMaxFileNameLength()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, p1, v1, p2}, Lorg/apache/commons/io/FileSystem$NameLengthStrategy;->isWithinLimit(Ljava/lang/CharSequence;ILjava/nio/charset/Charset;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/FileSystem;->isReservedFileName(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-nez p2, :cond_0

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/lang/CharSequence;->chars()Ljava/util/stream/IntStream;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance p2, Lorg/apache/commons/io/c;

    .line 32
    .line 33
    invoke-direct {p2, p0}, Lorg/apache/commons/io/c;-><init>(Lorg/apache/commons/io/FileSystem;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, p2}, Ljava/util/stream/IntStream;->noneMatch(Ljava/util/function/IntPredicate;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    return p1

    .line 44
    :cond_0
    const/4 p1, 0x0

    .line 45
    return p1
.end method

.method public isReservedFileName(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/FileSystem;->reservedFileNamesExtensions:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lorg/apache/commons/io/FileSystem;->trimExtension(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/FileSystem;->reservedFileNames:[Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-ltz p1, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_1
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method public normalizeSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-char v0, p0, Lorg/apache/commons/io/FileSystem;->nameSeparatorOther:C

    .line 2
    .line 3
    iget-char v1, p0, Lorg/apache/commons/io/FileSystem;->nameSeparator:C

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lorg/apache/commons/io/FileSystem;->replace(Ljava/lang/String;CC)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public supportsDriveLetter()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/FileSystem;->supportsDriveLetter:Z

    .line 2
    .line 3
    return v0
.end method

.method public toLegalFileName(Ljava/lang/CharSequence;CLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "candidate"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-direct {p0, p2}, Lorg/apache/commons/io/FileSystem;->isIllegalFileNameChar(I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    const-string p2, "\\0"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    iget-object v0, p0, Lorg/apache/commons/io/FileSystem;->illegalFileNameChars:[I

    .line 34
    .line 35
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    filled-new-array {p2, p3, v0}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    const-string p3, "The replacement character \'%s\' cannot be one of the %s illegal characters: %s"

    .line 44
    .line 45
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/io/FileSystem;->nameLengthStrategy:Lorg/apache/commons/io/FileSystem$NameLengthStrategy;

    .line 54
    .line 55
    invoke-virtual {p0}, Lorg/apache/commons/io/FileSystem;->getMaxFileNameLength()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {v0, p1, v1, p3}, Lorg/apache/commons/io/FileSystem$NameLengthStrategy;->truncate(Ljava/lang/CharSequence;ILjava/nio/charset/Charset;)Ljava/lang/CharSequence;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-interface {p1}, Ljava/lang/CharSequence;->chars()Ljava/util/stream/IntStream;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-instance p3, Lorg/apache/commons/io/b;

    .line 68
    .line 69
    invoke-direct {p3, p0, p2}, Lorg/apache/commons/io/b;-><init>(Lorg/apache/commons/io/FileSystem;C)V

    .line 70
    .line 71
    .line 72
    invoke-interface {p1, p3}, Ljava/util/stream/IntStream;->map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    new-instance p2, Ljava/lang/String;

    .line 81
    .line 82
    const/4 p3, 0x0

    .line 83
    array-length v0, p1

    .line 84
    invoke-direct {p2, p1, p3, v0}, Ljava/lang/String;-><init>([III)V

    .line 85
    .line 86
    .line 87
    return-object p2

    .line 88
    :cond_2
    const-string p1, "The candidate file name is empty"

    .line 89
    .line 90
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const/4 p1, 0x0

    .line 94
    return-object p1
.end method

.method public toLegalFileName(Ljava/lang/String;C)Ljava/lang/String;
    .locals 1

    .line 95
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/io/FileSystem;->toLegalFileName(Ljava/lang/CharSequence;CLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
