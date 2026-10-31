.class public final Lp7/r;
.super Lo7/c;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final b:Ll9/l;


# direct methods
.method public constructor <init>(Ll9/l;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp7/r;->b:Ll9/l;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final S(I)Lo7/c;
    .registers 6

    .line 1
    new-instance v0, Ll9/l;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lp7/r;->b:Ll9/l;

    .line 7
    .line 8
    int-to-long v2, p1

    .line 9
    invoke-virtual {v0, v1, v2, v3}, Ll9/l;->write(Ll9/l;J)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Lp7/r;

    .line 13
    .line 14
    invoke-direct {p1, v0}, Lp7/r;-><init>(Ll9/l;)V

    .line 15
    .line 16
    .line 17
    return-object p1
.end method

.method public final V(Ljava/io/OutputStream;I)V
    .registers 13

    .line 1
    int-to-long v4, p2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    iget-object p2, p0, Lp7/r;->b:Ll9/l;

    .line 6
    .line 7
    iget-wide v0, p2, Ll9/l;->c:J

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    invoke-static/range {v0 .. v5}, Ll9/b;->d(JJJ)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p2, Ll9/l;->b:Ll9/b0;

    .line 15
    .line 16
    :cond_f
    :goto_f
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    cmp-long v1, v4, v1

    .line 19
    .line 20
    if-lez v1, :cond_45

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget v1, v0, Ll9/b0;->c:I

    .line 26
    .line 27
    iget v2, v0, Ll9/b0;->b:I

    .line 28
    .line 29
    sub-int/2addr v1, v2

    .line 30
    int-to-long v1, v1

    .line 31
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    long-to-int v1, v1

    .line 36
    iget-object v2, v0, Ll9/b0;->a:[B

    .line 37
    .line 38
    iget v3, v0, Ll9/b0;->b:I

    .line 39
    .line 40
    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 41
    .line 42
    .line 43
    iget v2, v0, Ll9/b0;->b:I

    .line 44
    .line 45
    add-int/2addr v2, v1

    .line 46
    iput v2, v0, Ll9/b0;->b:I

    .line 47
    .line 48
    iget-wide v6, p2, Ll9/l;->c:J

    .line 49
    .line 50
    int-to-long v8, v1

    .line 51
    sub-long/2addr v6, v8

    .line 52
    iput-wide v6, p2, Ll9/l;->c:J

    .line 53
    .line 54
    sub-long/2addr v4, v8

    .line 55
    iget v1, v0, Ll9/b0;->c:I

    .line 56
    .line 57
    if-ne v2, v1, :cond_f

    .line 58
    .line 59
    invoke-virtual {v0}, Ll9/b0;->a()Ll9/b0;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iput-object v1, p2, Ll9/l;->b:Ll9/b0;

    .line 64
    .line 65
    invoke-static {v0}, Ll9/c0;->a(Ll9/b0;)V

    .line 66
    .line 67
    .line 68
    move-object v0, v1

    .line 69
    goto :goto_f

    .line 70
    :cond_45
    return-void
.end method

.method public final c0(Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public final close()V
    .registers 2

    .line 1
    iget-object v0, p0, Lp7/r;->b:Ll9/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll9/l;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d0([BII)V
    .registers 6

    .line 1
    :goto_0
    if-lez p3, :cond_1c

    .line 2
    .line 3
    iget-object v0, p0, Lp7/r;->b:Ll9/l;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Ll9/l;->read([BII)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eq v0, v1, :cond_e

    .line 11
    .line 12
    sub-int/2addr p3, v0

    .line 13
    add-int/2addr p2, v0

    .line 14
    goto :goto_0

    .line 15
    :cond_e
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 16
    .line 17
    const-string p2, "EOF trying to read "

    .line 18
    .line 19
    const-string v0, " bytes"

    .line 20
    .line 21
    invoke-static {p3, p2, v0}, Lai/onnxruntime/a;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1c
    return-void
.end method

.method public final e0()I
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lp7/r;->b:Ll9/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll9/l;->readByte()B

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_6} :catch_9

    .line 7
    and-int/lit16 v0, v0, 0xff

    .line 8
    .line 9
    return v0

    .line 10
    :catch_9
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v1
.end method

.method public final f0()I
    .registers 3

    .line 1
    iget-object v0, p0, Lp7/r;->b:Ll9/l;

    .line 2
    .line 3
    iget-wide v0, v0, Ll9/l;->c:J

    .line 4
    .line 5
    long-to-int v0, v0

    .line 6
    return v0
.end method

.method public final h0(I)V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lp7/r;->b:Ll9/l;

    .line 2
    .line 3
    int-to-long v1, p1

    .line 4
    invoke-virtual {v0, v1, v2}, Ll9/l;->skip(J)V
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_6} :catch_7

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catch_7
    move-exception p1

    .line 9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method
