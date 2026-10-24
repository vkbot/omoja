.class public final Lg4/a;
.super Le4/a;
.source "SourceFile"

# interfaces
.implements Lh4/f;


# instance fields
.field public final Z:[B

.field public r:Ljava/io/InputStream;

.field public x:Lg4/b;

.field public y:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    new-instance v0, Lg4/b;

    invoke-direct {v0, p1}, Lg4/b;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lg4/a;->Z:[B

    iput-object v0, p0, Lg4/a;->x:Lg4/b;

    iput-object p1, p0, Lg4/a;->r:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lg4/a;->y:J

    return-wide v0
.end method

.method public final available()I
    .locals 0

    iget-object p0, p0, Lg4/a;->x:Lg4/b;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lg4/b;->r:Lg4/b$b;

    invoke-virtual {p0}, Lg4/b$b;->a()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final close()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lg4/a;->x:Lg4/b;

    invoke-static {v1}, Li4/c;->a(Ljava/io/Closeable;)V

    iput-object v0, p0, Lg4/a;->x:Lg4/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lg4/a;->r:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    iput-object v0, p0, Lg4/a;->r:Ljava/io/InputStream;

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lg4/a;->r:Ljava/io/InputStream;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    iput-object v0, p0, Lg4/a;->r:Ljava/io/InputStream;

    :cond_1
    throw v1
.end method

.method public final read()I
    .locals 3

    :cond_0
    iget-object v0, p0, Lg4/a;->Z:[B

    .line 1
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    if-ne v1, p0, :cond_1

    const/4 p0, 0x0

    .line 2
    aget-byte p0, v0, p0

    and-int/lit16 p0, p0, 0xff

    return p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid return value from read: "

    .line 4
    invoke-static {v0, v1}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return v2
.end method

.method public final read([BII)I
    .locals 2

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lg4/a;->x:Lg4/b;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 14
    :try_start_0
    invoke-virtual {v0, p2, p3, p1}, Lg4/b;->b(II[B)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p2, p0, Lg4/a;->x:Lg4/b;

    .line 15
    iget-object p2, p2, Lg4/b;->x:Lh4/a;

    .line 16
    iget-object p2, p2, Lh4/a;->c:Ln4/d;

    .line 17
    invoke-virtual {p2}, Ln4/d;->d()J

    move-result-wide p2

    iput-wide p2, p0, Lg4/a;->y:J

    .line 18
    invoke-virtual {p0, p1}, Le4/a;->c(I)V

    if-ne p1, v1, :cond_1

    iget-object p2, p0, Lg4/a;->x:Lg4/b;

    .line 19
    invoke-static {p2}, Li4/c;->a(Ljava/io/Closeable;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lg4/a;->x:Lg4/b;

    :cond_1
    move v1, p1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 20
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid Deflate64 input"

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    :goto_0
    return v1
.end method
