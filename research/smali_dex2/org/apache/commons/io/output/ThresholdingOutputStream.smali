.class public Lorg/apache/commons/io/output/ThresholdingOutputStream;
.super Ljava/io/OutputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field private static final NOOP_OS_GETTER:Lorg/apache/commons/io/function/IOFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/io/function/IOFunction<",
            "Lorg/apache/commons/io/output/ThresholdingOutputStream;",
            "Ljava/io/OutputStream;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final outputStreamGetter:Lorg/apache/commons/io/function/IOFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/io/function/IOFunction<",
            "Lorg/apache/commons/io/output/ThresholdingOutputStream;",
            "Ljava/io/OutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final threshold:I

.field private final thresholdConsumer:Lorg/apache/commons/io/function/IOConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/io/function/IOConsumer<",
            "Lorg/apache/commons/io/output/ThresholdingOutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private thresholdExceeded:Z

.field private written:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ln0/b;

    .line 2
    .line 3
    const/16 v1, 0x1b

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ln0/b;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->NOOP_OS_GETTER:Lorg/apache/commons/io/function/IOFunction;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 24
    invoke-static {}, Lorg/apache/commons/io/function/IOConsumer;->noop()Lorg/apache/commons/io/function/IOConsumer;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/io/output/ThresholdingOutputStream;->NOOP_OS_GETTER:Lorg/apache/commons/io/function/IOFunction;

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/io/output/ThresholdingOutputStream;-><init>(ILorg/apache/commons/io/function/IOConsumer;Lorg/apache/commons/io/function/IOFunction;)V

    return-void
.end method

.method public constructor <init>(ILorg/apache/commons/io/function/IOConsumer;Lorg/apache/commons/io/function/IOFunction;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "Lorg/apache/commons/io/output/ThresholdingOutputStream;",
            ">;",
            "Lorg/apache/commons/io/function/IOFunction<",
            "Lorg/apache/commons/io/output/ThresholdingOutputStream;",
            "Ljava/io/OutputStream;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    if-gez p1, :cond_6

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    :cond_6
    iput p1, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->threshold:I

    .line 8
    .line 9
    if-nez p2, :cond_e

    .line 10
    .line 11
    invoke-static {}, Lorg/apache/commons/io/function/IOConsumer;->noop()Lorg/apache/commons/io/function/IOConsumer;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    :cond_e
    iput-object p2, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->thresholdConsumer:Lorg/apache/commons/io/function/IOConsumer;

    .line 16
    .line 17
    if-nez p3, :cond_14

    .line 18
    .line 19
    sget-object p3, Lorg/apache/commons/io/output/ThresholdingOutputStream;->NOOP_OS_GETTER:Lorg/apache/commons/io/function/IOFunction;

    .line 20
    .line 21
    :cond_14
    iput-object p3, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->outputStreamGetter:Lorg/apache/commons/io/function/IOFunction;

    .line 22
    .line 23
    return-void
.end method

.method public static synthetic b(Lorg/apache/commons/io/output/ThresholdingOutputStream;)Ljava/io/OutputStream;
    .registers 1

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->lambda$static$0(Lorg/apache/commons/io/output/ThresholdingOutputStream;)Ljava/io/OutputStream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$static$0(Lorg/apache/commons/io/output/ThresholdingOutputStream;)Ljava/io/OutputStream;
    .registers 1

    .line 1
    sget-object p0, Lorg/apache/commons/io/output/NullOutputStream;->INSTANCE:Lorg/apache/commons/io/output/NullOutputStream;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public checkThreshold(I)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->thresholdExceeded:Z

    .line 2
    .line 3
    if-nez v0, :cond_15

    .line 4
    .line 5
    iget-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    .line 6
    .line 7
    int-to-long v2, p1

    .line 8
    add-long/2addr v0, v2

    .line 9
    iget p1, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->threshold:I

    .line 10
    .line 11
    int-to-long v2, p1

    .line 12
    cmp-long p1, v0, v2

    .line 13
    .line 14
    if-lez p1, :cond_15

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->thresholdExceeded:Z

    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->thresholdReached()V

    .line 20
    .line 21
    .line 22
    :cond_15
    return-void
.end method

.method public close()V
    .registers 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    .line 2
    .line 3
    .line 4
    :catch_3
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public flush()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public getByteCount()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->outputStreamGetter:Lorg/apache/commons/io/function/IOFunction;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lorg/apache/commons/io/function/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/io/OutputStream;

    .line 8
    .line 9
    return-object v0
.end method

.method public getStream()Ljava/io/OutputStream;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->getOutputStream()Ljava/io/OutputStream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getThreshold()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->threshold:I

    .line 2
    .line 3
    return v0
.end method

.method public isThresholdExceeded()Z
    .registers 5

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    .line 2
    .line 3
    iget v2, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->threshold:I

    .line 4
    .line 5
    int-to-long v2, v2

    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-lez v0, :cond_b

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    return v0

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method public resetByteCount()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->thresholdExceeded:Z

    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    .line 7
    .line 8
    return-void
.end method

.method public setByteCount(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    .line 2
    .line 3
    return-void
.end method

.method public thresholdReached()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->thresholdConsumer:Lorg/apache/commons/io/function/IOConsumer;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lorg/apache/commons/io/function/IOConsumer;->accept(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public write(I)V
    .registers 6

    const/4 v0, 0x1

    .line 24
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->checkThreshold(I)V

    .line 25
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 26
    iget-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    return-void
.end method

.method public write([B)V
    .registers 6

    .line 21
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->checkThreshold(I)V

    .line 22
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 23
    iget-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    return-void
.end method

.method public write([BII)V
    .registers 6

    .line 1
    invoke-static {p1, p2, p3}, Lorg/apache/commons/io/IOUtils;->checkFromIndexSize([BII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->checkThreshold(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 12
    .line 13
    .line 14
    iget-wide p1, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    .line 15
    .line 16
    int-to-long v0, p3

    .line 17
    add-long/2addr p1, v0

    .line 18
    iput-wide p1, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    .line 19
    .line 20
    return-void
.end method
