.class final Lorg/apache/commons/io/file/Counters$LongCounter;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/file/Counters$Counter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/file/Counters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LongCounter"
.end annotation


# instance fields
.field private value:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/io/file/Counters$1;)V
    .registers 2

    .line 5
    invoke-direct {p0}, Lorg/apache/commons/io/file/Counters$LongCounter;-><init>()V

    return-void
.end method


# virtual methods
.method public add(J)V
    .registers 5

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    .line 2
    .line 3
    add-long/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    .line 5
    .line 6
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lorg/apache/commons/io/file/Counters$Counter;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 9
    .line 10
    return v2

    .line 11
    :cond_a
    check-cast p1, Lorg/apache/commons/io/file/Counters$Counter;

    .line 12
    .line 13
    iget-wide v3, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    .line 14
    .line 15
    invoke-interface {p1}, Lorg/apache/commons/io/file/Counters$Counter;->get()J

    .line 16
    .line 17
    .line 18
    move-result-wide v5

    .line 19
    cmp-long p1, v3, v5

    .line 20
    .line 21
    if-nez p1, :cond_17

    .line 22
    .line 23
    return v0

    .line 24
    :cond_17
    return v2
.end method

.method public get()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getBigInteger()Ljava/math/BigInteger;
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getLong()Ljava/lang/Long;
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public increment()V
    .registers 5

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    .line 2
    .line 3
    const-wide/16 v2, 0x1

    .line 4
    .line 5
    add-long/2addr v0, v2

    .line 6
    iput-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    .line 7
    .line 8
    return-void
.end method

.method public reset()V
    .registers 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    .line 4
    .line 5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
