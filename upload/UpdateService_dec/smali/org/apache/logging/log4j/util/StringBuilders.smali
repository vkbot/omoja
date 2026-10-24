.class public final Lorg/apache/logging/log4j/util/StringBuilders;
.super Ljava/lang/Object;
.source "StringBuilders.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static appendDqValue(Ljava/lang/StringBuilder;Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "value"
        }
    .end annotation

    .line 38
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public static appendKeyDqValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "sb",
            "key",
            "value"
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public static appendKeyDqValue(Ljava/lang/StringBuilder;Ljava/util/Map$Entry;)Ljava/lang/StringBuilder;
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 49
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/logging/log4j/util/StringBuilders;->appendKeyDqValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static appendSpecificTypes(Ljava/lang/StringBuilder;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "stringBuilder"    # Ljava/lang/StringBuilder;
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "stringBuilder",
            "obj"
        }
    .end annotation

    .line 78
    if-eqz p1, :cond_b

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 80
    :cond_0
    instance-of v0, p1, Lorg/apache/logging/log4j/util/StringBuilderFormattable;

    if-eqz v0, :cond_1

    .line 81
    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/util/StringBuilderFormattable;

    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/util/StringBuilderFormattable;->formatTo(Ljava/lang/StringBuilder;)V

    goto/16 :goto_1

    .line 82
    :cond_1
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 83
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 84
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 85
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 86
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 87
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 88
    :cond_4
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_5

    .line 89
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 90
    :cond_5
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 91
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 92
    :cond_6
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_7

    .line 93
    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 94
    :cond_7
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_8

    .line 95
    move-object v0, p1

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 96
    :cond_8
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_9

    .line 97
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 98
    :cond_9
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_a

    .line 99
    move-object v0, p1

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 101
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 79
    :cond_b
    :goto_0
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public static appendValue(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 1
    .param p0, "stringBuilder"    # Ljava/lang/StringBuilder;
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "stringBuilder",
            "obj"
        }
    .end annotation

    .line 72
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/util/StringBuilders;->appendSpecificTypes(Ljava/lang/StringBuilder;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    :cond_0
    return-void
.end method

.method public static equals(Ljava/lang/CharSequence;IILjava/lang/CharSequence;II)Z
    .locals 4
    .param p0, "left"    # Ljava/lang/CharSequence;
    .param p1, "leftOffset"    # I
    .param p2, "leftLength"    # I
    .param p3, "right"    # Ljava/lang/CharSequence;
    .param p4, "rightOffset"    # I
    .param p5, "rightLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "left",
            "leftOffset",
            "leftLength",
            "right",
            "rightOffset",
            "rightLength"
        }
    .end annotation

    .line 120
    const/4 v0, 0x0

    if-ne p2, p5, :cond_2

    .line 121
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p5, :cond_1

    .line 122
    add-int v2, v1, p1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int v3, v1, p4

    invoke-interface {p3, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_0

    .line 123
    return v0

    .line 121
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 128
    :cond_2
    return v0
.end method

.method public static equalsIgnoreCase(Ljava/lang/CharSequence;IILjava/lang/CharSequence;II)Z
    .locals 4
    .param p0, "left"    # Ljava/lang/CharSequence;
    .param p1, "leftOffset"    # I
    .param p2, "leftLength"    # I
    .param p3, "right"    # Ljava/lang/CharSequence;
    .param p4, "rightOffset"    # I
    .param p5, "rightLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "left",
            "leftOffset",
            "leftLength",
            "right",
            "rightOffset",
            "rightLength"
        }
    .end annotation

    .line 145
    const/4 v0, 0x0

    if-ne p2, p5, :cond_2

    .line 146
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p5, :cond_1

    .line 147
    add-int v2, v1, p1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    add-int v3, v1, p4

    invoke-interface {p3, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    if-eq v2, v3, :cond_0

    .line 148
    return v0

    .line 146
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 153
    :cond_2
    return v0
.end method

.method private static escapeAndDecrement(Ljava/lang/StringBuilder;IC)I
    .locals 2
    .param p0, "toAppendTo"    # Ljava/lang/StringBuilder;
    .param p1, "lastPos"    # I
    .param p2, "c"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "toAppendTo",
            "lastPos",
            "c"
        }
    .end annotation

    .line 242
    add-int/lit8 v0, p1, -0x1

    .end local p1    # "lastPos":I
    .local v0, "lastPos":I
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 243
    add-int/lit8 p1, v0, -0x1

    .end local v0    # "lastPos":I
    .restart local p1    # "lastPos":I
    const/16 v1, 0x5c

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 244
    return p1
.end method

.method public static escapeJson(Ljava/lang/StringBuilder;I)V
    .locals 11
    .param p0, "toAppendTo"    # Ljava/lang/StringBuilder;
    .param p1, "start"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "toAppendTo",
            "start"
        }
    .end annotation

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "escapeCount":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v3, 0x22

    const/16 v4, 0xd

    const/16 v5, 0xc

    const/16 v6, 0x5c

    if-ge v1, v2, :cond_2

    .line 174
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 175
    .local v2, "c":C
    if-eq v2, v5, :cond_0

    if-eq v2, v4, :cond_0

    if-eq v2, v3, :cond_0

    if-eq v2, v6, :cond_0

    packed-switch v2, :pswitch_data_0

    .line 186
    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 187
    add-int/lit8 v0, v0, 0x5

    goto :goto_1

    .line 183
    :cond_0
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    .line 184
    nop

    .line 173
    .end local v2    # "c":C
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 193
    .local v1, "lastChar":I
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 194
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 196
    .local v2, "lastPos":I
    move v7, v1

    .local v7, "i":I
    :goto_2
    if-le v2, v7, :cond_7

    .line 197
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    .line 198
    .local v8, "c":C
    if-eq v8, v5, :cond_6

    if-eq v8, v4, :cond_5

    if-eq v8, v3, :cond_4

    if-eq v8, v6, :cond_4

    packed-switch v8, :pswitch_data_1

    .line 225
    invoke-static {v8}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 227
    add-int/lit8 v9, v2, -0x1

    .end local v2    # "lastPos":I
    .local v9, "lastPos":I
    and-int/lit8 v10, v8, 0xf

    invoke-static {v10}, Lorg/apache/logging/log4j/util/Chars;->getUpperCaseHex(I)C

    move-result v10

    invoke-virtual {p0, v2, v10}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 228
    add-int/lit8 v2, v9, -0x1

    .end local v9    # "lastPos":I
    .restart local v2    # "lastPos":I
    and-int/lit16 v10, v8, 0xf0

    shr-int/lit8 v10, v10, 0x4

    invoke-static {v10}, Lorg/apache/logging/log4j/util/Chars;->getUpperCaseHex(I)C

    move-result v10

    invoke-virtual {p0, v9, v10}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 229
    add-int/lit8 v9, v2, -0x1

    .end local v2    # "lastPos":I
    .restart local v9    # "lastPos":I
    const/16 v10, 0x30

    invoke-virtual {p0, v2, v10}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 230
    add-int/lit8 v2, v9, -0x1

    .end local v9    # "lastPos":I
    .restart local v2    # "lastPos":I
    invoke-virtual {p0, v9, v10}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 231
    add-int/lit8 v9, v2, -0x1

    .end local v2    # "lastPos":I
    .restart local v9    # "lastPos":I
    const/16 v10, 0x75

    invoke-virtual {p0, v2, v10}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 232
    add-int/lit8 v2, v9, -0x1

    .end local v9    # "lastPos":I
    .restart local v2    # "lastPos":I
    invoke-virtual {p0, v9, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_3

    .line 234
    :cond_3
    invoke-virtual {p0, v2, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 235
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 212
    :pswitch_1
    const/16 v9, 0x6e

    invoke-static {p0, v2, v9}, Lorg/apache/logging/log4j/util/StringBuilders;->escapeAndDecrement(Ljava/lang/StringBuilder;IC)I

    move-result v2

    .line 213
    goto :goto_3

    .line 204
    :pswitch_2
    const/16 v9, 0x74

    invoke-static {p0, v2, v9}, Lorg/apache/logging/log4j/util/StringBuilders;->escapeAndDecrement(Ljava/lang/StringBuilder;IC)I

    move-result v2

    .line 205
    goto :goto_3

    .line 200
    :pswitch_3
    const/16 v9, 0x62

    invoke-static {p0, v2, v9}, Lorg/apache/logging/log4j/util/StringBuilders;->escapeAndDecrement(Ljava/lang/StringBuilder;IC)I

    move-result v2

    .line 201
    goto :goto_3

    .line 221
    :cond_4
    invoke-static {p0, v2, v8}, Lorg/apache/logging/log4j/util/StringBuilders;->escapeAndDecrement(Ljava/lang/StringBuilder;IC)I

    move-result v2

    .line 222
    goto :goto_3

    .line 216
    :cond_5
    const/16 v9, 0x72

    invoke-static {p0, v2, v9}, Lorg/apache/logging/log4j/util/StringBuilders;->escapeAndDecrement(Ljava/lang/StringBuilder;IC)I

    move-result v2

    .line 217
    goto :goto_3

    .line 208
    :cond_6
    const/16 v9, 0x66

    invoke-static {p0, v2, v9}, Lorg/apache/logging/log4j/util/StringBuilders;->escapeAndDecrement(Ljava/lang/StringBuilder;IC)I

    move-result v2

    .line 209
    nop

    .line 196
    .end local v8    # "c":C
    :goto_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 239
    .end local v7    # "i":I
    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static escapeXml(Ljava/lang/StringBuilder;I)V
    .locals 16
    .param p0, "toAppendTo"    # Ljava/lang/StringBuilder;
    .param p1, "start"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "toAppendTo",
            "start"
        }
    .end annotation

    .line 248
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 249
    .local v1, "escapeCount":I
    move/from16 v2, p1

    .local v2, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v4, 0x27

    const/16 v5, 0x3e

    const/16 v6, 0x3c

    const/16 v7, 0x22

    const/16 v8, 0x26

    if-ge v2, v3, :cond_3

    .line 250
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 251
    .local v3, "c":C
    if-eq v3, v7, :cond_2

    if-eq v3, v6, :cond_1

    if-eq v3, v5, :cond_1

    if-eq v3, v8, :cond_0

    if-eq v3, v4, :cond_2

    goto :goto_1

    .line 253
    :cond_0
    add-int/lit8 v1, v1, 0x4

    .line 254
    goto :goto_1

    .line 257
    :cond_1
    add-int/lit8 v1, v1, 0x3

    .line 258
    goto :goto_1

    .line 261
    :cond_2
    add-int/lit8 v1, v1, 0x5

    .line 249
    .end local v3    # "c":C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 265
    .end local v2    # "i":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 266
    .local v2, "lastChar":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 267
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 269
    .local v3, "lastPos":I
    move v9, v2

    .local v9, "i":I
    :goto_2
    if-le v3, v9, :cond_9

    .line 270
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    .line 271
    .local v10, "c":C
    const/16 v11, 0x6f

    const/16 v12, 0x74

    const/16 v13, 0x3b

    if-eq v10, v7, :cond_8

    if-eq v10, v6, :cond_7

    if-eq v10, v5, :cond_6

    const/16 v12, 0x61

    const/16 v14, 0x70

    if-eq v10, v8, :cond_5

    if-eq v10, v4, :cond_4

    .line 308
    add-int/lit8 v11, v3, -0x1

    .end local v3    # "lastPos":I
    .local v11, "lastPos":I
    invoke-virtual {v0, v3, v10}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    move v3, v11

    goto/16 :goto_3

    .line 300
    .end local v11    # "lastPos":I
    .restart local v3    # "lastPos":I
    :cond_4
    add-int/lit8 v15, v3, -0x1

    .end local v3    # "lastPos":I
    .local v15, "lastPos":I
    invoke-virtual {v0, v3, v13}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 301
    add-int/lit8 v3, v15, -0x1

    .end local v15    # "lastPos":I
    .restart local v3    # "lastPos":I
    const/16 v13, 0x73

    invoke-virtual {v0, v15, v13}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 302
    add-int/lit8 v13, v3, -0x1

    .end local v3    # "lastPos":I
    .local v13, "lastPos":I
    invoke-virtual {v0, v3, v11}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 303
    add-int/lit8 v3, v13, -0x1

    .end local v13    # "lastPos":I
    .restart local v3    # "lastPos":I
    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 304
    add-int/lit8 v11, v3, -0x1

    .end local v3    # "lastPos":I
    .restart local v11    # "lastPos":I
    invoke-virtual {v0, v3, v12}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 305
    add-int/lit8 v3, v11, -0x1

    .end local v11    # "lastPos":I
    .restart local v3    # "lastPos":I
    invoke-virtual {v0, v11, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 306
    goto :goto_3

    .line 273
    :cond_5
    add-int/lit8 v11, v3, -0x1

    .end local v3    # "lastPos":I
    .restart local v11    # "lastPos":I
    invoke-virtual {v0, v3, v13}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 274
    add-int/lit8 v3, v11, -0x1

    .end local v11    # "lastPos":I
    .restart local v3    # "lastPos":I
    invoke-virtual {v0, v11, v14}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 275
    add-int/lit8 v11, v3, -0x1

    .end local v3    # "lastPos":I
    .restart local v11    # "lastPos":I
    const/16 v13, 0x6d

    invoke-virtual {v0, v3, v13}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 276
    add-int/lit8 v3, v11, -0x1

    .end local v11    # "lastPos":I
    .restart local v3    # "lastPos":I
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 277
    add-int/lit8 v11, v3, -0x1

    .end local v3    # "lastPos":I
    .restart local v11    # "lastPos":I
    invoke-virtual {v0, v3, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 278
    move v3, v11

    goto :goto_3

    .line 286
    .end local v11    # "lastPos":I
    .restart local v3    # "lastPos":I
    :cond_6
    add-int/lit8 v11, v3, -0x1

    .end local v3    # "lastPos":I
    .restart local v11    # "lastPos":I
    invoke-virtual {v0, v3, v13}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 287
    add-int/lit8 v3, v11, -0x1

    .end local v11    # "lastPos":I
    .restart local v3    # "lastPos":I
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 288
    add-int/lit8 v11, v3, -0x1

    .end local v3    # "lastPos":I
    .restart local v11    # "lastPos":I
    const/16 v12, 0x67

    invoke-virtual {v0, v3, v12}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 289
    add-int/lit8 v3, v11, -0x1

    .end local v11    # "lastPos":I
    .restart local v3    # "lastPos":I
    invoke-virtual {v0, v11, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 290
    goto :goto_3

    .line 280
    :cond_7
    add-int/lit8 v11, v3, -0x1

    .end local v3    # "lastPos":I
    .restart local v11    # "lastPos":I
    invoke-virtual {v0, v3, v13}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 281
    add-int/lit8 v3, v11, -0x1

    .end local v11    # "lastPos":I
    .restart local v3    # "lastPos":I
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 282
    add-int/lit8 v11, v3, -0x1

    .end local v3    # "lastPos":I
    .restart local v11    # "lastPos":I
    const/16 v12, 0x6c

    invoke-virtual {v0, v3, v12}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 283
    add-int/lit8 v3, v11, -0x1

    .end local v11    # "lastPos":I
    .restart local v3    # "lastPos":I
    invoke-virtual {v0, v11, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 284
    goto :goto_3

    .line 292
    :cond_8
    add-int/lit8 v14, v3, -0x1

    .end local v3    # "lastPos":I
    .local v14, "lastPos":I
    invoke-virtual {v0, v3, v13}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 293
    add-int/lit8 v3, v14, -0x1

    .end local v14    # "lastPos":I
    .restart local v3    # "lastPos":I
    invoke-virtual {v0, v14, v12}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 294
    add-int/lit8 v12, v3, -0x1

    .end local v3    # "lastPos":I
    .local v12, "lastPos":I
    invoke-virtual {v0, v3, v11}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 295
    add-int/lit8 v3, v12, -0x1

    .end local v12    # "lastPos":I
    .restart local v3    # "lastPos":I
    const/16 v11, 0x75

    invoke-virtual {v0, v12, v11}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 296
    add-int/lit8 v11, v3, -0x1

    .end local v3    # "lastPos":I
    .restart local v11    # "lastPos":I
    const/16 v12, 0x71

    invoke-virtual {v0, v3, v12}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 297
    add-int/lit8 v3, v11, -0x1

    .end local v11    # "lastPos":I
    .restart local v3    # "lastPos":I
    invoke-virtual {v0, v11, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 298
    nop

    .line 269
    .end local v10    # "c":C
    :goto_3
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_2

    .line 311
    .end local v9    # "i":I
    :cond_9
    return-void
.end method

.method public static trimToMaxSize(Ljava/lang/StringBuilder;I)V
    .locals 1
    .param p0, "stringBuilder"    # Ljava/lang/StringBuilder;
    .param p1, "maxSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "stringBuilder",
            "maxSize"
        }
    .end annotation

    .line 165
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->capacity()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 166
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 167
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->trimToSize()V

    .line 169
    :cond_0
    return-void
.end method
