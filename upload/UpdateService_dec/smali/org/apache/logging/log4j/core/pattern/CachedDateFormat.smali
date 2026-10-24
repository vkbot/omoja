.class final Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;
.super Ljava/text/DateFormat;
.source "CachedDateFormat.java"


# static fields
.field private static final BUF_SIZE:I = 0x32

.field private static final DEFAULT_VALIDITY:I = 0x3e8

.field private static final DIGITS:Ljava/lang/String; = "0123456789"

.field private static final MAGIC1:I = 0x28e

.field private static final MAGIC2:I = 0x3db

.field private static final MAGICSTRING1:Ljava/lang/String; = "654"

.field private static final MAGICSTRING2:Ljava/lang/String; = "987"

.field public static final NO_MILLISECONDS:I = -0x2

.field private static final SLOTS:J = 0x3e8L

.field private static final THREE_DIGITS:I = 0x64

.field private static final TWO_DIGITS:I = 0xa

.field public static final UNRECOGNIZED_MILLISECONDS:I = -0x1

.field private static final ZERO_STRING:Ljava/lang/String; = "000"

.field private static final serialVersionUID:J = -0x1166ab569370844cL


# instance fields
.field private final cache:Ljava/lang/StringBuffer;

.field private final expiration:I

.field private final formatter:Ljava/text/DateFormat;

.field private millisecondStart:I

.field private previousTime:J

.field private slotBegin:J

.field private final tmpDate:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/text/DateFormat;I)V
    .locals 3
    .param p1, "dateFormat"    # Ljava/text/DateFormat;
    .param p2, "expiration"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "dateFormat",
            "expiration"
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 114
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->cache:Ljava/lang/StringBuffer;

    .line 131
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->tmpDate:Ljava/util/Date;

    .line 143
    if-eqz p1, :cond_1

    .line 147
    if-ltz p2, :cond_0

    .line 151
    iput-object p1, p0, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->formatter:Ljava/text/DateFormat;

    .line 152
    iput p2, p0, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->expiration:I

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->millisecondStart:I

    .line 158
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->previousTime:J

    .line 159
    iput-wide v0, p0, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->slotBegin:J

    .line 160
    return-void

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expiration must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dateFormat cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static findMillisecondStart(JLjava/lang/String;Ljava/text/DateFormat;)I
    .locals 15
    .param p0, "time"    # J
    .param p2, "formatted"    # Ljava/lang/String;
    .param p3, "formatter"    # Ljava/text/DateFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "time",
            "formatted",
            "formatter"
        }
    .end annotation

    .line 173
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-wide/16 v2, 0x3e8

    div-long v4, p0, v2

    mul-long/2addr v4, v2

    .line 175
    .local v4, "slotBegin":J
    cmp-long v6, v4, p0

    if-lez v6, :cond_0

    .line 176
    sub-long/2addr v4, v2

    .line 179
    :cond_0
    sub-long v2, p0, v4

    long-to-int v2, v2

    .line 181
    .local v2, "millis":I
    const/16 v3, 0x28e

    .line 182
    .local v3, "magic":I
    const-string v6, "654"

    .line 184
    .local v6, "magicString":Ljava/lang/String;
    const/16 v7, 0x28e

    if-ne v2, v7, :cond_1

    .line 185
    const/16 v3, 0x3db

    .line 186
    const-string v6, "987"

    .line 189
    :cond_1
    new-instance v7, Ljava/util/Date;

    int-to-long v8, v3

    add-long/2addr v8, v4

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 195
    .local v7, "plusMagic":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, -0x1

    if-eq v8, v9, :cond_2

    .line 196
    return v10

    .line 199
    :cond_2
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 200
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v9, v11, :cond_4

    .line 203
    new-instance v9, Ljava/lang/StringBuffer;

    const-string v11, "ABC"

    invoke-direct {v9, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 204
    .local v9, "formattedMillis":Ljava/lang/StringBuffer;
    const/4 v11, 0x0

    invoke-static {v2, v9, v11}, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->millisecondFormat(ILjava/lang/StringBuffer;I)V

    .line 206
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v12}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 210
    .local v12, "plusZero":Ljava/lang/String;
    nop

    .line 211
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    if-ne v13, v14, :cond_3

    .line 213
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    .line 212
    invoke-virtual {v6, v11, v7, v8, v13}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 214
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    .line 215
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    .line 214
    invoke-virtual {v13, v11, v0, v8, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 217
    const-string v13, "000"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    .line 216
    invoke-virtual {v13, v11, v12, v8, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 218
    return v8

    .line 220
    :cond_3
    return v10

    .line 199
    .end local v9    # "formattedMillis":Ljava/lang/StringBuffer;
    .end local v12    # "plusZero":Ljava/lang/String;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 224
    .end local v8    # "i":I
    :cond_5
    const/4 v8, -0x2

    return v8
.end method

.method public static getMaximumCacheValidity(Ljava/lang/String;)I
    .locals 2
    .param p0, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pattern"
        }
    .end annotation

    .line 379
    const/16 v0, 0x53

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 381
    .local v0, "firstS":I
    if-ltz v0, :cond_0

    const-string v1, "SSS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 382
    const/4 v1, 0x1

    return v1

    .line 385
    :cond_0
    const/16 v1, 0x3e8

    return v1
.end method

.method private static millisecondFormat(ILjava/lang/StringBuffer;I)V
    .locals 3
    .param p0, "millis"    # I
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "millis",
            "buf",
            "offset"
        }
    .end annotation

    .line 321
    div-int/lit8 v0, p0, 0x64

    const-string v1, "0123456789"

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 322
    add-int/lit8 v0, p2, 0x1

    div-int/lit8 v2, p0, 0xa

    rem-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 323
    add-int/lit8 v0, p2, 0x2

    rem-int/lit8 v2, p0, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 324
    return-void
.end method


# virtual methods
.method public format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 8
    .param p1, "now"    # J
    .param p3, "buf"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "now",
            "buf"
        }
    .end annotation

    .line 254
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->previousTime:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->cache:Ljava/lang/StringBuffer;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 257
    return-object p3

    .line 264
    :cond_0
    iget v0, p0, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->millisecondStart:I

    const/4 v1, -0x1

    const-wide/16 v2, 0x3e8

    if-eq v0, v1, :cond_2

    iget-wide v4, p0, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->slotBegin:J

    iget v1, p0, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->expiration:I

    int-to-long v6, v1

    add-long/2addr v6, v4

    cmp-long v1, p1, v6

    if-gez v1, :cond_2

    cmp-long v1, p1, v4

    if-ltz v1, :cond_2

    add-long v6, v4, v2

    cmp-long v1, p1, v6

    if-gez v1, :cond_2

    .line 272
    if-ltz v0, :cond_1

    .line 273
    sub-long v1, p1, v4

    long-to-int v1, v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->cache:Ljava/lang/StringBuffer;

    invoke-static {v1, v2, v0}, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->millisecondFormat(ILjava/lang/StringBuffer;I)V

    .line 279
    :cond_1
    iput-wide p1, p0, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->previousTime:J

    .line 280
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->cache:Ljava/lang/StringBuffer;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 282
    return-object p3

    .line 288
    :cond_2
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->cache:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 289
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->tmpDate:Ljava/util/Date;

    invoke-virtual {v0, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 290
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->cache:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->formatter:Ljava/text/DateFormat;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->tmpDate:Ljava/util/Date;

    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->cache:Ljava/lang/StringBuffer;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 292
    iput-wide p1, p0, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->previousTime:J

    .line 293
    div-long v0, p1, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->slotBegin:J

    .line 295
    cmp-long v4, v0, p1

    if-lez v4, :cond_3

    .line 296
    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->slotBegin:J

    .line 303
    :cond_3
    iget v0, p0, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->millisecondStart:I

    if-ltz v0, :cond_4

    .line 304
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->cache:Ljava/lang/StringBuffer;

    .line 305
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->formatter:Ljava/text/DateFormat;

    invoke-static {p1, p2, v0, v1}, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->findMillisecondStart(JLjava/lang/String;Ljava/text/DateFormat;)I

    move-result v0

    iput v0, p0, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->millisecondStart:I

    .line 308
    :cond_4
    return-object p3
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "sbuf"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "date",
            "sbuf",
            "fieldPosition"
        }
    .end annotation

    .line 237
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 239
    return-object p2
.end method

.method public getNumberFormat()Ljava/text/NumberFormat;
    .locals 1

    .line 362
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->formatter:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/text/DateFormat;->getNumberFormat()Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "s",
            "pos"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->formatter:Ljava/text/DateFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 2
    .param p1, "timeZone"    # Ljava/util/TimeZone;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "timeZone"
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->formatter:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 338
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->previousTime:J

    .line 339
    iput-wide v0, p0, Lorg/apache/logging/log4j/core/pattern/CachedDateFormat;->slotBegin:J

    .line 340
    return-void
.end method
