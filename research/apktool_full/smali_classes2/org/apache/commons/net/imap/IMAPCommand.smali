.class public final enum Lorg/apache/commons/net/imap/IMAPCommand;
.super Ljava/lang/Enum;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/net/imap/IMAPCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum APPEND:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum AUTHENTICATE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum CAPABILITY:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum CHECK:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum CLOSE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum COPY:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum CREATE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum DELETE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum EXAMINE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum EXPUNGE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum FETCH:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum LIST:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum LOGIN:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum LOGOUT:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum LSUB:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum NOOP:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum RENAME:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum SEARCH:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum SELECT:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum STARTTLS:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum STATUS:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum STORE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum SUBSCRIBE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum UID:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum UNSUBSCRIBE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum XOAUTH:Lorg/apache/commons/net/imap/IMAPCommand;


# instance fields
.field private final imapCommand:Ljava/lang/String;

.field private final maxParamCount:I

.field private final minParamCount:I


# direct methods
.method private static synthetic $values()[Lorg/apache/commons/net/imap/IMAPCommand;
    .locals 27

    .line 1
    sget-object v1, Lorg/apache/commons/net/imap/IMAPCommand;->CAPABILITY:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 2
    .line 3
    sget-object v2, Lorg/apache/commons/net/imap/IMAPCommand;->NOOP:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 4
    .line 5
    sget-object v3, Lorg/apache/commons/net/imap/IMAPCommand;->LOGOUT:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 6
    .line 7
    sget-object v4, Lorg/apache/commons/net/imap/IMAPCommand;->STARTTLS:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 8
    .line 9
    sget-object v5, Lorg/apache/commons/net/imap/IMAPCommand;->AUTHENTICATE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 10
    .line 11
    sget-object v6, Lorg/apache/commons/net/imap/IMAPCommand;->LOGIN:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 12
    .line 13
    sget-object v7, Lorg/apache/commons/net/imap/IMAPCommand;->XOAUTH:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 14
    .line 15
    sget-object v8, Lorg/apache/commons/net/imap/IMAPCommand;->SELECT:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 16
    .line 17
    sget-object v9, Lorg/apache/commons/net/imap/IMAPCommand;->EXAMINE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 18
    .line 19
    sget-object v10, Lorg/apache/commons/net/imap/IMAPCommand;->CREATE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 20
    .line 21
    sget-object v11, Lorg/apache/commons/net/imap/IMAPCommand;->DELETE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 22
    .line 23
    sget-object v12, Lorg/apache/commons/net/imap/IMAPCommand;->RENAME:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 24
    .line 25
    sget-object v13, Lorg/apache/commons/net/imap/IMAPCommand;->SUBSCRIBE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 26
    .line 27
    sget-object v14, Lorg/apache/commons/net/imap/IMAPCommand;->UNSUBSCRIBE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 28
    .line 29
    sget-object v15, Lorg/apache/commons/net/imap/IMAPCommand;->LIST:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 30
    .line 31
    sget-object v16, Lorg/apache/commons/net/imap/IMAPCommand;->LSUB:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 32
    .line 33
    sget-object v17, Lorg/apache/commons/net/imap/IMAPCommand;->STATUS:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 34
    .line 35
    sget-object v18, Lorg/apache/commons/net/imap/IMAPCommand;->APPEND:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 36
    .line 37
    sget-object v19, Lorg/apache/commons/net/imap/IMAPCommand;->CHECK:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 38
    .line 39
    sget-object v20, Lorg/apache/commons/net/imap/IMAPCommand;->CLOSE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 40
    .line 41
    sget-object v21, Lorg/apache/commons/net/imap/IMAPCommand;->EXPUNGE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 42
    .line 43
    sget-object v22, Lorg/apache/commons/net/imap/IMAPCommand;->SEARCH:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 44
    .line 45
    sget-object v23, Lorg/apache/commons/net/imap/IMAPCommand;->FETCH:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 46
    .line 47
    sget-object v24, Lorg/apache/commons/net/imap/IMAPCommand;->STORE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 48
    .line 49
    sget-object v25, Lorg/apache/commons/net/imap/IMAPCommand;->COPY:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 50
    .line 51
    sget-object v26, Lorg/apache/commons/net/imap/IMAPCommand;->UID:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 52
    .line 53
    filled-new-array/range {v1 .. v26}, [Lorg/apache/commons/net/imap/IMAPCommand;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    .line 2
    .line 3
    const-string v1, "CAPABILITY"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->CAPABILITY:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 10
    .line 11
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    .line 12
    .line 13
    const-string v1, "NOOP"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v0, v1, v3, v2}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->NOOP:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 20
    .line 21
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    .line 22
    .line 23
    const-string v1, "LOGOUT"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v0, v1, v4, v2}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->LOGOUT:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 30
    .line 31
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    .line 32
    .line 33
    const-string v1, "STARTTLS"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v0, v1, v5, v2}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->STARTTLS:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 40
    .line 41
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    .line 42
    .line 43
    const-string v1, "AUTHENTICATE"

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v0, v1, v6, v3}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->AUTHENTICATE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 50
    .line 51
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    .line 52
    .line 53
    const-string v1, "LOGIN"

    .line 54
    .line 55
    const/4 v7, 0x5

    .line 56
    invoke-direct {v0, v1, v7, v4}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->LOGIN:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 60
    .line 61
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    .line 62
    .line 63
    const-string v1, "XOAUTH"

    .line 64
    .line 65
    const/4 v7, 0x6

    .line 66
    invoke-direct {v0, v1, v7, v3}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->XOAUTH:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 70
    .line 71
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    .line 72
    .line 73
    const-string v1, "SELECT"

    .line 74
    .line 75
    const/4 v7, 0x7

    .line 76
    invoke-direct {v0, v1, v7, v3}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->SELECT:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 80
    .line 81
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    .line 82
    .line 83
    const-string v1, "EXAMINE"

    .line 84
    .line 85
    const/16 v7, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v7, v3}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->EXAMINE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 91
    .line 92
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    .line 93
    .line 94
    const-string v1, "CREATE"

    .line 95
    .line 96
    const/16 v7, 0x9

    .line 97
    .line 98
    invoke-direct {v0, v1, v7, v3}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->CREATE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 102
    .line 103
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    .line 104
    .line 105
    const-string v1, "DELETE"

    .line 106
    .line 107
    const/16 v7, 0xa

    .line 108
    .line 109
    invoke-direct {v0, v1, v7, v3}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->DELETE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 113
    .line 114
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    .line 115
    .line 116
    const-string v1, "RENAME"

    .line 117
    .line 118
    const/16 v7, 0xb

    .line 119
    .line 120
    invoke-direct {v0, v1, v7, v4}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    .line 121
    .line 122
    .line 123
    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->RENAME:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 124
    .line 125
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    .line 126
    .line 127
    const-string v1, "SUBSCRIBE"

    .line 128
    .line 129
    const/16 v7, 0xc

    .line 130
    .line 131
    invoke-direct {v0, v1, v7, v3}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    .line 132
    .line 133
    .line 134
    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->SUBSCRIBE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 135
    .line 136
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    .line 137
    .line 138
    const-string v1, "UNSUBSCRIBE"

    .line 139
    .line 140
    const/16 v7, 0xd

    .line 141
    .line 142
    invoke-direct {v0, v1, v7, v3}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    .line 143
    .line 144
    .line 145
    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->UNSUBSCRIBE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 146
    .line 147
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    .line 148
    .line 149
    const-string v1, "LIST"

    .line 150
    .line 151
    const/16 v7, 0xe

    .line 152
    .line 153
    invoke-direct {v0, v1, v7, v4}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    .line 154
    .line 155
    .line 156
    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->LIST:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 157
    .line 158
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    .line 159
    .line 160
    const-string v1, "LSUB"

    .line 161
    .line 162
    const/16 v7, 0xf

    .line 163
    .line 164
    invoke-direct {v0, v1, v7, v4}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    .line 165
    .line 166
    .line 167
    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->LSUB:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 168
    .line 169
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    .line 170
    .line 171
    const-string v1, "STATUS"

    .line 172
    .line 173
    const/16 v7, 0x10

    .line 174
    .line 175
    invoke-direct {v0, v1, v7, v4}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    .line 176
    .line 177
    .line 178
    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->STATUS:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 179
    .line 180
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    .line 181
    .line 182
    const-string v1, "APPEND"

    .line 183
    .line 184
    const/16 v7, 0x11

    .line 185
    .line 186
    invoke-direct {v0, v1, v7, v4, v6}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;III)V

    .line 187
    .line 188
    .line 189
    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->APPEND:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 190
    .line 191
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    .line 192
    .line 193
    const-string v1, "CHECK"

    .line 194
    .line 195
    const/16 v6, 0x12

    .line 196
    .line 197
    invoke-direct {v0, v1, v6, v2}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    .line 198
    .line 199
    .line 200
    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->CHECK:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 201
    .line 202
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    .line 203
    .line 204
    const-string v1, "CLOSE"

    .line 205
    .line 206
    const/16 v6, 0x13

    .line 207
    .line 208
    invoke-direct {v0, v1, v6, v2}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    .line 209
    .line 210
    .line 211
    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->CLOSE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 212
    .line 213
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    .line 214
    .line 215
    const-string v1, "EXPUNGE"

    .line 216
    .line 217
    const/16 v6, 0x14

    .line 218
    .line 219
    invoke-direct {v0, v1, v6, v2}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    .line 220
    .line 221
    .line 222
    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->EXPUNGE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 223
    .line 224
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    .line 225
    .line 226
    const-string v1, "SEARCH"

    .line 227
    .line 228
    const/16 v2, 0x15

    .line 229
    .line 230
    const v6, 0x7fffffff

    .line 231
    .line 232
    .line 233
    invoke-direct {v0, v1, v2, v3, v6}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;III)V

    .line 234
    .line 235
    .line 236
    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->SEARCH:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 237
    .line 238
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    .line 239
    .line 240
    const-string v1, "FETCH"

    .line 241
    .line 242
    const/16 v2, 0x16

    .line 243
    .line 244
    invoke-direct {v0, v1, v2, v4}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    .line 245
    .line 246
    .line 247
    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->FETCH:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 248
    .line 249
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    .line 250
    .line 251
    const-string v1, "STORE"

    .line 252
    .line 253
    const/16 v2, 0x17

    .line 254
    .line 255
    invoke-direct {v0, v1, v2, v5}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    .line 256
    .line 257
    .line 258
    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->STORE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 259
    .line 260
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    .line 261
    .line 262
    const-string v1, "COPY"

    .line 263
    .line 264
    const/16 v2, 0x18

    .line 265
    .line 266
    invoke-direct {v0, v1, v2, v4}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    .line 267
    .line 268
    .line 269
    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->COPY:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 270
    .line 271
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    .line 272
    .line 273
    const-string v1, "UID"

    .line 274
    .line 275
    const/16 v2, 0x19

    .line 276
    .line 277
    invoke-direct {v0, v1, v2, v4, v6}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;III)V

    .line 278
    .line 279
    .line 280
    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->UID:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 281
    .line 282
    invoke-static {}, Lorg/apache/commons/net/imap/IMAPCommand;->$values()[Lorg/apache/commons/net/imap/IMAPCommand;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->$VALUES:[Lorg/apache/commons/net/imap/IMAPCommand;

    .line 287
    .line 288
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    const/4 v3, 0x0

    .line 2
    move v5, p3

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move v2, p2

    .line 6
    move v4, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    .line 12
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    move v5, p4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 14
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lorg/apache/commons/net/imap/IMAPCommand;->imapCommand:Ljava/lang/String;

    .line 17
    iput p4, p0, Lorg/apache/commons/net/imap/IMAPCommand;->minParamCount:I

    .line 18
    iput p5, p0, Lorg/apache/commons/net/imap/IMAPCommand;->maxParamCount:I

    return-void
.end method

.method public static getCommand(Lorg/apache/commons/net/imap/IMAPCommand;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAPCommand;->getIMAPCommand()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/net/imap/IMAPCommand;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/commons/net/imap/IMAPCommand;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/apache/commons/net/imap/IMAPCommand;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/apache/commons/net/imap/IMAPCommand;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->$VALUES:[Lorg/apache/commons/net/imap/IMAPCommand;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/apache/commons/net/imap/IMAPCommand;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/apache/commons/net/imap/IMAPCommand;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getIMAPCommand()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAPCommand;->imapCommand:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method
