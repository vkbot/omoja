.class public final Lc1/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:D

.field public final b:D


# direct methods
.method public constructor <init>(DD)V
    .registers 10

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
    const/4 v1, 0x0

    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    if-eqz v0, :cond_4f

    .line 12
    .line 13
    const-wide v3, -0x3fa9800000000000L    # -90.0

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    cmpg-double v0, p1, v3

    .line 19
    .line 20
    if-ltz v0, :cond_4f

    .line 21
    .line 22
    const-wide v3, 0x4056800000000000L    # 90.0

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    cmpl-double v0, p1, v3

    .line 28
    .line 29
    if-gtz v0, :cond_4f

    .line 30
    .line 31
    invoke-static {p3, p4}, Ljava/lang/Double;->isFinite(D)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3b

    .line 36
    .line 37
    const-wide v3, -0x3f99800000000000L    # -180.0

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    cmpg-double v0, p3, v3

    .line 43
    .line 44
    if-ltz v0, :cond_3b

    .line 45
    .line 46
    const-wide v3, 0x4066800000000000L    # 180.0

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    cmpl-double v0, p3, v3

    .line 52
    .line 53
    if-gtz v0, :cond_3b

    .line 54
    .line 55
    iput-wide p1, p0, Lc1/b;->a:D

    .line 56
    .line 57
    iput-wide p3, p0, Lc1/b;->b:D

    .line 58
    .line 59
    return-void

    .line 60
    :cond_3b
    const/16 p1, 0x37

    .line 61
    .line 62
    new-array p1, p1, [B

    .line 63
    .line 64
    fill-array-data p1, :array_64

    .line 65
    .line 66
    .line 67
    new-array p2, v2, [B

    .line 68
    .line 69
    fill-array-data p2, :array_84

    .line 70
    .line 71
    .line 72
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v1

    .line 80
    :cond_4f
    const/16 p1, 0x33

    .line 81
    .line 82
    new-array p1, p1, [B

    .line 83
    .line 84
    fill-array-data p1, :array_8c

    .line 85
    .line 86
    .line 87
    new-array p2, v2, [B

    .line 88
    .line 89
    fill-array-data p2, :array_aa

    .line 90
    .line 91
    .line 92
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw v1

    .line 100
    nop

    .line 101
    :array_64
    .array-data 1
        -0x26t
        -0x36t
        0xdt
        0x43t
        0x31t
        -0x47t
        0xct
        -0x43t
        -0x26t
        -0x20t
        0xct
        0x7ft
        0x31t
        -0x4et
        -0x4t
        -0x22t
        -0x42t
        -0x72t
        0x63t
        0x2dt
        0x5at
        -0x2et
        0x6at
        -0x22t
        -0x49t
        -0x72t
        0x6dt
        -0x23t
        0x31t
        -0x4dt
        0xdt
        -0x7bt
        -0x25t
        -0x24t
        0xct
        0x71t
        -0x3ft
        -0x2et
        0x62t
        -0x21t
        -0x78t
        0x7et
        -0x10t
        -0x34t
        -0x27t
        0x32t
        -0x4t
        -0x22t
        -0x42t
        -0x72t
        0x63t
        -0x23t
        -0x30t
        0x3at
        -0x14t
    .end array-data

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    :array_84
    .array-data 1
        0xat
        0x5et
        -0x23t
        -0x3t
        -0x1ft
        0x2t
        -0x24t
        0xet
    .end array-data

    :array_8c
    .array-data 1
        0xft
        0x38t
        0x3ct
        0x2dt
        0x3ct
        0x2bt
        0x64t
        0x1ct
        0xet
        0x12t
        0x3ct
        0x25t
        -0x33t
        0x7bt
        0x0t
        0x72t
        0x61t
        0x40t
        0x57t
        0x45t
        0x5bt
        0x7bt
        0x9t
        0x72t
        0x6ft
        -0x50t
        0x3ct
        0x24t
        0x3ct
        0x20t
        0x65t
        0x20t
        0xet
        0x1ct
        -0x34t
        0x45t
        0x53t
        0x7at
        0x36t
        -0x7et
        -0xet
        -0x57t
        -0x24t
        -0x4bt
        0x3dt
        0x1ft
        0x64t
        0x1ct
        -0x1t
        -0x57t
        -0x24t
    .end array-data

    :array_aa
    .array-data 1
        -0x21t
        -0x70t
        -0x14t
        -0x6bt
        -0x13t
        -0x55t
        -0x4ct
        -0x5et
    .end array-data
.end method
