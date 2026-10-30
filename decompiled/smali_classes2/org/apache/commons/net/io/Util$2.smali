.class Lorg/apache/commons/net/io/Util$2;
.super Lorg/apache/commons/io/output/ProxyOutputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/net/io/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;Z)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$dest:Ljava/io/OutputStream;

.field final synthetic val$flush:Z

.field final synthetic val$listener:Lorg/apache/commons/net/io/CopyStreamListener;

.field final synthetic val$streamSize:J

.field final synthetic val$total:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;ZLjava/io/OutputStream;Lorg/apache/commons/net/io/CopyStreamListener;Ljava/util/concurrent/atomic/AtomicLong;J)V
    .locals 0

    .line 1
    iput-boolean p2, p0, Lorg/apache/commons/net/io/Util$2;->val$flush:Z

    .line 2
    .line 3
    iput-object p3, p0, Lorg/apache/commons/net/io/Util$2;->val$dest:Ljava/io/OutputStream;

    .line 4
    .line 5
    iput-object p4, p0, Lorg/apache/commons/net/io/Util$2;->val$listener:Lorg/apache/commons/net/io/CopyStreamListener;

    .line 6
    .line 7
    iput-object p5, p0, Lorg/apache/commons/net/io/Util$2;->val$total:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    .line 9
    iput-wide p6, p0, Lorg/apache/commons/net/io/Util$2;->val$streamSize:J

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ProxyOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public afterWrite(I)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/net/io/Util$2;->val$flush:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/commons/net/io/Util$2;->val$dest:Ljava/io/OutputStream;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/net/io/Util$2;->val$listener:Lorg/apache/commons/net/io/CopyStreamListener;

    .line 11
    .line 12
    iget-object v0, p0, Lorg/apache/commons/net/io/Util$2;->val$total:Ljava/util/concurrent/atomic/AtomicLong;

    .line 13
    .line 14
    int-to-long v2, p1

    .line 15
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    iget-wide v5, p0, Lorg/apache/commons/net/io/Util$2;->val$streamSize:J

    .line 20
    .line 21
    move v4, p1

    .line 22
    invoke-interface/range {v1 .. v6}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
