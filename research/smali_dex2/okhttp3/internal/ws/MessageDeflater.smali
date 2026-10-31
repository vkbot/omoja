.class public final Lokhttp3/internal/ws/MessageDeflater;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001b\u0010\t\u001a\u00020\u0002*\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0015\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0018\u001a\u00020\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lokhttp3/internal/ws/MessageDeflater;",
        "Ljava/io/Closeable;",
        "",
        "noContextTakeover",
        "<init>",
        "(Z)V",
        "Ll9/l;",
        "Ll9/o;",
        "suffix",
        "endsWith",
        "(Ll9/l;Ll9/o;)Z",
        "buffer",
        "",
        "deflate",
        "(Ll9/l;)V",
        "close",
        "()V",
        "Z",
        "deflatedBytes",
        "Ll9/l;",
        "Ljava/util/zip/Deflater;",
        "deflater",
        "Ljava/util/zip/Deflater;",
        "Ll9/p;",
        "deflaterSink",
        "Ll9/p;",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final deflatedBytes:Ll9/l;

.field private final deflater:Ljava/util/zip/Deflater;

.field private final deflaterSink:Ll9/p;

.field private final noContextTakeover:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lokhttp3/internal/ws/MessageDeflater;->noContextTakeover:Z

    .line 5
    .line 6
    new-instance p1, Ll9/l;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lokhttp3/internal/ws/MessageDeflater;->deflatedBytes:Ll9/l;

    .line 12
    .line 13
    new-instance v0, Ljava/util/zip/Deflater;

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflater:Ljava/util/zip/Deflater;

    .line 21
    .line 22
    new-instance v1, Ll9/p;

    .line 23
    .line 24
    invoke-direct {v1, p1, v0}, Ll9/p;-><init>(Ll9/l;Ljava/util/zip/Deflater;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lokhttp3/internal/ws/MessageDeflater;->deflaterSink:Ll9/p;

    .line 28
    .line 29
    return-void
.end method

.method private final endsWith(Ll9/l;Ll9/o;)Z
    .registers 7

    .line 1
    iget-wide v0, p1, Ll9/l;->c:J

    .line 2
    .line 3
    invoke-virtual {p2}, Ll9/o;->c()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    int-to-long v2, v2

    .line 8
    sub-long/2addr v0, v2

    .line 9
    invoke-virtual {p1, v0, v1, p2}, Ll9/l;->Q(JLl9/o;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflaterSink:Ll9/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll9/p;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final deflate(Ll9/l;)V
    .registers 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflatedBytes:Ll9/l;

    .line 5
    .line 6
    iget-wide v0, v0, Ll9/l;->c:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-nez v0, :cond_56

    .line 13
    .line 14
    iget-boolean v0, p0, Lokhttp3/internal/ws/MessageDeflater;->noContextTakeover:Z

    .line 15
    .line 16
    if-eqz v0, :cond_16

    .line 17
    .line 18
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflater:Ljava/util/zip/Deflater;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    .line 21
    .line 22
    .line 23
    :cond_16
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflaterSink:Ll9/p;

    .line 24
    .line 25
    iget-wide v1, p1, Ll9/l;->c:J

    .line 26
    .line 27
    invoke-virtual {v0, p1, v1, v2}, Ll9/p;->write(Ll9/l;J)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflaterSink:Ll9/p;

    .line 31
    .line 32
    invoke-virtual {v0}, Ll9/p;->flush()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflatedBytes:Ll9/l;

    .line 36
    .line 37
    # getter for: Lokhttp3/internal/ws/MessageDeflaterKt;->EMPTY_DEFLATE_BLOCK:Ll9/o;
    invoke-static {}, Lokhttp3/internal/ws/MessageDeflaterKt;->access$getEMPTY_DEFLATE_BLOCK$p()Ll9/o;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {p0, v0, v1}, Lokhttp3/internal/ws/MessageDeflater;->endsWith(Ll9/l;Ll9/o;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-object v1, p0, Lokhttp3/internal/ws/MessageDeflater;->deflatedBytes:Ll9/l;

    .line 46
    .line 47
    if-eqz v0, :cond_4a

    .line 48
    .line 49
    iget-wide v2, v1, Ll9/l;->c:J

    .line 50
    .line 51
    const/4 v0, 0x4

    .line 52
    int-to-long v4, v0

    .line 53
    sub-long/2addr v2, v4

    .line 54
    sget-object v0, Ll9/b;->a:Ll9/j;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ll9/l;->e0(Ll9/j;)Ll9/j;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :try_start_3b
    invoke-virtual {v0, v2, v3}, Ll9/j;->b(J)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_43

    .line 61
    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    goto :goto_4e

    .line 68
    :catchall_43
    move-exception p1

    .line 69
    :try_start_44
    throw p1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_45

    .line 70
    :catchall_45
    move-exception v1

    .line 71
    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    throw v1

    .line 75
    :cond_4a
    const/4 v0, 0x0

    .line 76
    invoke-virtual {v1, v0}, Ll9/l;->m0(I)V

    .line 77
    .line 78
    .line 79
    :goto_4e
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflatedBytes:Ll9/l;

    .line 80
    .line 81
    iget-wide v1, v0, Ll9/l;->c:J

    .line 82
    .line 83
    invoke-virtual {p1, v0, v1, v2}, Ll9/l;->write(Ll9/l;J)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_56
    const-string p1, "Failed requirement."

    .line 88
    .line 89
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method
