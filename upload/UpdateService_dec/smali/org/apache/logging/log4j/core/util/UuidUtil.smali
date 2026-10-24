.class public final Lorg/apache/logging/log4j/core/util/UuidUtil;
.super Ljava/lang/Object;
.source "UuidUtil.java"


# static fields
.field private static final ASSIGNED_SEQUENCES:Ljava/lang/String; = "org.apache.logging.log4j.assignedSequences"

.field private static final COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final EMPTY_LONG_ARRAY:[J

.field private static final HIGH_MASK:J = 0xfff000000000000L

.field private static final HUNDRED_NANOS_PER_MILLI:I = 0x2710

.field private static final INITIAL_UUID_SEQNO:J

.field private static final LEAST:J

.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field private static final LOW_MASK:J = 0xffffffffL

.field private static final MID_MASK:J = 0xffff00000000L

.field private static final NODE_SIZE:I = 0x8

.field private static final NUM_100NS_INTERVALS_SINCE_UUID_EPOCH:J = 0x1b21dd213814000L

.field private static final SEQUENCE_MASK:I = 0x3fff

.field private static final SHIFT_2:I = 0x10

.field private static final SHIFT_4:I = 0x20

.field private static final SHIFT_6:I = 0x30

.field private static final TYPE1:J = 0x1000L

.field public static final UUID_SEQUENCE:Ljava/lang/String; = "org.apache.logging.log4j.uuidSequence"

.field private static final VARIANT:B = -0x80t


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    const/4 v0, 0x0

    new-array v1, v0, [J

    sput-object v1, Lorg/apache/logging/log4j/core/util/UuidUtil;->EMPTY_LONG_ARRAY:[J

    .line 42
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v1

    sput-object v1, Lorg/apache/logging/log4j/core/util/UuidUtil;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 46
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Lorg/apache/logging/log4j/core/util/UuidUtil;->COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    const-string v1, "org.apache.logging.log4j.uuidSequence"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/logging/log4j/core/util/UuidUtil;->INITIAL_UUID_SEQNO:J

    .line 62
    invoke-static {}, Lorg/apache/logging/log4j/core/util/NetUtils;->getMacAddress()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/UuidUtil;->initialize([B)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/logging/log4j/core/util/UuidUtil;->LEAST:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public static getTimeBasedUuid()Ljava/util/UUID;
    .locals 13

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    mul-long/2addr v0, v2

    const-wide v2, 0x1b21dd213814000L

    add-long/2addr v0, v2

    sget-object v2, Lorg/apache/logging/log4j/core/util/UuidUtil;->COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 146
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    rem-int/lit16 v2, v2, 0x2710

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 147
    .local v0, "time":J
    const-wide v2, 0xffffffffL

    and-long/2addr v2, v0

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    .line 148
    .local v2, "timeLow":J
    const-wide v4, 0xffff00000000L

    and-long/2addr v4, v0

    const/16 v6, 0x10

    shr-long/2addr v4, v6

    .line 149
    .local v4, "timeMid":J
    const-wide/high16 v6, 0xfff000000000000L

    and-long/2addr v6, v0

    const/16 v8, 0x30

    shr-long/2addr v6, v8

    .line 150
    .local v6, "timeHi":J
    or-long v8, v2, v4

    const-wide/16 v10, 0x1000

    or-long/2addr v8, v10

    or-long/2addr v8, v6

    .line 151
    .local v8, "most":J
    new-instance v10, Ljava/util/UUID;

    sget-wide v11, Lorg/apache/logging/log4j/core/util/UuidUtil;->LEAST:J

    invoke-direct {v10, v8, v9, v11, v12}, Ljava/util/UUID;-><init>(JJ)V

    return-object v10
.end method

.method static initialize([B)J
    .locals 19
    .param p0, "mac"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mac"
        }
    .end annotation

    .line 75
    move-object/from16 v0, p0

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 76
    .local v1, "randomGenerator":Ljava/util/Random;
    const/4 v2, 0x6

    if-eqz v0, :cond_0

    array-length v3, v0

    if-nez v3, :cond_1

    .line 77
    :cond_0
    new-array v0, v2, [B

    .line 78
    .end local p0    # "mac":[B
    .local v0, "mac":[B
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 80
    :cond_1
    array-length v3, v0

    if-lt v3, v2, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    array-length v3, v0

    .line 81
    .local v3, "length":I
    :goto_0
    array-length v4, v0

    const/4 v5, 0x0

    if-lt v4, v2, :cond_3

    array-length v4, v0

    sub-int/2addr v4, v2

    goto :goto_1

    :cond_3
    move v4, v5

    :goto_1
    move v2, v4

    .line 82
    .local v2, "index":I
    const/16 v4, 0x8

    new-array v6, v4, [B

    .line 83
    .local v6, "node":[B
    const/16 v7, -0x80

    aput-byte v7, v6, v5

    .line 84
    const/4 v7, 0x1

    aput-byte v5, v6, v7

    .line 85
    const/4 v7, 0x2

    .local v7, "i":I
    :goto_2
    if-ge v7, v4, :cond_4

    .line 86
    aput-byte v5, v6, v7

    .line 85
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 88
    .end local v7    # "i":I
    :cond_4
    const/4 v4, 0x2

    invoke-static {v0, v2, v6, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 90
    .local v4, "buf":Ljava/nio/ByteBuffer;
    sget-wide v7, Lorg/apache/logging/log4j/core/util/UuidUtil;->INITIAL_UUID_SEQNO:J

    .line 91
    .local v7, "rand":J
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v9

    const-string v10, "org.apache.logging.log4j.assignedSequences"

    invoke-virtual {v9, v10}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 93
    .local v9, "assigned":Ljava/lang/String;
    if-nez v9, :cond_5

    .line 94
    sget-object v11, Lorg/apache/logging/log4j/core/util/UuidUtil;->EMPTY_LONG_ARRAY:[J

    .local v11, "sequences":[J
    goto :goto_4

    .line 96
    .end local v11    # "sequences":[J
    :cond_5
    sget-object v11, Lorg/apache/logging/log4j/core/util/Patterns;->COMMA_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 97
    .local v11, "array":[Ljava/lang/String;
    array-length v12, v11

    new-array v12, v12, [J

    .line 98
    .local v12, "sequences":[J
    const/4 v13, 0x0

    .line 99
    .local v13, "i":I
    array-length v14, v11

    move v15, v5

    :goto_3
    if-ge v15, v14, :cond_6

    aget-object v16, v11, v15

    .line 100
    .local v16, "value":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    aput-wide v17, v12, v13

    .line 101
    nop

    .end local v16    # "value":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    .line 99
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_6
    move-object v11, v12

    .line 104
    .end local v12    # "sequences":[J
    .end local v13    # "i":I
    .local v11, "sequences":[J
    :goto_4
    const-wide/16 v12, 0x0

    cmp-long v12, v7, v12

    if-nez v12, :cond_7

    .line 105
    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v7

    .line 107
    :cond_7
    const-wide/16 v12, 0x3fff

    and-long/2addr v7, v12

    .line 110
    :goto_5
    const/4 v14, 0x0

    .line 111
    .local v14, "duplicate":Z
    array-length v15, v11

    :goto_6
    if-ge v5, v15, :cond_9

    aget-wide v16, v11, v5

    .line 112
    .local v16, "sequence":J
    cmp-long v18, v16, v7

    if-nez v18, :cond_8

    .line 113
    const/4 v14, 0x1

    .line 114
    goto :goto_7

    .line 111
    .end local v16    # "sequence":J
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 117
    :cond_9
    :goto_7
    if-eqz v14, :cond_a

    .line 118
    const-wide/16 v15, 0x1

    add-long/2addr v15, v7

    and-long v7, v15, v12

    .line 120
    :cond_a
    if-nez v14, :cond_c

    .line 121
    if-nez v9, :cond_b

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x2c

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 122
    .end local v9    # "assigned":Ljava/lang/String;
    .local v5, "assigned":Ljava/lang/String;
    :goto_8
    invoke-static {v10, v5}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v9

    const/16 v12, 0x30

    shl-long v12, v7, v12

    or-long/2addr v9, v12

    return-wide v9

    .line 120
    .end local v5    # "assigned":Ljava/lang/String;
    .restart local v9    # "assigned":Ljava/lang/String;
    :cond_c
    const/4 v5, 0x0

    goto :goto_5
.end method
