.class final Lorg/apache/commons/io/file/Counters$NoopPathCounters;
.super Lorg/apache/commons/io/file/Counters$AbstractPathCounters;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/file/Counters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoopPathCounters"
.end annotation


# static fields
.field static final INSTANCE:Lorg/apache/commons/io/file/Counters$NoopPathCounters;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/file/Counters$NoopPathCounters;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/io/file/Counters$NoopPathCounters;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/commons/io/file/Counters$NoopPathCounters;->INSTANCE:Lorg/apache/commons/io/file/Counters$NoopPathCounters;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 1
    invoke-static {}, Lorg/apache/commons/io/file/Counters;->noopCounter()Lorg/apache/commons/io/file/Counters$Counter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lorg/apache/commons/io/file/Counters;->noopCounter()Lorg/apache/commons/io/file/Counters$Counter;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {}, Lorg/apache/commons/io/file/Counters;->noopCounter()Lorg/apache/commons/io/file/Counters$Counter;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;-><init>(Lorg/apache/commons/io/file/Counters$Counter;Lorg/apache/commons/io/file/Counters$Counter;Lorg/apache/commons/io/file/Counters$Counter;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
