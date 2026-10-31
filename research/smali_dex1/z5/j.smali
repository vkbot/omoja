.class public final Lz5/j;
.super Lz5/g;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final c:[B

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(IIII[B)V
    .registers 6

    .line 1
    invoke-direct {p0, p3, p4}, Lz5/g;-><init>(II)V

    .line 2
    .line 3
    .line 4
    if-gt p3, p1, :cond_e

    .line 5
    .line 6
    if-gt p4, p2, :cond_e

    .line 7
    .line 8
    iput-object p5, p0, Lz5/j;->c:[B

    .line 9
    .line 10
    iput p1, p0, Lz5/j;->d:I

    .line 11
    .line 12
    iput p2, p0, Lz5/j;->e:I

    .line 13
    .line 14
    return-void

    .line 15
    :cond_e
    const-string p1, "Crop rectangle does not fit within image data."

    .line 16
    .line 17
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    throw p1
.end method


# virtual methods
.method public final a()[B
    .registers 9

    .line 1
    iget-object v0, p0, Lz5/j;->c:[B

    .line 2
    .line 3
    iget v1, p0, Lz5/g;->a:I

    .line 4
    .line 5
    iget v2, p0, Lz5/g;->b:I

    .line 6
    .line 7
    iget v3, p0, Lz5/j;->d:I

    .line 8
    .line 9
    if-ne v1, v3, :cond_f

    .line 10
    .line 11
    iget v4, p0, Lz5/j;->e:I

    .line 12
    .line 13
    if-ne v2, v4, :cond_f

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_f
    mul-int v4, v1, v2

    .line 17
    .line 18
    new-array v5, v4, [B

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    if-ne v1, v3, :cond_1a

    .line 22
    .line 23
    invoke-static {v0, v6, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    return-object v5

    .line 27
    :cond_1a
    move v4, v6

    .line 28
    :goto_1b
    if-ge v6, v2, :cond_26

    .line 29
    .line 30
    mul-int v7, v6, v1

    .line 31
    .line 32
    invoke-static {v0, v4, v5, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    .line 34
    .line 35
    add-int/2addr v4, v3

    .line 36
    add-int/lit8 v6, v6, 0x1

    .line 37
    .line 38
    goto :goto_1b

    .line 39
    :cond_26
    return-object v5
.end method

.method public final b(I[B)[B
    .registers 6

    .line 1
    if-ltz p1, :cond_19

    .line 2
    .line 3
    iget v0, p0, Lz5/g;->b:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_19

    .line 6
    .line 7
    iget v0, p0, Lz5/g;->a:I

    .line 8
    .line 9
    if-eqz p2, :cond_d

    .line 10
    .line 11
    array-length v1, p2

    .line 12
    if-ge v1, v0, :cond_f

    .line 13
    .line 14
    :cond_d
    new-array p2, v0, [B

    .line 15
    .line 16
    :cond_f
    iget v1, p0, Lz5/j;->d:I

    .line 17
    .line 18
    mul-int/2addr p1, v1

    .line 19
    iget-object v1, p0, Lz5/j;->c:[B

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static {v1, p1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    .line 25
    return-object p2

    .line 26
    :cond_19
    const-string p2, "Requested row is outside the image: "

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    return-object p1
.end method
