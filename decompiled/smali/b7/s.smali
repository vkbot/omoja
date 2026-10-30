.class public final Lb7/s;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public a:I

.field public b:I

.field public final c:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lb7/s;->c:[B

    return-void
.end method

.method public synthetic constructor <init>([BII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb7/s;->c:[B

    .line 2
    .line 3
    iput p2, p0, Lb7/s;->a:I

    .line 4
    .line 5
    iput p3, p0, Lb7/s;->b:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget-object v0, p0, Lb7/s;->c:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    iget v1, p0, Lb7/s;->a:I

    .line 5
    .line 6
    sub-int/2addr v0, v1

    .line 7
    mul-int/lit8 v0, v0, 0x8

    .line 8
    .line 9
    iget v1, p0, Lb7/s;->b:I

    .line 10
    .line 11
    sub-int/2addr v0, v1

    .line 12
    return v0
.end method

.method public b(I)I
    .locals 9

    .line 1
    if-lez p1, :cond_4

    .line 2
    .line 3
    const/16 v0, 0x20

    .line 4
    .line 5
    if-gt p1, v0, :cond_4

    .line 6
    .line 7
    invoke-virtual {p0}, Lb7/s;->a()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-gt p1, v0, :cond_4

    .line 12
    .line 13
    iget v0, p0, Lb7/s;->b:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iget-object v2, p0, Lb7/s;->c:[B

    .line 17
    .line 18
    const/16 v3, 0xff

    .line 19
    .line 20
    const/16 v4, 0x8

    .line 21
    .line 22
    if-lez v0, :cond_1

    .line 23
    .line 24
    rsub-int/lit8 v0, v0, 0x8

    .line 25
    .line 26
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    sub-int/2addr v0, v5

    .line 31
    rsub-int/lit8 v6, v5, 0x8

    .line 32
    .line 33
    shr-int v6, v3, v6

    .line 34
    .line 35
    shl-int/2addr v6, v0

    .line 36
    iget v7, p0, Lb7/s;->a:I

    .line 37
    .line 38
    aget-byte v8, v2, v7

    .line 39
    .line 40
    and-int/2addr v6, v8

    .line 41
    shr-int v0, v6, v0

    .line 42
    .line 43
    sub-int/2addr p1, v5

    .line 44
    iget v6, p0, Lb7/s;->b:I

    .line 45
    .line 46
    add-int/2addr v6, v5

    .line 47
    iput v6, p0, Lb7/s;->b:I

    .line 48
    .line 49
    if-ne v6, v4, :cond_0

    .line 50
    .line 51
    iput v1, p0, Lb7/s;->b:I

    .line 52
    .line 53
    add-int/lit8 v7, v7, 0x1

    .line 54
    .line 55
    iput v7, p0, Lb7/s;->a:I

    .line 56
    .line 57
    :cond_0
    move v1, v0

    .line 58
    :cond_1
    if-lez p1, :cond_3

    .line 59
    .line 60
    :goto_0
    if-lt p1, v4, :cond_2

    .line 61
    .line 62
    shl-int/lit8 v0, v1, 0x8

    .line 63
    .line 64
    iget v1, p0, Lb7/s;->a:I

    .line 65
    .line 66
    aget-byte v5, v2, v1

    .line 67
    .line 68
    and-int/2addr v5, v3

    .line 69
    or-int/2addr v0, v5

    .line 70
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    iput v1, p0, Lb7/s;->a:I

    .line 73
    .line 74
    add-int/lit8 p1, p1, -0x8

    .line 75
    .line 76
    move v1, v0

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    if-lez p1, :cond_3

    .line 79
    .line 80
    rsub-int/lit8 v0, p1, 0x8

    .line 81
    .line 82
    shr-int/2addr v3, v0

    .line 83
    shl-int/2addr v3, v0

    .line 84
    shl-int/2addr v1, p1

    .line 85
    iget v4, p0, Lb7/s;->a:I

    .line 86
    .line 87
    aget-byte v2, v2, v4

    .line 88
    .line 89
    and-int/2addr v2, v3

    .line 90
    shr-int v0, v2, v0

    .line 91
    .line 92
    or-int/2addr v0, v1

    .line 93
    iget v1, p0, Lb7/s;->b:I

    .line 94
    .line 95
    add-int/2addr v1, p1

    .line 96
    iput v1, p0, Lb7/s;->b:I

    .line 97
    .line 98
    return v0

    .line 99
    :cond_3
    return v1

    .line 100
    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const/4 p1, 0x0

    .line 108
    return p1
.end method
