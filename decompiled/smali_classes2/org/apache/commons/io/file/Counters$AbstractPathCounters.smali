.class Lorg/apache/commons/io/file/Counters$AbstractPathCounters;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/file/Counters$PathCounters;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/file/Counters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AbstractPathCounters"
.end annotation


# instance fields
.field private final byteCounter:Lorg/apache/commons/io/file/Counters$Counter;

.field private final directoryCounter:Lorg/apache/commons/io/file/Counters$Counter;

.field private final fileCounter:Lorg/apache/commons/io/file/Counters$Counter;


# direct methods
.method public constructor <init>(Lorg/apache/commons/io/file/Counters$Counter;Lorg/apache/commons/io/file/Counters$Counter;Lorg/apache/commons/io/file/Counters$Counter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->byteCounter:Lorg/apache/commons/io/file/Counters$Counter;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->directoryCounter:Lorg/apache/commons/io/file/Counters$Counter;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->fileCounter:Lorg/apache/commons/io/file/Counters$Counter;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->byteCounter:Lorg/apache/commons/io/file/Counters$Counter;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->byteCounter:Lorg/apache/commons/io/file/Counters$Counter;

    .line 16
    .line 17
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->directoryCounter:Lorg/apache/commons/io/file/Counters$Counter;

    .line 24
    .line 25
    iget-object v3, p1, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->directoryCounter:Lorg/apache/commons/io/file/Counters$Counter;

    .line 26
    .line 27
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->fileCounter:Lorg/apache/commons/io/file/Counters$Counter;

    .line 34
    .line 35
    iget-object p1, p1, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->fileCounter:Lorg/apache/commons/io/file/Counters$Counter;

    .line 36
    .line 37
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    return v0

    .line 44
    :cond_2
    return v2
.end method

.method public getByteCounter()Lorg/apache/commons/io/file/Counters$Counter;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->byteCounter:Lorg/apache/commons/io/file/Counters$Counter;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDirectoryCounter()Lorg/apache/commons/io/file/Counters$Counter;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->directoryCounter:Lorg/apache/commons/io/file/Counters$Counter;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFileCounter()Lorg/apache/commons/io/file/Counters$Counter;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->fileCounter:Lorg/apache/commons/io/file/Counters$Counter;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->byteCounter:Lorg/apache/commons/io/file/Counters$Counter;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->directoryCounter:Lorg/apache/commons/io/file/Counters$Counter;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->fileCounter:Lorg/apache/commons/io/file/Counters$Counter;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

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

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->byteCounter:Lorg/apache/commons/io/file/Counters$Counter;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/apache/commons/io/file/Counters$Counter;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->directoryCounter:Lorg/apache/commons/io/file/Counters$Counter;

    .line 7
    .line 8
    invoke-interface {v0}, Lorg/apache/commons/io/file/Counters$Counter;->reset()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->fileCounter:Lorg/apache/commons/io/file/Counters$Counter;

    .line 12
    .line 13
    invoke-interface {v0}, Lorg/apache/commons/io/file/Counters$Counter;->reset()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->fileCounter:Lorg/apache/commons/io/file/Counters$Counter;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/apache/commons/io/file/Counters$Counter;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->directoryCounter:Lorg/apache/commons/io/file/Counters$Counter;

    .line 12
    .line 13
    invoke-interface {v1}, Lorg/apache/commons/io/file/Counters$Counter;->get()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->byteCounter:Lorg/apache/commons/io/file/Counters$Counter;

    .line 22
    .line 23
    invoke-interface {v2}, Lorg/apache/commons/io/file/Counters$Counter;->get()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "%,d files, %,d directories, %,d bytes"

    .line 36
    .line 37
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method
