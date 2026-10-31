.class public final Lx0/m;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lx0/n;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:I

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lx0/m;->a:Ljava/lang/String;

    .line 13
    .line 14
    const/16 v0, 0xc

    .line 15
    .line 16
    new-array v0, v0, [B

    .line 17
    .line 18
    fill-array-data v0, :array_54

    .line 19
    .line 20
    .line 21
    const/16 v1, 0x8

    .line 22
    .line 23
    new-array v2, v1, [B

    .line 24
    .line 25
    fill-array-data v2, :array_5e

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lx0/m;->b:Ljava/lang/String;

    .line 33
    .line 34
    sget-object v0, Lx0/n;->b:Lx0/n;

    .line 35
    .line 36
    iput-object v0, p0, Lx0/m;->c:Lx0/n;

    .line 37
    .line 38
    const/16 v0, 0xe

    .line 39
    .line 40
    new-array v2, v0, [B

    .line 41
    .line 42
    fill-array-data v2, :array_66

    .line 43
    .line 44
    .line 45
    new-array v3, v1, [B

    .line 46
    .line 47
    fill-array-data v3, :array_72

    .line 48
    .line 49
    .line 50
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iput-object v2, p0, Lx0/m;->d:Ljava/lang/String;

    .line 55
    .line 56
    new-array v0, v0, [B

    .line 57
    .line 58
    fill-array-data v0, :array_7a

    .line 59
    .line 60
    .line 61
    new-array v1, v1, [B

    .line 62
    .line 63
    fill-array-data v1, :array_86

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Lx0/m;->e:Ljava/lang/String;

    .line 71
    .line 72
    const/16 v0, 0x10

    .line 73
    .line 74
    iput v0, p0, Lx0/m;->g:I

    .line 75
    .line 76
    const/16 v1, 0x34

    .line 77
    .line 78
    iput v1, p0, Lx0/m;->h:I

    .line 79
    .line 80
    iput v0, p0, Lx0/m;->i:I

    .line 81
    .line 82
    iput v0, p0, Lx0/m;->j:I

    .line 83
    .line 84
    return-void

    .line 85
    :array_54
    .array-data 1
        -0x5ft
        -0x44t
        0x2ft
        -0x7ct
        -0x1ct
        0x75t
        -0x4bt
        -0x80t
        -0x5ft
        -0x64t
        0x2ft
        -0x77t
    .end array-data

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
    :array_5e
    .array-data 1
        0x71t
        0x26t
        -0x1t
        0x39t
        0x34t
        -0x35t
        0x65t
        0x3ft
    .end array-data

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    :array_66
    .array-data 1
        -0x2et
        0x40t
        -0x6t
        0x2ct
        -0x7at
        0x64t
        -0x75t
        -0x64t
        -0x18t
        0x58t
        -0x12t
        0x2dt
        -0x37t
        0x4ft
    .end array-data

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
    nop

    .line 115
    :array_72
    .array-data 1
        -0x49t
        0x2et
        -0x71t
        0x41t
        -0x44t
        0x2at
        -0x1ct
        -0x18t
    .end array-data

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    :array_7a
    .array-data 1
        0x7ct
        -0x19t
        0x23t
        0x44t
        -0x48t
        -0x71t
        -0x2et
        -0x73t
        0x46t
        -0x1t
        0x37t
        0x45t
        -0x9t
        -0x5ct
    .end array-data

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
    .line 134
    nop

    .line 135
    :array_86
    .array-data 1
        0x19t
        -0x77t
        0x56t
        0x29t
        -0x7et
        -0x3ft
        -0x43t
        -0x7t
    .end array-data
.end method


# virtual methods
.method public final a()I
    .registers 3

    .line 1
    iget-object v0, p0, Lx0/m;->c:Lx0/n;

    .line 2
    .line 3
    sget-object v1, Lx0/n;->b:Lx0/n;

    .line 4
    .line 5
    if-eq v0, v1, :cond_e

    .line 6
    .line 7
    sget-object v1, Lx0/n;->c:Lx0/n;

    .line 8
    .line 9
    if-ne v0, v1, :cond_b

    .line 10
    .line 11
    goto :goto_e

    .line 12
    :cond_b
    const/16 v0, 0x58

    .line 13
    .line 14
    return v0

    .line 15
    :cond_e
    :goto_e
    const/16 v0, 0x4c

    .line 16
    .line 17
    return v0
.end method

.method public final b()I
    .registers 3

    .line 1
    iget-object v0, p0, Lx0/m;->c:Lx0/n;

    .line 2
    .line 3
    sget-object v1, Lx0/n;->c:Lx0/n;

    .line 4
    .line 5
    if-ne v0, v1, :cond_9

    .line 6
    .line 7
    const/16 v0, 0x88

    .line 8
    .line 9
    return v0

    .line 10
    :cond_9
    const/16 v0, 0x58

    .line 11
    .line 12
    return v0
.end method
