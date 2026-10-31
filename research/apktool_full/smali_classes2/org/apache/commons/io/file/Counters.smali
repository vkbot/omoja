.class public Lorg/apache/commons/io/file/Counters;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/file/Counters$BigIntegerCounter;,
        Lorg/apache/commons/io/file/Counters$BigIntegerPathCounters;,
        Lorg/apache/commons/io/file/Counters$LongCounter;,
        Lorg/apache/commons/io/file/Counters$LongPathCounters;,
        Lorg/apache/commons/io/file/Counters$NoopCounter;,
        Lorg/apache/commons/io/file/Counters$NoopPathCounters;,
        Lorg/apache/commons/io/file/Counters$PathCounters;,
        Lorg/apache/commons/io/file/Counters$Counter;,
        Lorg/apache/commons/io/file/Counters$AbstractPathCounters;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bigIntegerCounter()Lorg/apache/commons/io/file/Counters$Counter;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;-><init>(Lorg/apache/commons/io/file/Counters$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public static bigIntegerPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/file/Counters$BigIntegerPathCounters;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/io/file/Counters$BigIntegerPathCounters;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static longCounter()Lorg/apache/commons/io/file/Counters$Counter;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/file/Counters$LongCounter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/apache/commons/io/file/Counters$LongCounter;-><init>(Lorg/apache/commons/io/file/Counters$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public static longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/file/Counters$LongPathCounters;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/io/file/Counters$LongPathCounters;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static noopCounter()Lorg/apache/commons/io/file/Counters$Counter;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/io/file/Counters$NoopCounter;->INSTANCE:Lorg/apache/commons/io/file/Counters$NoopCounter;

    .line 2
    .line 3
    return-object v0
.end method

.method public static noopPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/io/file/Counters$NoopPathCounters;->INSTANCE:Lorg/apache/commons/io/file/Counters$NoopPathCounters;

    .line 2
    .line 3
    return-object v0
.end method
