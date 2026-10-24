.class public final Lf0/c;
.super Ljava/io/InputStream;
.source "SourceFile"


# static fields
.field public static final x:Ljava/util/ArrayDeque;


# instance fields
.field public c:Ljava/io/InputStream;

.field public r:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lf0/j;->a:[C

    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lf0/c;->x:Ljava/util/ArrayDeque;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 0

    iget-object p0, p0, Lf0/c;->c:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    return p0
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Lf0/c;->c:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final mark(I)V
    .locals 0

    iget-object p0, p0, Lf0/c;->c:Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public final markSupported()Z
    .locals 0

    iget-object p0, p0, Lf0/c;->c:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result p0

    return p0
.end method

.method public final read()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lf0/c;->c:Ljava/io/InputStream;

    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lf0/c;->r:Ljava/io/IOException;

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final read([B)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lf0/c;->c:Ljava/io/InputStream;

    .line 1
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iput-object p1, p0, Lf0/c;->r:Ljava/io/IOException;

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final read([BII)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lf0/c;->c:Ljava/io/InputStream;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iput-object p1, p0, Lf0/c;->r:Ljava/io/IOException;

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf0/c;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final skip(J)J
    .locals 1

    :try_start_0
    iget-object v0, p0, Lf0/c;->c:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iput-object p1, p0, Lf0/c;->r:Ljava/io/IOException;

    const-wide/16 p0, 0x0

    :goto_0
    return-wide p0
.end method
