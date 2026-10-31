.class public final Lokhttp3/internal/ws/WebSocketExtensions$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/WebSocketExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lokhttp3/internal/ws/WebSocketExtensions$Companion;",
        "",
        "()V",
        "HEADER_WEB_SOCKET_EXTENSION",
        "",
        "parse",
        "Lokhttp3/internal/ws/WebSocketExtensions;",
        "responseHeaders",
        "Lokhttp3/Headers;",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketExtensions$Companion;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final parse(Lokhttp3/Headers;)Lokhttp3/internal/ws/WebSocketExtensions;
    .registers 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v3, 0x0

    .line 11
    move-object v7, v3

    .line 12
    move-object v9, v7

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v10, 0x0

    .line 17
    const/4 v11, 0x0

    .line 18
    :goto_11
    if-ge v4, v1, :cond_dc

    .line 19
    .line 20
    invoke-virtual {v0, v4}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    const-string v12, "Sec-WebSocket-Extensions"

    .line 25
    .line 26
    invoke-static {v5, v12}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-nez v5, :cond_21

    .line 31
    .line 32
    goto/16 :goto_d8

    .line 33
    .line 34
    :cond_21
    invoke-virtual {v0, v4}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v12

    .line 38
    const/4 v14, 0x0

    .line 39
    :goto_26
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-ge v14, v5, :cond_d8

    .line 44
    .line 45
    const/16 v16, 0x4

    .line 46
    .line 47
    const/16 v17, 0x0

    .line 48
    .line 49
    const/16 v13, 0x2c

    .line 50
    .line 51
    const/4 v15, 0x0

    .line 52
    invoke-static/range {v12 .. v17}, Lokhttp3/internal/Util;->delimiterOffset$default(Ljava/lang/String;CIIILjava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    const/16 v13, 0x3b

    .line 57
    .line 58
    invoke-static {v12, v13, v14, v5}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    .line 59
    .line 60
    .line 61
    move-result v15

    .line 62
    invoke-static {v12, v14, v15}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v14

    .line 66
    const/16 v16, 0x1

    .line 67
    .line 68
    add-int/lit8 v15, v15, 0x1

    .line 69
    .line 70
    const-string v2, "permessage-deflate"

    .line 71
    .line 72
    invoke-static {v14, v2}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_d3

    .line 77
    .line 78
    if-eqz v6, :cond_51

    .line 79
    .line 80
    move/from16 v11, v16

    .line 81
    .line 82
    :cond_51
    move v14, v15

    .line 83
    :goto_52
    if-ge v14, v5, :cond_cf

    .line 84
    .line 85
    invoke-static {v12, v13, v14, v5}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    const/16 v6, 0x3d

    .line 90
    .line 91
    invoke-static {v12, v6, v14, v2}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    invoke-static {v12, v14, v6}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v14

    .line 99
    if-ge v6, v2, :cond_6f

    .line 100
    .line 101
    add-int/lit8 v6, v6, 0x1

    .line 102
    .line 103
    invoke-static {v12, v6, v2}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-static {v6}, Lkotlin/text/StringsKt;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    goto :goto_70

    .line 112
    :cond_6f
    move-object v6, v3

    .line 113
    :goto_70
    add-int/lit8 v2, v2, 0x1

    .line 114
    .line 115
    const-string v15, "client_max_window_bits"

    .line 116
    .line 117
    invoke-static {v14, v15}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v15

    .line 121
    if-eqz v15, :cond_8f

    .line 122
    .line 123
    if-eqz v7, :cond_7e

    .line 124
    .line 125
    move/from16 v11, v16

    .line 126
    .line 127
    :cond_7e
    if-eqz v6, :cond_86

    .line 128
    .line 129
    invoke-static {v6}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    move-object v7, v6

    .line 134
    goto :goto_87

    .line 135
    :cond_86
    move-object v7, v3

    .line 136
    :goto_87
    if-nez v7, :cond_8d

    .line 137
    .line 138
    :cond_89
    :goto_89
    move v14, v2

    .line 139
    move/from16 v11, v16

    .line 140
    .line 141
    goto :goto_52

    .line 142
    :cond_8d
    move v14, v2

    .line 143
    goto :goto_52

    .line 144
    :cond_8f
    const-string v15, "client_no_context_takeover"

    .line 145
    .line 146
    invoke-static {v14, v15}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;Ljava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    move-result v15

    .line 150
    if-eqz v15, :cond_a3

    .line 151
    .line 152
    if-eqz v8, :cond_9b

    .line 153
    .line 154
    move/from16 v11, v16

    .line 155
    .line 156
    :cond_9b
    if-eqz v6, :cond_9f

    .line 157
    .line 158
    move/from16 v11, v16

    .line 159
    .line 160
    :cond_9f
    move v14, v2

    .line 161
    move/from16 v8, v16

    .line 162
    .line 163
    goto :goto_52

    .line 164
    :cond_a3
    const-string v15, "server_max_window_bits"

    .line 165
    .line 166
    invoke-static {v14, v15}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;Ljava/lang/String;)Z

    .line 167
    .line 168
    .line 169
    move-result v15

    .line 170
    if-eqz v15, :cond_bb

    .line 171
    .line 172
    if-eqz v9, :cond_af

    .line 173
    .line 174
    move/from16 v11, v16

    .line 175
    .line 176
    :cond_af
    if-eqz v6, :cond_b7

    .line 177
    .line 178
    invoke-static {v6}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    move-object v9, v6

    .line 183
    goto :goto_b8

    .line 184
    :cond_b7
    move-object v9, v3

    .line 185
    :goto_b8
    if-nez v9, :cond_8d

    .line 186
    .line 187
    goto :goto_89

    .line 188
    :cond_bb
    const-string v15, "server_no_context_takeover"

    .line 189
    .line 190
    invoke-static {v14, v15}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;Ljava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    move-result v14

    .line 194
    if-eqz v14, :cond_89

    .line 195
    .line 196
    if-eqz v10, :cond_c7

    .line 197
    .line 198
    move/from16 v11, v16

    .line 199
    .line 200
    :cond_c7
    if-eqz v6, :cond_cb

    .line 201
    .line 202
    move/from16 v11, v16

    .line 203
    .line 204
    :cond_cb
    move v14, v2

    .line 205
    move/from16 v10, v16

    .line 206
    .line 207
    goto :goto_52

    .line 208
    :cond_cf
    move/from16 v6, v16

    .line 209
    .line 210
    goto/16 :goto_26

    .line 211
    .line 212
    :cond_d3
    move v14, v15

    .line 213
    move/from16 v11, v16

    .line 214
    .line 215
    goto/16 :goto_26

    .line 216
    .line 217
    :cond_d8
    :goto_d8
    add-int/lit8 v4, v4, 0x1

    .line 218
    .line 219
    goto/16 :goto_11

    .line 220
    .line 221
    :cond_dc
    new-instance v5, Lokhttp3/internal/ws/WebSocketExtensions;

    .line 222
    .line 223
    invoke-direct/range {v5 .. v11}, Lokhttp3/internal/ws/WebSocketExtensions;-><init>(ZLjava/lang/Integer;ZLjava/lang/Integer;ZZ)V

    .line 224
    .line 225
    .line 226
    return-object v5
.end method
