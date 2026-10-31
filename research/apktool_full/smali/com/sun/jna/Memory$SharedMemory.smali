.class Lcom/sun/jna/Memory$SharedMemory;
.super Lcom/sun/jna/Memory;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SharedMemory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/jna/Memory;


# direct methods
.method public constructor <init>(Lcom/sun/jna/Memory;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sun/jna/Memory$SharedMemory;->this$0:Lcom/sun/jna/Memory;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/sun/jna/Memory;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-wide p4, p0, Lcom/sun/jna/Memory;->size:J

    .line 7
    .line 8
    iget-wide p4, p1, Lcom/sun/jna/Pointer;->peer:J

    .line 9
    .line 10
    add-long/2addr p4, p2

    .line 11
    iput-wide p4, p0, Lcom/sun/jna/Pointer;->peer:J

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public boundsCheck(JJ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sun/jna/Memory$SharedMemory;->this$0:Lcom/sun/jna/Memory;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    .line 4
    .line 5
    iget-wide v3, v0, Lcom/sun/jna/Pointer;->peer:J

    .line 6
    .line 7
    sub-long/2addr v1, v3

    .line 8
    add-long/2addr v1, p1

    .line 9
    invoke-virtual {v0, v1, v2, p3, p4}, Lcom/sun/jna/Memory;->boundsCheck(JJ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public declared-synchronized dispose()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    :try_start_0
    iput-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/sun/jna/Memory;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " (shared from "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/sun/jna/Memory$SharedMemory;->this$0:Lcom/sun/jna/Memory;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/sun/jna/Memory;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ")"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
