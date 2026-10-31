.class Lorg/apache/commons/net/io/Util$1;
.super Lorg/apache/commons/io/output/ProxyWriter;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/net/io/Util;->copyReader(Ljava/io/Reader;Ljava/io/Writer;IJLorg/apache/commons/net/io/CopyStreamListener;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$dest:Ljava/io/Writer;

.field final synthetic val$listener:Lorg/apache/commons/net/io/CopyStreamListener;

.field final synthetic val$streamSize:J

.field final synthetic val$total:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Ljava/io/Writer;Ljava/io/Writer;Lorg/apache/commons/net/io/CopyStreamListener;Ljava/util/concurrent/atomic/AtomicLong;J)V
    .registers 7

    .line 1
    iput-object p2, p0, Lorg/apache/commons/net/io/Util$1;->val$dest:Ljava/io/Writer;

    .line 2
    .line 3
    iput-object p3, p0, Lorg/apache/commons/net/io/Util$1;->val$listener:Lorg/apache/commons/net/io/CopyStreamListener;

    .line 4
    .line 5
    iput-object p4, p0, Lorg/apache/commons/net/io/Util$1;->val$total:Ljava/util/concurrent/atomic/AtomicLong;

    .line 6
    .line 7
    iput-wide p5, p0, Lorg/apache/commons/net/io/Util$1;->val$streamSize:J

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ProxyWriter;-><init>(Ljava/io/Writer;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public afterWrite(I)V
    .registers 9

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/io/Util$1;->val$dest:Ljava/io/Writer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/apache/commons/net/io/Util$1;->val$listener:Lorg/apache/commons/net/io/CopyStreamListener;

    .line 7
    .line 8
    iget-object v0, p0, Lorg/apache/commons/net/io/Util$1;->val$total:Ljava/util/concurrent/atomic/AtomicLong;

    .line 9
    .line 10
    int-to-long v2, p1

    .line 11
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    iget-wide v5, p0, Lorg/apache/commons/net/io/Util$1;->val$streamSize:J

    .line 16
    .line 17
    move v4, p1

    .line 18
    invoke-interface/range {v1 .. v6}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
