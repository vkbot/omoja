.class public Lorg/apache/logging/log4j/util/Timer;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/logging/log4j/util/StringBuilderFormattable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/util/Timer$Status;
    }
.end annotation


# static fields
.field private static NANO_PER_HOUR:J = 0x0L

.field private static NANO_PER_MINUTE:J = 0x0L

.field private static NANO_PER_SECOND:J = 0x0L

.field private static final serialVersionUID:J = 0x7f54d452ae7198bdL


# instance fields
.field private elapsedTime:J

.field private final iterations:I

.field private final name:Ljava/lang/String;

.field private startTime:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private status:Lorg/apache/logging/log4j/util/Timer$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 38
    const-wide/32 v0, 0x3b9aca00

    sput-wide v0, Lorg/apache/logging/log4j/util/Timer;->NANO_PER_SECOND:J

    .line 39
    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    sput-wide v0, Lorg/apache/logging/log4j/util/Timer;->NANO_PER_MINUTE:J

    .line 40
    mul-long/2addr v0, v2

    sput-wide v0, Lorg/apache/logging/log4j/util/Timer;->NANO_PER_HOUR:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/util/Timer;-><init>(Ljava/lang/String;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "iterations"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "iterations"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lorg/apache/logging/log4j/util/Timer$1;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/util/Timer$1;-><init>(Lorg/apache/logging/log4j/util/Timer;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/util/Timer;->startTime:Ljava/lang/ThreadLocal;

    .line 64
    iput-object p1, p0, Lorg/apache/logging/log4j/util/Timer;->name:Ljava/lang/String;

    .line 65
    sget-object v0, Lorg/apache/logging/log4j/util/Timer$Status;->Stopped:Lorg/apache/logging/log4j/util/Timer$Status;

    iput-object v0, p0, Lorg/apache/logging/log4j/util/Timer;->status:Lorg/apache/logging/log4j/util/Timer$Status;

    .line 66
    if-lez p2, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lorg/apache/logging/log4j/util/Timer;->iterations:I

    .line 67
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "o"
        }
    .end annotation

    .line 246
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 247
    return v0

    .line 249
    :cond_0
    instance-of v1, p1, Lorg/apache/logging/log4j/util/Timer;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 250
    return v2

    .line 253
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/logging/log4j/util/Timer;

    .line 255
    .local v1, "timer":Lorg/apache/logging/log4j/util/Timer;
    iget-wide v3, p0, Lorg/apache/logging/log4j/util/Timer;->elapsedTime:J

    iget-wide v5, v1, Lorg/apache/logging/log4j/util/Timer;->elapsedTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 256
    return v2

    .line 258
    :cond_2
    iget-object v3, p0, Lorg/apache/logging/log4j/util/Timer;->startTime:Ljava/lang/ThreadLocal;

    iget-object v4, v1, Lorg/apache/logging/log4j/util/Timer;->startTime:Ljava/lang/ThreadLocal;

    if-eq v3, v4, :cond_3

    .line 259
    return v2

    .line 261
    :cond_3
    iget-object v3, p0, Lorg/apache/logging/log4j/util/Timer;->name:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v4, v1, Lorg/apache/logging/log4j/util/Timer;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_4
    iget-object v3, v1, Lorg/apache/logging/log4j/util/Timer;->name:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 262
    :goto_0
    return v2

    .line 264
    :cond_5
    iget-object v3, p0, Lorg/apache/logging/log4j/util/Timer;->status:Lorg/apache/logging/log4j/util/Timer$Status;

    if-eqz v3, :cond_6

    iget-object v4, v1, Lorg/apache/logging/log4j/util/Timer;->status:Lorg/apache/logging/log4j/util/Timer$Status;

    invoke-virtual {v3, v4}, Lorg/apache/logging/log4j/util/Timer$Status;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_6
    iget-object v3, v1, Lorg/apache/logging/log4j/util/Timer;->status:Lorg/apache/logging/log4j/util/Timer$Status;

    if-eqz v3, :cond_7

    .line 265
    :goto_1
    return v2

    .line 268
    :cond_7
    return v0
.end method

.method public formatTo(Ljava/lang/StringBuilder;)V
    .locals 28
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 169
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Timer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/apache/logging/log4j/util/Timer;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    sget-object v2, Lorg/apache/logging/log4j/util/Timer$2;->$SwitchMap$org$apache$logging$log4j$util$Timer$Status:[I

    iget-object v3, v0, Lorg/apache/logging/log4j/util/Timer;->status:Lorg/apache/logging/log4j/util/Timer$Status;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/util/Timer$Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_9

    const/4 v3, 0x2

    if-eq v2, v3, :cond_8

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 239
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/apache/logging/log4j/util/Timer;->status:Lorg/apache/logging/log4j/util/Timer$Status;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object v0, v1

    goto/16 :goto_0

    .line 178
    :cond_0
    iget-wide v2, v0, Lorg/apache/logging/log4j/util/Timer;->elapsedTime:J

    .line 180
    .local v2, "nanoseconds":J
    sget-wide v4, Lorg/apache/logging/log4j/util/Timer;->NANO_PER_HOUR:J

    div-long v6, v2, v4

    .line 182
    .local v6, "hours":J
    rem-long/2addr v2, v4

    .line 184
    sget-wide v4, Lorg/apache/logging/log4j/util/Timer;->NANO_PER_MINUTE:J

    div-long v8, v2, v4

    .line 186
    .local v8, "minutes":J
    rem-long/2addr v2, v4

    .line 188
    sget-wide v4, Lorg/apache/logging/log4j/util/Timer;->NANO_PER_SECOND:J

    div-long v10, v2, v4

    .line 190
    .local v10, "seconds":J
    rem-long/2addr v2, v4

    .line 192
    const-string v4, ""

    .line 194
    .local v4, "elapsed":Ljava/lang/String;
    const-wide/16 v12, 0x0

    cmp-long v5, v6, v12

    const-string v14, " hours "

    if-lez v5, :cond_1

    .line 195
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 197
    :cond_1
    cmp-long v5, v8, v12

    const-string v15, " minutes "

    if-gtz v5, :cond_2

    cmp-long v5, v6, v12

    if-lez v5, :cond_3

    .line 198
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 202
    :cond_3
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v12, "#0"

    invoke-direct {v5, v12}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 203
    .local v5, "numFormat":Ljava/text/DecimalFormat;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v4

    .end local v4    # "elapsed":Ljava/lang/String;
    .local v18, "elapsed":Ljava/lang/String;
    invoke-virtual {v5, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 204
    .end local v18    # "elapsed":Ljava/lang/String;
    .local v13, "elapsed":Ljava/lang/String;
    new-instance v4, Ljava/text/DecimalFormat;

    move-object/from16 v19, v5

    .end local v5    # "numFormat":Ljava/text/DecimalFormat;
    .local v19, "numFormat":Ljava/text/DecimalFormat;
    const-string v5, "000000000"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 205
    .end local v19    # "numFormat":Ljava/text/DecimalFormat;
    .local v4, "numFormat":Ljava/text/DecimalFormat;
    move-wide/from16 v19, v6

    .end local v6    # "hours":J
    .local v19, "hours":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " seconds"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 206
    .end local v13    # "elapsed":Ljava/lang/String;
    .local v6, "elapsed":Ljava/lang/String;
    const-string v13, " stopped. Elapsed time: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    iget v13, v0, Lorg/apache/logging/log4j/util/Timer;->iterations:I

    if-lez v13, :cond_7

    .line 208
    move-wide/from16 v21, v2

    .end local v2    # "nanoseconds":J
    .local v21, "nanoseconds":J
    iget-wide v2, v0, Lorg/apache/logging/log4j/util/Timer;->elapsedTime:J

    move-wide/from16 v23, v8

    .end local v8    # "minutes":J
    .local v23, "minutes":J
    int-to-long v8, v13

    div-long/2addr v2, v8

    .line 210
    .end local v21    # "nanoseconds":J
    .restart local v2    # "nanoseconds":J
    sget-wide v8, Lorg/apache/logging/log4j/util/Timer;->NANO_PER_HOUR:J

    move-wide/from16 v25, v10

    .end local v10    # "seconds":J
    .local v25, "seconds":J
    div-long v10, v2, v8

    .line 212
    .end local v19    # "hours":J
    .local v10, "hours":J
    rem-long/2addr v2, v8

    .line 214
    sget-wide v8, Lorg/apache/logging/log4j/util/Timer;->NANO_PER_MINUTE:J

    div-long v0, v2, v8

    .line 216
    .end local v23    # "minutes":J
    .local v0, "minutes":J
    rem-long/2addr v2, v8

    .line 218
    sget-wide v8, Lorg/apache/logging/log4j/util/Timer;->NANO_PER_SECOND:J

    move-object/from16 v27, v6

    move-object v13, v7

    .end local v6    # "elapsed":Ljava/lang/String;
    .local v27, "elapsed":Ljava/lang/String;
    div-long v6, v2, v8

    .line 220
    .end local v25    # "seconds":J
    .local v6, "seconds":J
    rem-long/2addr v2, v8

    .line 222
    const-string v8, ""

    .line 224
    .end local v27    # "elapsed":Ljava/lang/String;
    .local v8, "elapsed":Ljava/lang/String;
    const-wide/16 v16, 0x0

    cmp-long v9, v10, v16

    if-lez v9, :cond_4

    .line 225
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 227
    :cond_4
    const-wide/16 v16, 0x0

    cmp-long v9, v0, v16

    if-gtz v9, :cond_5

    cmp-long v9, v10, v16

    if-lez v9, :cond_6

    .line 228
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 231
    :cond_6
    new-instance v9, Ljava/text/DecimalFormat;

    invoke-direct {v9, v12}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-object v4, v9

    .line 232
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x2e

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 233
    new-instance v9, Ljava/text/DecimalFormat;

    invoke-direct {v9, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-object v4, v9

    .line 234
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 235
    .end local v8    # "elapsed":Ljava/lang/String;
    .local v5, "elapsed":Ljava/lang/String;
    const-string v8, " Average per iteration: "

    move-wide v12, v0

    move-object/from16 v0, p1

    .end local v0    # "minutes":J
    .local v12, "minutes":J
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 207
    .end local v5    # "elapsed":Ljava/lang/String;
    .end local v12    # "minutes":J
    .local v6, "elapsed":Ljava/lang/String;
    .local v8, "minutes":J
    .local v10, "seconds":J
    .restart local v19    # "hours":J
    :cond_7
    move-object v0, v1

    move-wide/from16 v21, v2

    move-object/from16 v27, v6

    move-wide/from16 v23, v8

    move-wide/from16 v25, v10

    .end local v2    # "nanoseconds":J
    .end local v6    # "elapsed":Ljava/lang/String;
    .end local v8    # "minutes":J
    .end local v10    # "seconds":J
    .restart local v21    # "nanoseconds":J
    .restart local v23    # "minutes":J
    .restart local v25    # "seconds":J
    .restart local v27    # "elapsed":Ljava/lang/String;
    goto :goto_0

    .line 175
    .end local v4    # "numFormat":Ljava/text/DecimalFormat;
    .end local v19    # "hours":J
    .end local v21    # "nanoseconds":J
    .end local v23    # "minutes":J
    .end local v25    # "seconds":J
    .end local v27    # "elapsed":Ljava/lang/String;
    :cond_8
    move-object v0, v1

    const-string v1, " paused"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    goto :goto_0

    .line 172
    :cond_9
    move-object v0, v1

    const-string v1, " started"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    nop

    .line 242
    :goto_0
    return-void
.end method

.method public getElapsedNanoTime()J
    .locals 2

    .line 143
    iget-wide v0, p0, Lorg/apache/logging/log4j/util/Timer;->elapsedTime:J

    return-wide v0
.end method

.method public getElapsedTime()J
    .locals 4

    .line 133
    iget-wide v0, p0, Lorg/apache/logging/log4j/util/Timer;->elapsedTime:J

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/apache/logging/log4j/util/Timer;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lorg/apache/logging/log4j/util/Timer$Status;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/apache/logging/log4j/util/Timer;->status:Lorg/apache/logging/log4j/util/Timer$Status;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .line 274
    iget-object v0, p0, Lorg/apache/logging/log4j/util/Timer;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 275
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1d

    iget-object v3, p0, Lorg/apache/logging/log4j/util/Timer;->status:Lorg/apache/logging/log4j/util/Timer$Status;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/apache/logging/log4j/util/Timer$Status;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v2, v1

    .line 276
    .end local v0    # "result":I
    .local v2, "result":I
    iget-object v0, p0, Lorg/apache/logging/log4j/util/Timer;->startTime:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 277
    .local v0, "time":J
    mul-int/lit8 v3, v2, 0x1d

    const/16 v4, 0x20

    ushr-long v5, v0, v4

    xor-long/2addr v5, v0

    long-to-int v5, v5

    add-int/2addr v3, v5

    .line 278
    .end local v2    # "result":I
    .local v3, "result":I
    mul-int/lit8 v2, v3, 0x1d

    iget-wide v5, p0, Lorg/apache/logging/log4j/util/Timer;->elapsedTime:J

    ushr-long v7, v5, v4

    xor-long v4, v5, v7

    long-to-int v4, v4

    add-int/2addr v2, v4

    .line 279
    .end local v3    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public declared-synchronized pause()V
    .locals 6

    monitor-enter p0

    .line 103
    :try_start_0
    iget-wide v0, p0, Lorg/apache/logging/log4j/util/Timer;->elapsedTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/logging/log4j/util/Timer;->startTime:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/logging/log4j/util/Timer;->elapsedTime:J

    .line 104
    iget-object v0, p0, Lorg/apache/logging/log4j/util/Timer;->startTime:Ljava/lang/ThreadLocal;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 105
    sget-object v0, Lorg/apache/logging/log4j/util/Timer$Status;->Paused:Lorg/apache/logging/log4j/util/Timer$Status;

    iput-object v0, p0, Lorg/apache/logging/log4j/util/Timer;->status:Lorg/apache/logging/log4j/util/Timer$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    .line 102
    .end local p0    # "this":Lorg/apache/logging/log4j/util/Timer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resume()V
    .locals 3

    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/util/Timer;->startTime:Ljava/lang/ThreadLocal;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 114
    sget-object v0, Lorg/apache/logging/log4j/util/Timer$Status;->Started:Lorg/apache/logging/log4j/util/Timer$Status;

    iput-object v0, p0, Lorg/apache/logging/log4j/util/Timer;->status:Lorg/apache/logging/log4j/util/Timer$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 112
    .end local p0    # "this":Lorg/apache/logging/log4j/util/Timer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 3

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/util/Timer;->startTime:Ljava/lang/ThreadLocal;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/logging/log4j/util/Timer;->elapsedTime:J

    .line 76
    sget-object v0, Lorg/apache/logging/log4j/util/Timer$Status;->Started:Lorg/apache/logging/log4j/util/Timer$Status;

    iput-object v0, p0, Lorg/apache/logging/log4j/util/Timer;->status:Lorg/apache/logging/log4j/util/Timer$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 73
    .end local p0    # "this":Lorg/apache/logging/log4j/util/Timer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startOrResume()V
    .locals 2

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/util/Timer;->status:Lorg/apache/logging/log4j/util/Timer$Status;

    sget-object v1, Lorg/apache/logging/log4j/util/Timer$Status;->Stopped:Lorg/apache/logging/log4j/util/Timer$Status;

    if-ne v0, v1, :cond_0

    .line 81
    invoke-virtual {p0}, Lorg/apache/logging/log4j/util/Timer;->start()V

    goto :goto_0

    .line 83
    .end local p0    # "this":Lorg/apache/logging/log4j/util/Timer;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/util/Timer;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :goto_0
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()Ljava/lang/String;
    .locals 6

    monitor-enter p0

    .line 92
    :try_start_0
    iget-wide v0, p0, Lorg/apache/logging/log4j/util/Timer;->elapsedTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/logging/log4j/util/Timer;->startTime:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/logging/log4j/util/Timer;->elapsedTime:J

    .line 93
    iget-object v0, p0, Lorg/apache/logging/log4j/util/Timer;->startTime:Ljava/lang/ThreadLocal;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 94
    sget-object v0, Lorg/apache/logging/log4j/util/Timer$Status;->Stopped:Lorg/apache/logging/log4j/util/Timer$Status;

    iput-object v0, p0, Lorg/apache/logging/log4j/util/Timer;->status:Lorg/apache/logging/log4j/util/Timer$Status;

    .line 95
    invoke-virtual {p0}, Lorg/apache/logging/log4j/util/Timer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 91
    .end local p0    # "this":Lorg/apache/logging/log4j/util/Timer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/util/Timer;->formatTo(Ljava/lang/StringBuilder;)V

    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
