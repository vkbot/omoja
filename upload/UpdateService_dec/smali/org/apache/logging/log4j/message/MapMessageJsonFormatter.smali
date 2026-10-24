.class final enum Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;
.super Ljava/lang/Enum;
.source "MapMessageJsonFormatter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;

.field private static final COLON:C = ':'

.field private static final COMMA:C = ','

.field private static final DQUOTE:C = '\"'

.field private static final LBRACE:C = '['

.field private static final LCURLY:C = '{'

.field public static final MAX_DEPTH:I

.field private static final RBRACE:C = ']'

.field private static final RCURLY:C = '}'


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;

    sput-object v0, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->$VALUES:[Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;

    .line 50
    invoke-static {}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->readMaxDepth()I

    move-result v0

    sput v0, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->MAX_DEPTH:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static format(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "object"
        }
    .end annotation

    .line 78
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->format(Ljava/lang/StringBuilder;Ljava/lang/Object;I)V

    .line 79
    return-void
.end method

.method private static format(Ljava/lang/StringBuilder;Ljava/lang/Object;I)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "sb",
            "object",
            "depth"
        }
    .end annotation

    .line 86
    sget v0, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->MAX_DEPTH:I

    if-ge p2, v0, :cond_11

    .line 91
    if-nez p1, :cond_0

    .line 92
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 96
    :cond_0
    instance-of v0, p1, Lorg/apache/logging/log4j/util/IndexedStringMap;

    if-eqz v0, :cond_1

    .line 97
    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/util/IndexedStringMap;

    .line 98
    .local v0, "map":Lorg/apache/logging/log4j/util/IndexedStringMap;
    invoke-static {p0, v0, p2}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->formatIndexedStringMap(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/util/IndexedStringMap;I)V

    .line 99
    .end local v0    # "map":Lorg/apache/logging/log4j/util/IndexedStringMap;
    goto/16 :goto_0

    :cond_1
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 101
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    .line 102
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-static {p0, v0, p2}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->formatMap(Ljava/lang/StringBuilder;Ljava/util/Map;I)V

    .line 103
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto/16 :goto_0

    .line 106
    :cond_2
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 108
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    .line 109
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {p0, v0, p2}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->formatList(Ljava/lang/StringBuilder;Ljava/util/List;I)V

    .line 110
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto/16 :goto_0

    :cond_3
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_4

    .line 112
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 113
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-static {p0, v0, p2}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->formatCollection(Ljava/lang/StringBuilder;Ljava/util/Collection;I)V

    .line 114
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    goto/16 :goto_0

    .line 117
    :cond_4
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_5

    .line 118
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    .line 119
    .local v0, "number":Ljava/lang/Number;
    invoke-static {p0, v0}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->formatNumber(Ljava/lang/StringBuilder;Ljava/lang/Number;)V

    .line 120
    .end local v0    # "number":Ljava/lang/Number;
    goto/16 :goto_0

    :cond_5
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 121
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 122
    .local v0, "booleanValue":Z
    invoke-static {p0, v0}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->formatBoolean(Ljava/lang/StringBuilder;Z)V

    .line 123
    .end local v0    # "booleanValue":Z
    goto/16 :goto_0

    .line 126
    :cond_6
    instance-of v0, p1, Lorg/apache/logging/log4j/util/StringBuilderFormattable;

    if-eqz v0, :cond_7

    .line 127
    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/util/StringBuilderFormattable;

    .line 128
    .local v0, "formattable":Lorg/apache/logging/log4j/util/StringBuilderFormattable;
    invoke-static {p0, v0}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->formatFormattable(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/util/StringBuilderFormattable;)V

    .line 129
    .end local v0    # "formattable":Lorg/apache/logging/log4j/util/StringBuilderFormattable;
    goto/16 :goto_0

    .line 132
    :cond_7
    instance-of v0, p1, [C

    if-eqz v0, :cond_8

    .line 133
    move-object v0, p1

    check-cast v0, [C

    check-cast v0, [C

    .line 134
    .local v0, "charValues":[C
    invoke-static {p0, v0}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->formatCharArray(Ljava/lang/StringBuilder;[C)V

    .line 135
    .end local v0    # "charValues":[C
    goto/16 :goto_0

    :cond_8
    instance-of v0, p1, [Z

    if-eqz v0, :cond_9

    .line 136
    move-object v0, p1

    check-cast v0, [Z

    check-cast v0, [Z

    .line 137
    .local v0, "booleanValues":[Z
    invoke-static {p0, v0}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->formatBooleanArray(Ljava/lang/StringBuilder;[Z)V

    .line 138
    .end local v0    # "booleanValues":[Z
    goto :goto_0

    :cond_9
    instance-of v0, p1, [B

    if-eqz v0, :cond_a

    .line 139
    move-object v0, p1

    check-cast v0, [B

    check-cast v0, [B

    .line 140
    .local v0, "byteValues":[B
    invoke-static {p0, v0}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->formatByteArray(Ljava/lang/StringBuilder;[B)V

    .line 141
    .end local v0    # "byteValues":[B
    goto :goto_0

    :cond_a
    instance-of v0, p1, [S

    if-eqz v0, :cond_b

    .line 142
    move-object v0, p1

    check-cast v0, [S

    check-cast v0, [S

    .line 143
    .local v0, "shortValues":[S
    invoke-static {p0, v0}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->formatShortArray(Ljava/lang/StringBuilder;[S)V

    .line 144
    .end local v0    # "shortValues":[S
    goto :goto_0

    :cond_b
    instance-of v0, p1, [I

    if-eqz v0, :cond_c

    .line 145
    move-object v0, p1

    check-cast v0, [I

    check-cast v0, [I

    .line 146
    .local v0, "intValues":[I
    invoke-static {p0, v0}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->formatIntArray(Ljava/lang/StringBuilder;[I)V

    .line 147
    .end local v0    # "intValues":[I
    goto :goto_0

    :cond_c
    instance-of v0, p1, [J

    if-eqz v0, :cond_d

    .line 148
    move-object v0, p1

    check-cast v0, [J

    check-cast v0, [J

    .line 149
    .local v0, "longValues":[J
    invoke-static {p0, v0}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->formatLongArray(Ljava/lang/StringBuilder;[J)V

    .line 150
    .end local v0    # "longValues":[J
    goto :goto_0

    :cond_d
    instance-of v0, p1, [F

    if-eqz v0, :cond_e

    .line 151
    move-object v0, p1

    check-cast v0, [F

    check-cast v0, [F

    .line 152
    .local v0, "floatValues":[F
    invoke-static {p0, v0}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->formatFloatArray(Ljava/lang/StringBuilder;[F)V

    .line 153
    .end local v0    # "floatValues":[F
    goto :goto_0

    :cond_e
    instance-of v0, p1, [D

    if-eqz v0, :cond_f

    .line 154
    move-object v0, p1

    check-cast v0, [D

    check-cast v0, [D

    .line 155
    .local v0, "doubleValues":[D
    invoke-static {p0, v0}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->formatDoubleArray(Ljava/lang/StringBuilder;[D)V

    .line 156
    .end local v0    # "doubleValues":[D
    goto :goto_0

    :cond_f
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_10

    .line 157
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 158
    .local v0, "objectValues":[Ljava/lang/Object;
    invoke-static {p0, v0, p2}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->formatObjectArray(Ljava/lang/StringBuilder;[Ljava/lang/Object;I)V

    .line 159
    .end local v0    # "objectValues":[Ljava/lang/Object;
    goto :goto_0

    .line 163
    :cond_10
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->formatString(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 166
    :goto_0
    return-void

    .line 87
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxDepth has been exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static formatBoolean(Ljava/lang/StringBuilder;Z)V
    .locals 0
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "booleanValue"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "booleanValue"
        }
    .end annotation

    .line 279
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 280
    return-void
.end method

.method private static formatBooleanArray(Ljava/lang/StringBuilder;[Z)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "items"    # [Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "items"
        }
    .end annotation

    .line 309
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 310
    const/4 v0, 0x0

    .local v0, "itemIndex":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 311
    if-lez v0, :cond_0

    .line 312
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    :cond_0
    aget-boolean v1, p1, v0

    .line 315
    .local v1, "item":Z
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 310
    .end local v1    # "item":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    .end local v0    # "itemIndex":I
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 318
    return-void
.end method

.method private static formatByteArray(Ljava/lang/StringBuilder;[B)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "items"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "items"
        }
    .end annotation

    .line 321
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 322
    const/4 v0, 0x0

    .local v0, "itemIndex":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 323
    if-lez v0, :cond_0

    .line 324
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 326
    :cond_0
    aget-byte v1, p1, v0

    .line 327
    .local v1, "item":B
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    .end local v1    # "item":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    .end local v0    # "itemIndex":I
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 330
    return-void
.end method

.method private static formatCharArray(Ljava/lang/StringBuilder;[C)V
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "items"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "items"
        }
    .end annotation

    .line 293
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    const/4 v0, 0x0

    .local v0, "itemIndex":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 295
    if-lez v0, :cond_0

    .line 296
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 298
    :cond_0
    aget-char v1, p1, v0

    .line 299
    .local v1, "item":C
    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 301
    .local v3, "startIndex":I
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    invoke-static {p0, v3}, Lorg/apache/logging/log4j/util/StringBuilders;->escapeJson(Ljava/lang/StringBuilder;I)V

    .line 303
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    .end local v1    # "item":C
    .end local v3    # "startIndex":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    .end local v0    # "itemIndex":I
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    return-void
.end method

.method private static formatCollection(Ljava/lang/StringBuilder;Ljava/util/Collection;I)V
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "sb",
            "items",
            "depth"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 237
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    add-int/lit8 v0, p2, 0x1

    .line 239
    .local v0, "nextDepth":I
    const/4 v1, 0x1

    new-array v2, v1, [Z

    const/4 v3, 0x0

    aput-boolean v1, v2, v3

    move-object v1, v2

    .line 240
    .local v1, "firstItem":[Z
    new-instance v2, Lorg/apache/logging/log4j/message/-$$Lambda$MapMessageJsonFormatter$IA9JPaq3to0x0x2Rnd4rd1W1DyU;

    invoke-direct {v2, v1, p0, v0}, Lorg/apache/logging/log4j/message/-$$Lambda$MapMessageJsonFormatter$IA9JPaq3to0x0x2Rnd4rd1W1DyU;-><init>([ZLjava/lang/StringBuilder;I)V

    invoke-interface {p1, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 248
    const/16 v2, 0x5d

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    return-void
.end method

.method private static formatDoubleArray(Ljava/lang/StringBuilder;[D)V
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "items"    # [D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "items"
        }
    .end annotation

    .line 383
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    const/4 v0, 0x0

    .local v0, "itemIndex":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 385
    if-lez v0, :cond_0

    .line 386
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 388
    :cond_0
    aget-wide v1, p1, v0

    .line 389
    .local v1, "item":D
    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 384
    .end local v1    # "item":D
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    .end local v0    # "itemIndex":I
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 392
    return-void
.end method

.method private static formatFloatArray(Ljava/lang/StringBuilder;[F)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "items"    # [F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "items"
        }
    .end annotation

    .line 369
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 370
    const/4 v0, 0x0

    .local v0, "itemIndex":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 371
    if-lez v0, :cond_0

    .line 372
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 374
    :cond_0
    aget v1, p1, v0

    .line 375
    .local v1, "item":F
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 370
    .end local v1    # "item":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 377
    .end local v0    # "itemIndex":I
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 378
    return-void
.end method

.method private static formatFormattable(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/util/StringBuilderFormattable;)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "formattable"    # Lorg/apache/logging/log4j/util/StringBuilderFormattable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "formattable"
        }
    .end annotation

    .line 285
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 287
    .local v1, "startIndex":I
    invoke-interface {p1, p0}, Lorg/apache/logging/log4j/util/StringBuilderFormattable;->formatTo(Ljava/lang/StringBuilder;)V

    .line 288
    invoke-static {p0, v1}, Lorg/apache/logging/log4j/util/StringBuilders;->escapeJson(Ljava/lang/StringBuilder;I)V

    .line 289
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    return-void
.end method

.method private static formatIndexedStringMap(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/util/IndexedStringMap;I)V
    .locals 6
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "map"    # Lorg/apache/logging/log4j/util/IndexedStringMap;
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "sb",
            "map",
            "depth"
        }
    .end annotation

    .line 172
    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    add-int/lit8 v0, p2, 0x1

    .line 174
    .local v0, "nextDepth":I
    const/4 v1, 0x0

    .local v1, "entryIndex":I
    :goto_0
    invoke-interface {p1}, Lorg/apache/logging/log4j/util/IndexedStringMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 175
    invoke-interface {p1, v1}, Lorg/apache/logging/log4j/util/IndexedStringMap;->getKeyAt(I)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p1, v1}, Lorg/apache/logging/log4j/util/IndexedStringMap;->getValueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 177
    .local v3, "value":Ljava/lang/Object;
    if-lez v1, :cond_0

    .line 178
    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    :cond_0
    const/16 v4, 0x22

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 182
    .local v5, "keyStartIndex":I
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-static {p0, v5}, Lorg/apache/logging/log4j/util/StringBuilders;->escapeJson(Ljava/lang/StringBuilder;I)V

    .line 184
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    invoke-static {p0, v3, v0}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->format(Ljava/lang/StringBuilder;Ljava/lang/Object;I)V

    .line 174
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    .end local v5    # "keyStartIndex":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    .end local v1    # "entryIndex":I
    :cond_1
    const/16 v1, 0x7d

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    return-void
.end method

.method private static formatIntArray(Ljava/lang/StringBuilder;[I)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "items"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "items"
        }
    .end annotation

    .line 345
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 346
    const/4 v0, 0x0

    .local v0, "itemIndex":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 347
    if-lez v0, :cond_0

    .line 348
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    :cond_0
    aget v1, p1, v0

    .line 351
    .local v1, "item":I
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 346
    .end local v1    # "item":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    .end local v0    # "itemIndex":I
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 354
    return-void
.end method

.method private static formatList(Ljava/lang/StringBuilder;Ljava/util/List;I)V
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "sb",
            "items",
            "depth"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 221
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    add-int/lit8 v0, p2, 0x1

    .line 223
    .local v0, "nextDepth":I
    const/4 v1, 0x0

    .local v1, "itemIndex":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 224
    if-lez v1, :cond_0

    .line 225
    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 228
    .local v2, "item":Ljava/lang/Object;
    invoke-static {p0, v2, v0}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->format(Ljava/lang/StringBuilder;Ljava/lang/Object;I)V

    .line 223
    .end local v2    # "item":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    .end local v1    # "itemIndex":I
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    return-void
.end method

.method private static formatLongArray(Ljava/lang/StringBuilder;[J)V
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "items"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "items"
        }
    .end annotation

    .line 357
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 358
    const/4 v0, 0x0

    .local v0, "itemIndex":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 359
    if-lez v0, :cond_0

    .line 360
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    :cond_0
    aget-wide v1, p1, v0

    .line 363
    .local v1, "item":J
    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 358
    .end local v1    # "item":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 365
    .end local v0    # "itemIndex":I
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 366
    return-void
.end method

.method private static formatMap(Ljava/lang/StringBuilder;Ljava/util/Map;I)V
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "sb",
            "map",
            "depth"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 194
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    add-int/lit8 v0, p2, 0x1

    .line 196
    .local v0, "nextDepth":I
    const/4 v1, 0x1

    new-array v2, v1, [Z

    const/4 v3, 0x0

    aput-boolean v1, v2, v3

    move-object v1, v2

    .line 197
    .local v1, "firstEntry":[Z
    new-instance v2, Lorg/apache/logging/log4j/message/-$$Lambda$MapMessageJsonFormatter$Sgl7ZO0ujwSAXdBIk8ANYMaB1jY;

    invoke-direct {v2, v1, p0, v0}, Lorg/apache/logging/log4j/message/-$$Lambda$MapMessageJsonFormatter$Sgl7ZO0ujwSAXdBIk8ANYMaB1jY;-><init>([ZLjava/lang/StringBuilder;I)V

    invoke-interface {p1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 214
    const/16 v2, 0x7d

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    return-void
.end method

.method private static formatNumber(Ljava/lang/StringBuilder;Ljava/lang/Number;)V
    .locals 6
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "number"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "number"
        }
    .end annotation

    .line 252
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    .line 253
    move-object v0, p1

    check-cast v0, Ljava/math/BigDecimal;

    .line 254
    .local v0, "decimalNumber":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .end local v0    # "decimalNumber":Ljava/math/BigDecimal;
    goto :goto_1

    :cond_0
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 256
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 257
    .local v0, "doubleNumber":D
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 258
    .end local v0    # "doubleNumber":D
    goto :goto_1

    :cond_1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 259
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 260
    .local v0, "floatNumber":F
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 261
    .end local v0    # "floatNumber":F
    goto :goto_1

    :cond_2
    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_5

    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_5

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_5

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 268
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 269
    .local v0, "longNumber":J
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 270
    .local v2, "doubleValue":D
    long-to-double v4, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-nez v4, :cond_4

    .line 271
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 273
    :cond_4
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 265
    .end local v0    # "longNumber":J
    .end local v2    # "doubleValue":D
    :cond_5
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 266
    .restart local v0    # "longNumber":J
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 267
    .end local v0    # "longNumber":J
    nop

    .line 276
    :goto_1
    return-void
.end method

.method private static formatObjectArray(Ljava/lang/StringBuilder;[Ljava/lang/Object;I)V
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "items"    # [Ljava/lang/Object;
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "sb",
            "items",
            "depth"
        }
    .end annotation

    .line 398
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 399
    add-int/lit8 v0, p2, 0x1

    .line 400
    .local v0, "nextDepth":I
    const/4 v1, 0x0

    .local v1, "itemIndex":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 401
    if-lez v1, :cond_0

    .line 402
    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 404
    :cond_0
    aget-object v2, p1, v1

    .line 405
    .local v2, "item":Ljava/lang/Object;
    invoke-static {p0, v2, v0}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->format(Ljava/lang/StringBuilder;Ljava/lang/Object;I)V

    .line 400
    .end local v2    # "item":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 407
    .end local v1    # "itemIndex":I
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 408
    return-void
.end method

.method private static formatShortArray(Ljava/lang/StringBuilder;[S)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "items"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "items"
        }
    .end annotation

    .line 333
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 334
    const/4 v0, 0x0

    .local v0, "itemIndex":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 335
    if-lez v0, :cond_0

    .line 336
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    :cond_0
    aget-short v1, p1, v0

    .line 339
    .local v1, "item":S
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    .end local v1    # "item":S
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    .end local v0    # "itemIndex":I
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    return-void
.end method

.method private static formatString(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 3
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

    .line 411
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 413
    .local v1, "startIndex":I
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 414
    .local v2, "valueString":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-static {p0, v1}, Lorg/apache/logging/log4j/util/StringBuilders;->escapeJson(Ljava/lang/StringBuilder;I)V

    .line 416
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 417
    return-void
.end method

.method static synthetic lambda$formatCollection$1([ZLjava/lang/StringBuilder;ILjava/lang/Object;)V
    .locals 2
    .param p0, "firstItem"    # [Z
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "nextDepth"    # I
    .param p3, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "firstItem",
            "sb",
            "nextDepth",
            "item"
        }
    .end annotation

    .line 241
    const/4 v0, 0x0

    aget-boolean v1, p0, v0

    if-eqz v1, :cond_0

    .line 242
    aput-boolean v0, p0, v0

    goto :goto_0

    .line 244
    :cond_0
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 246
    :goto_0
    invoke-static {p1, p3, p2}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->format(Ljava/lang/StringBuilder;Ljava/lang/Object;I)V

    .line 247
    return-void
.end method

.method static synthetic lambda$formatMap$0([ZLjava/lang/StringBuilder;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "firstEntry"    # [Z
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "nextDepth"    # I
    .param p3, "key"    # Ljava/lang/Object;
    .param p4, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "firstEntry",
            "sb",
            "nextDepth",
            "key",
            "value"
        }
    .end annotation

    .line 198
    if-eqz p3, :cond_1

    .line 201
    const/4 v0, 0x0

    aget-boolean v1, p0, v0

    if-eqz v1, :cond_0

    .line 202
    aput-boolean v0, p0, v0

    goto :goto_0

    .line 204
    :cond_0
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    :goto_0
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "keyString":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 209
    .local v2, "keyStartIndex":I
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-static {p1, v2}, Lorg/apache/logging/log4j/util/StringBuilders;->escapeJson(Ljava/lang/StringBuilder;I)V

    .line 211
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    invoke-static {p1, p4, p2}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->format(Ljava/lang/StringBuilder;Ljava/lang/Object;I)V

    .line 213
    return-void

    .line 199
    .end local v1    # "keyString":Ljava/lang/String;
    .end local v2    # "keyStartIndex":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null keys are not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readMaxDepth()I
    .locals 4

    .line 68
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    .line 69
    const-string v1, "log4j2.mapMessage.jsonFormatter.maxDepth"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getIntegerProperty(Ljava/lang/String;I)I

    move-result v0

    .line 70
    .local v0, "maxDepth":I
    if-ltz v0, :cond_0

    .line 74
    return v0

    .line 71
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "was expecting a positive maxDepth, found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 48
    const-class v0, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;
    .locals 1

    .line 48
    sget-object v0, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->$VALUES:[Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;

    return-object v0
.end method
