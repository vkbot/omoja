.class public Lorg/apache/commons/io/input/ThrottledInputStream$Builder;
.super Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/ThrottledInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder<",
        "Lorg/apache/commons/io/input/ThrottledInputStream;",
        "Lorg/apache/commons/io/input/ThrottledInputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private maxBytesPerSecond:D


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v0, p0, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;->maxBytesPerSecond:D

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic access$100(Lorg/apache/commons/io/input/ThrottledInputStream$Builder;)D
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;->maxBytesPerSecond:D

    .line 2
    .line 3
    return-wide v0
.end method

.method private setMaxBytesPerSecond(D)Lorg/apache/commons/io/input/ThrottledInputStream$Builder;
    .registers 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmpg-double v0, p1, v0

    .line 4
    .line 5
    if-lez v0, :cond_f

    .line 6
    .line 7
    iput-wide p1, p0, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;->maxBytesPerSecond:D

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractSupplier;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "Bandwidth "

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, " must be > 0."

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;->get()Lorg/apache/commons/io/input/ThrottledInputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/ThrottledInputStream;
    .registers 3

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/ThrottledInputStream;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/ThrottledInputStream;-><init>(Lorg/apache/commons/io/input/ThrottledInputStream$Builder;Lorg/apache/commons/io/input/ThrottledInputStream$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public bridge synthetic getAfterRead()Lorg/apache/commons/io/function/IOIntConsumer;
    .registers 2

    .line 1
    invoke-super {p0}, Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;->getAfterRead()Lorg/apache/commons/io/function/IOIntConsumer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getMaxBytesPerSecond()D
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;->maxBytesPerSecond:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public bridge synthetic setAfterRead(Lorg/apache/commons/io/function/IOIntConsumer;)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;->setAfterRead(Lorg/apache/commons/io/function/IOIntConsumer;)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public setMaxBytes(JLjava/time/Duration;)Lorg/apache/commons/io/input/ThrottledInputStream$Builder;
    .registers 8

    .line 1
    const-string v0, "duration"

    .line 2
    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p3}, Lorg/apache/commons/io/filefilter/f;->j(Ljava/lang/Object;)Ljava/time/Duration;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    invoke-static {p3}, Lkotlin/io/path/f;->c(Ljava/time/Duration;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    long-to-double v0, v0

    .line 15
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    div-double/2addr v0, v2

    .line 21
    long-to-double p1, p1

    .line 22
    mul-double/2addr v0, p1

    .line 23
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;->setMaxBytesPerSecond(D)Lorg/apache/commons/io/input/ThrottledInputStream$Builder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractSupplier;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;

    .line 31
    .line 32
    return-object p1
.end method

.method public setMaxBytes(JLjava/time/temporal/ChronoUnit;)Lorg/apache/commons/io/input/ThrottledInputStream$Builder;
    .registers 4

    .line 33
    invoke-static {p3}, Lorg/apache/commons/io/filefilter/f;->k(Ljava/time/temporal/ChronoUnit;)Ljava/time/Duration;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;->setMaxBytes(JLjava/time/Duration;)Lorg/apache/commons/io/input/ThrottledInputStream$Builder;

    .line 34
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractSupplier;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;

    return-object p1
.end method

.method public setMaxBytesPerSecond(J)V
    .registers 3

    long-to-double p1, p1

    .line 41
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;->setMaxBytesPerSecond(D)Lorg/apache/commons/io/input/ThrottledInputStream$Builder;

    return-void
.end method
