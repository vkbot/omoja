.class public final Lj7/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:D

.field public final b:D


# direct methods
.method public constructor <init>(DD)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2}, Ljava/lang/Double;->isFinite(D)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {p3, p4}, Ljava/lang/Double;->isFinite(D)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    const-wide v2, 0x4056800000000000L    # 90.0

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    cmpl-double v0, v0, v2

    .line 26
    .line 27
    if-gtz v0, :cond_0

    .line 28
    .line 29
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    const-wide v2, 0x4066800000000000L    # 180.0

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    cmpl-double v0, v0, v2

    .line 39
    .line 40
    if-gtz v0, :cond_0

    .line 41
    .line 42
    iput-wide p1, p0, Lj7/a;->a:D

    .line 43
    .line 44
    iput-wide p3, p0, Lj7/a;->b:D

    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    const/16 p1, 0x2d

    .line 48
    .line 49
    new-array p1, p1, [B

    .line 50
    .line 51
    fill-array-data p1, :array_0

    .line 52
    .line 53
    .line 54
    const/16 p2, 0x8

    .line 55
    .line 56
    new-array p2, p2, [B

    .line 57
    .line 58
    fill-array-data p2, :array_1

    .line 59
    .line 60
    .line 61
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    throw p1

    .line 70
    nop

    .line 71
    :array_0
    .array-data 1
        0x68t
        -0x25t
        0x5t
        0x6bt
        -0xbt
        -0x37t
        0x44t
        -0x6at
        0x69t
        -0x3at
        0x4t
        0x5et
        -0xbt
        -0x3at
        0x44t
        -0x6et
        0x69t
        -0x3ct
        0x5t
        0x63t
        -0xct
        -0x8t
        0x44t
        -0x63t
        -0x68t
        -0x6at
        0x6ft
        0xet
        -0x65t
        -0x5dt
        0x2at
        -0x7t
        0x38t
        -0x6at
        0x61t
        0xet
        -0x63t
        -0x5dt
        0x29t
        -0x8t
        0x8t
        -0x69t
        0x57t
        0xft
        -0x52t
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    nop

    .line 99
    :array_1
    .array-data 1
        -0x48t
        0x46t
        -0x2bt
        -0x22t
        0x25t
        0x73t
        -0x6ct
        0x28t
    .end array-data
.end method

.method public static a(Lorg/json/JSONObject;)Lj7/a;
    .locals 6

    .line 1
    new-instance v0, Lj7/a;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    new-array v2, v1, [B

    .line 6
    .line 7
    fill-array-data v2, :array_0

    .line 8
    .line 9
    .line 10
    new-array v3, v1, [B

    .line 11
    .line 12
    fill-array-data v3, :array_1

    .line 13
    .line 14
    .line 15
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    const/16 v4, 0x9

    .line 24
    .line 25
    new-array v4, v4, [B

    .line 26
    .line 27
    fill-array-data v4, :array_2

    .line 28
    .line 29
    .line 30
    new-array v1, v1, [B

    .line 31
    .line 32
    fill-array-data v1, :array_3

    .line 33
    .line 34
    .line 35
    invoke-static {v4, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 40
    .line 41
    .line 42
    move-result-wide v4

    .line 43
    invoke-direct {v0, v2, v3, v4, v5}, Lj7/a;-><init>(DD)V

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :array_0
    .array-data 1
        0x23t
        0x45t
        -0x3t
        0x77t
        0x29t
        -0x12t
        0xet
        -0x25t
    .end array-data

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    :array_1
    .array-data 1
        0x4ft
        0x24t
        -0x77t
        0x1et
        0x5dt
        -0x65t
        0x6at
        -0x42t
    .end array-data

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    :array_2
    .array-data 1
        -0x3at
        -0x5ct
        -0x72t
        -0x42t
        -0xft
        -0x34t
        0x54t
        -0x3at
        -0x31t
    .end array-data

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    nop

    .line 73
    :array_3
    .array-data 1
        -0x56t
        -0x35t
        -0x20t
        -0x27t
        -0x68t
        -0x48t
        0x21t
        -0x5et
    .end array-data
.end method
