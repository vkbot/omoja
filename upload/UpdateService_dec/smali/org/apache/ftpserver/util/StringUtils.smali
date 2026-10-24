.class public final Lorg/apache/ftpserver/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static formatHtml(Ljava/lang/String;ZZZ)Ljava/lang/String;
    .locals 5
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "bReplaceNl"    # Z
    .param p2, "bReplaceTag"    # Z
    .param p3, "bReplaceQuote"    # Z

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 173
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_b

    .line 174
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 175
    .local v3, "c":C
    const/16 v4, 0xa

    if-eq v3, v4, :cond_8

    const/16 v4, 0xd

    if-eq v3, v4, :cond_7

    const/16 v4, 0x22

    if-eq v3, v4, :cond_5

    const/16 v4, 0x26

    if-eq v3, v4, :cond_4

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_2

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_0

    .line 224
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 195
    :cond_0
    if-eqz p2, :cond_1

    .line 196
    const-string v4, "&gt;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 198
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    goto :goto_1

    .line 186
    :cond_2
    if-eqz p2, :cond_3

    .line 187
    const-string v4, "&lt;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 189
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    goto :goto_1

    .line 220
    :cond_4
    const-string v4, "&amp;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    goto :goto_1

    .line 177
    :cond_5
    if-eqz p3, :cond_6

    .line 178
    const-string v4, "&quot;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 180
    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    goto :goto_1

    .line 217
    :cond_7
    goto :goto_1

    .line 204
    :cond_8
    if-eqz p1, :cond_a

    .line 205
    if-eqz p2, :cond_9

    .line 206
    const-string v4, "&lt;br&gt;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 208
    :cond_9
    const-string v4, "<br>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 211
    :cond_a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    nop

    .line 173
    .end local v3    # "c":C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    .end local v2    # "i":I
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static pad(Ljava/lang/String;CZI)Ljava/lang/String;
    .locals 5
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "padChar"    # C
    .param p2, "rightPad"    # Z
    .param p3, "totalLength"    # I

    .line 237
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 238
    .local v0, "srcLength":I
    if-lt v0, p3, :cond_0

    .line 239
    return-object p0

    .line 242
    :cond_0
    sub-int v1, p3, v0

    .line 243
    .local v1, "padLength":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 244
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 245
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 248
    .end local v3    # "i":I
    :cond_1
    if-eqz p2, :cond_2

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 251
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static replaceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "oldStr"    # Ljava/lang/String;
    .param p2, "newStr"    # Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 47
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 48
    .local v1, "sind":I
    const/4 v2, 0x0

    .line 49
    .local v2, "cind":I
    :goto_0
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    move v2, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 50
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v1, v2, v3

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static replaceString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 10
    .param p0, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 122
    .local p1, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 123
    .local v0, "startIndex":I
    const/16 v1, 0x7b

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 124
    .local v2, "openIndex":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 125
    return-object p0

    .line 128
    :cond_0
    const/16 v4, 0x7d

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 129
    .local v5, "closeIndex":I
    if-eq v5, v3, :cond_6

    if-le v2, v5, :cond_1

    goto :goto_3

    .line 133
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :goto_0
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 137
    .local v7, "key":Ljava/lang/String;
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 138
    .local v8, "val":Ljava/lang/Object;
    if-eqz v8, :cond_2

    .line 139
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    :cond_2
    add-int/lit8 v0, v5, 0x1

    .line 143
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 144
    if-ne v2, v3, :cond_3

    .line 145
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    goto :goto_2

    .line 149
    :cond_3
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 150
    if-eq v5, v3, :cond_5

    if-le v2, v5, :cond_4

    goto :goto_1

    .line 154
    :cond_4
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "val":Ljava/lang/Object;
    goto :goto_0

    .line 151
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v8    # "val":Ljava/lang/Object;
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    nop

    .line 156
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "val":Ljava/lang/Object;
    :goto_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 130
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    :goto_3
    return-object p0
.end method

.method public static replaceString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 10
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "startIndex":I
    const/16 v1, 0x7b

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 74
    .local v2, "openIndex":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 75
    return-object p0

    .line 78
    :cond_0
    const/16 v4, 0x7d

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 79
    .local v5, "closeIndex":I
    if-eq v5, v3, :cond_5

    if-le v2, v5, :cond_1

    goto :goto_3

    .line 83
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :goto_0
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 87
    .local v7, "intStr":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 88
    .local v8, "index":I
    aget-object v9, p1, v8

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    add-int/lit8 v0, v5, 0x1

    .line 91
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 92
    if-ne v2, v3, :cond_2

    .line 93
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    goto :goto_2

    .line 97
    :cond_2
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 98
    if-eq v5, v3, :cond_4

    if-le v2, v5, :cond_3

    goto :goto_1

    .line 102
    :cond_3
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .end local v7    # "intStr":Ljava/lang/String;
    .end local v8    # "index":I
    goto :goto_0

    .line 99
    .restart local v7    # "intStr":Ljava/lang/String;
    .restart local v8    # "index":I
    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    nop

    .line 104
    .end local v7    # "intStr":Ljava/lang/String;
    .end local v8    # "index":I
    :goto_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 80
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    :goto_3
    return-object p0
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .locals 6
    .param p0, "hexString"    # Ljava/lang/String;

    .line 274
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    .line 275
    .local v0, "arrLength":I
    new-array v1, v0, [B

    .line 276
    .local v1, "buff":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 277
    shl-int/lit8 v3, v2, 0x1

    .line 278
    .local v3, "index":I
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 279
    .local v4, "digit":Ljava/lang/String;
    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 276
    .end local v3    # "index":I
    .end local v4    # "digit":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 281
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 5
    .param p0, "res"    # [B

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 260
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 261
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, "digit":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 263
    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 265
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .end local v3    # "digit":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
