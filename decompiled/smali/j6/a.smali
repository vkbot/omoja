.class public final Lj6/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:[B

.field public b:I


# direct methods
.method public synthetic constructor <init>(I[B)V
    .locals 0

    .line 1
    iput p1, p0, Lj6/a;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Lj6/a;->a:[B

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lj6/a;->a:[B

    return-void
.end method

.method public static a()Ljava/io/IOException;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/IOException;

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    new-array v1, v1, [B

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    const/16 v2, 0x8

    .line 11
    .line 12
    new-array v2, v2, [B

    .line 13
    .line 14
    fill-array-data v2, :array_1

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :array_0
    .array-data 1
        -0x44t
        0x7bt
        -0x40t
        0x77t
        -0x35t
        0x40t
        -0x69t
        -0x1bt
        -0x6bt
        0x3at
        -0x24t
        0x63t
        -0x35t
        0x46t
        -0x6bt
        -0x1et
        -0x7ct
        0x7ct
        -0x74t
        0x7ct
        -0x3ft
        0x41t
        -0x77t
        -0x1ft
        -0x6at
        0x7ft
    .end array-data

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    nop

    .line 43
    :array_1
    .array-data 1
        -0xft
        0x1at
        -0x54t
        0x11t
        -0x5ct
        0x32t
        -0x6t
        -0x80t
    .end array-data
.end method


# virtual methods
.method public b()[B
    .locals 5

    .line 1
    invoke-virtual {p0}, Lj6/a;->e()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    if-ltz v2, :cond_0

    .line 10
    .line 11
    const-wide/32 v2, 0x7fffffff

    .line 12
    .line 13
    .line 14
    cmp-long v2, v0, v2

    .line 15
    .line 16
    if-gtz v2, :cond_0

    .line 17
    .line 18
    long-to-int v0, v0

    .line 19
    invoke-virtual {p0, v0}, Lj6/a;->f(I)V

    .line 20
    .line 21
    .line 22
    new-array v1, v0, [B

    .line 23
    .line 24
    iget v2, p0, Lj6/a;->b:I

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    iget-object v4, p0, Lj6/a;->a:[B

    .line 28
    .line 29
    invoke-static {v4, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    .line 31
    .line 32
    iget v2, p0, Lj6/a;->b:I

    .line 33
    .line 34
    add-int/2addr v2, v0

    .line 35
    iput v2, p0, Lj6/a;->b:I

    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_0
    invoke-static {}, Lj6/a;->a()Ljava/io/IOException;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    throw v0
.end method

.method public c()I
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lj6/a;->f(I)V

    .line 3
    .line 4
    .line 5
    iget v1, p0, Lj6/a;->b:I

    .line 6
    .line 7
    iget-object v2, p0, Lj6/a;->a:[B

    .line 8
    .line 9
    aget-byte v3, v2, v1

    .line 10
    .line 11
    and-int/lit16 v3, v3, 0xff

    .line 12
    .line 13
    add-int/lit8 v4, v1, 0x1

    .line 14
    .line 15
    aget-byte v4, v2, v4

    .line 16
    .line 17
    and-int/lit16 v4, v4, 0xff

    .line 18
    .line 19
    shl-int/lit8 v4, v4, 0x8

    .line 20
    .line 21
    or-int/2addr v3, v4

    .line 22
    add-int/lit8 v4, v1, 0x2

    .line 23
    .line 24
    aget-byte v4, v2, v4

    .line 25
    .line 26
    and-int/lit16 v4, v4, 0xff

    .line 27
    .line 28
    shl-int/lit8 v4, v4, 0x10

    .line 29
    .line 30
    or-int/2addr v3, v4

    .line 31
    add-int/lit8 v4, v1, 0x3

    .line 32
    .line 33
    aget-byte v2, v2, v4

    .line 34
    .line 35
    and-int/lit16 v2, v2, 0xff

    .line 36
    .line 37
    shl-int/lit8 v2, v2, 0x18

    .line 38
    .line 39
    or-int/2addr v2, v3

    .line 40
    add-int/2addr v1, v0

    .line 41
    iput v1, p0, Lj6/a;->b:I

    .line 42
    .line 43
    return v2
.end method

.method public d()J
    .locals 7

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lj6/a;->f(I)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v0, :cond_0

    .line 10
    .line 11
    iget v4, p0, Lj6/a;->b:I

    .line 12
    .line 13
    add-int/2addr v4, v3

    .line 14
    iget-object v5, p0, Lj6/a;->a:[B

    .line 15
    .line 16
    aget-byte v4, v5, v4

    .line 17
    .line 18
    and-int/lit16 v4, v4, 0xff

    .line 19
    .line 20
    int-to-long v4, v4

    .line 21
    mul-int/lit8 v6, v3, 0x8

    .line 22
    .line 23
    shl-long/2addr v4, v6

    .line 24
    or-long/2addr v1, v4

    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget v3, p0, Lj6/a;->b:I

    .line 29
    .line 30
    add-int/2addr v3, v0

    .line 31
    iput v3, p0, Lj6/a;->b:I

    .line 32
    .line 33
    return-wide v1
.end method

.method public e()J
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    const/16 v3, 0x40

    .line 5
    .line 6
    if-ge v2, v3, :cond_1

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    invoke-virtual {p0, v3}, Lj6/a;->f(I)V

    .line 10
    .line 11
    .line 12
    iget v3, p0, Lj6/a;->b:I

    .line 13
    .line 14
    add-int/lit8 v4, v3, 0x1

    .line 15
    .line 16
    iput v4, p0, Lj6/a;->b:I

    .line 17
    .line 18
    iget-object v4, p0, Lj6/a;->a:[B

    .line 19
    .line 20
    aget-byte v3, v4, v3

    .line 21
    .line 22
    and-int/lit8 v4, v3, 0x7f

    .line 23
    .line 24
    int-to-long v4, v4

    .line 25
    shl-long/2addr v4, v2

    .line 26
    or-long/2addr v0, v4

    .line 27
    and-int/lit16 v3, v3, 0x80

    .line 28
    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    return-wide v0

    .line 32
    :cond_0
    add-int/lit8 v2, v2, 0x7

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {}, Lj6/a;->a()Ljava/io/IOException;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    throw v0
.end method

.method public f(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lj6/a;->b:I

    .line 4
    .line 5
    iget-object v1, p0, Lj6/a;->a:[B

    .line 6
    .line 7
    array-length v1, v1

    .line 8
    sub-int/2addr v1, p1

    .line 9
    if-gt v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Lj6/a;->a()Ljava/io/IOException;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    throw p1
.end method

.method public g(I)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lj6/a;->e()J

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    const/16 p1, 0x8

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lj6/a;->f(I)V

    .line 13
    .line 14
    .line 15
    iget v0, p0, Lj6/a;->b:I

    .line 16
    .line 17
    add-int/2addr v0, p1

    .line 18
    iput v0, p0, Lj6/a;->b:I

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    const/4 v0, 0x2

    .line 22
    if-ne p1, v0, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0}, Lj6/a;->e()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    const-wide/16 v2, 0x0

    .line 29
    .line 30
    cmp-long p1, v0, v2

    .line 31
    .line 32
    if-ltz p1, :cond_2

    .line 33
    .line 34
    const-wide/32 v2, 0x7fffffff

    .line 35
    .line 36
    .line 37
    cmp-long p1, v0, v2

    .line 38
    .line 39
    if-gtz p1, :cond_2

    .line 40
    .line 41
    long-to-int p1, v0

    .line 42
    invoke-virtual {p0, p1}, Lj6/a;->f(I)V

    .line 43
    .line 44
    .line 45
    iget v0, p0, Lj6/a;->b:I

    .line 46
    .line 47
    add-int/2addr v0, p1

    .line 48
    iput v0, p0, Lj6/a;->b:I

    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    invoke-static {}, Lj6/a;->a()Ljava/io/IOException;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    throw p1

    .line 56
    :cond_3
    const/4 v0, 0x5

    .line 57
    if-ne p1, v0, :cond_4

    .line 58
    .line 59
    const/4 p1, 0x4

    .line 60
    invoke-virtual {p0, p1}, Lj6/a;->f(I)V

    .line 61
    .line 62
    .line 63
    iget v0, p0, Lj6/a;->b:I

    .line 64
    .line 65
    add-int/2addr v0, p1

    .line 66
    iput v0, p0, Lj6/a;->b:I

    .line 67
    .line 68
    return-void

    .line 69
    :cond_4
    invoke-static {}, Lj6/a;->a()Ljava/io/IOException;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    throw p1
.end method
