.class public final Lz5/f;
.super Lz5/g;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final c:Lz5/g;


# direct methods
.method public constructor <init>(Lz5/g;)V
    .registers 4

    .line 1
    iget v0, p1, Lz5/g;->a:I

    .line 2
    .line 3
    iget v1, p1, Lz5/g;->b:I

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lz5/g;-><init>(II)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lz5/f;->c:Lz5/g;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()[B
    .registers 6

    .line 1
    iget-object v0, p0, Lz5/f;->c:Lz5/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lz5/g;->a()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lz5/g;->a:I

    .line 8
    .line 9
    iget v2, p0, Lz5/g;->b:I

    .line 10
    .line 11
    mul-int/2addr v1, v2

    .line 12
    new-array v2, v1, [B

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_e
    if-ge v3, v1, :cond_1c

    .line 16
    .line 17
    aget-byte v4, v0, v3

    .line 18
    .line 19
    and-int/lit16 v4, v4, 0xff

    .line 20
    .line 21
    rsub-int v4, v4, 0xff

    .line 22
    .line 23
    int-to-byte v4, v4

    .line 24
    aput-byte v4, v2, v3

    .line 25
    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_e

    .line 29
    :cond_1c
    return-object v2
.end method

.method public final b(I[B)[B
    .registers 4

    .line 1
    iget-object v0, p0, Lz5/f;->c:Lz5/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lz5/g;->b(I[B)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x0

    .line 8
    :goto_7
    iget v0, p0, Lz5/g;->a:I

    .line 9
    .line 10
    if-ge p2, v0, :cond_17

    .line 11
    .line 12
    aget-byte v0, p1, p2

    .line 13
    .line 14
    and-int/lit16 v0, v0, 0xff

    .line 15
    .line 16
    rsub-int v0, v0, 0xff

    .line 17
    .line 18
    int-to-byte v0, v0

    .line 19
    aput-byte v0, p1, p2

    .line 20
    .line 21
    add-int/lit8 p2, p2, 0x1

    .line 22
    .line 23
    goto :goto_7

    .line 24
    :cond_17
    return-object p1
.end method

.method public final c()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lz5/f;->c:Lz5/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lz5/g;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final d()Lz5/g;
    .registers 3

    .line 1
    new-instance v0, Lz5/f;

    .line 2
    .line 3
    iget-object v1, p0, Lz5/f;->c:Lz5/g;

    .line 4
    .line 5
    invoke-virtual {v1}, Lz5/g;->d()Lz5/g;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lz5/f;-><init>(Lz5/g;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
