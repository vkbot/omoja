.class public final Lg7/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:[B


# direct methods
.method public constructor <init>([B)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lg7/b;->a:[B

    .line 10
    .line 11
    return-void
.end method

.method public static a([CI)I
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    const/4 v2, 0x4

    .line 4
    if-ge v0, v2, :cond_49

    .line 5
    .line 6
    add-int v2, v0, p1

    .line 7
    .line 8
    aget-char v2, p0, v2

    .line 9
    .line 10
    rsub-int/lit8 v3, v2, 0x40

    .line 11
    .line 12
    add-int/lit8 v4, v2, -0x5b

    .line 13
    .line 14
    and-int/2addr v3, v4

    .line 15
    ushr-int/lit8 v3, v3, 0x8

    .line 16
    .line 17
    add-int/lit8 v4, v2, -0x40

    .line 18
    .line 19
    and-int/2addr v3, v4

    .line 20
    add-int/lit8 v3, v3, -0x1

    .line 21
    .line 22
    rsub-int/lit8 v4, v2, 0x60

    .line 23
    .line 24
    add-int/lit8 v5, v2, -0x7b

    .line 25
    .line 26
    and-int/2addr v4, v5

    .line 27
    ushr-int/lit8 v4, v4, 0x8

    .line 28
    .line 29
    add-int/lit8 v5, v2, -0x46

    .line 30
    .line 31
    and-int/2addr v4, v5

    .line 32
    add-int/2addr v3, v4

    .line 33
    rsub-int/lit8 v4, v2, 0x2f

    .line 34
    .line 35
    add-int/lit8 v5, v2, -0x3a

    .line 36
    .line 37
    and-int/2addr v4, v5

    .line 38
    ushr-int/lit8 v4, v4, 0x8

    .line 39
    .line 40
    add-int/lit8 v5, v2, 0x5

    .line 41
    .line 42
    and-int/2addr v4, v5

    .line 43
    add-int/2addr v3, v4

    .line 44
    rsub-int/lit8 v4, v2, 0x2a

    .line 45
    .line 46
    add-int/lit8 v5, v2, -0x2c

    .line 47
    .line 48
    and-int/2addr v4, v5

    .line 49
    ushr-int/lit8 v4, v4, 0x8

    .line 50
    .line 51
    and-int/lit8 v4, v4, 0x3f

    .line 52
    .line 53
    add-int/2addr v3, v4

    .line 54
    rsub-int/lit8 v4, v2, 0x2e

    .line 55
    .line 56
    add-int/lit8 v2, v2, -0x30

    .line 57
    .line 58
    and-int/2addr v2, v4

    .line 59
    ushr-int/lit8 v2, v2, 0x8

    .line 60
    .line 61
    and-int/lit8 v2, v2, 0x40

    .line 62
    .line 63
    add-int/2addr v3, v2

    .line 64
    mul-int/lit8 v2, v0, 0x6

    .line 65
    .line 66
    rsub-int/lit8 v2, v2, 0x12

    .line 67
    .line 68
    shl-int v2, v3, v2

    .line 69
    .line 70
    or-int/2addr v1, v2

    .line 71
    add-int/lit8 v0, v0, 0x1

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_49
    return v1
.end method

.method public static b([BI[CI)V
    .registers 10

    .line 1
    aget-byte v0, p0, p1

    .line 2
    .line 3
    ushr-int/lit8 v1, v0, 0x2

    .line 4
    .line 5
    and-int/lit8 v1, v1, 0x3f

    .line 6
    .line 7
    int-to-byte v1, v1

    .line 8
    const/4 v2, 0x4

    .line 9
    shl-int/2addr v0, v2

    .line 10
    add-int/lit8 v3, p1, 0x1

    .line 11
    .line 12
    aget-byte v3, p0, v3

    .line 13
    .line 14
    and-int/lit16 v4, v3, 0xff

    .line 15
    .line 16
    ushr-int/2addr v4, v2

    .line 17
    or-int/2addr v0, v4

    .line 18
    and-int/lit8 v0, v0, 0x3f

    .line 19
    .line 20
    int-to-byte v0, v0

    .line 21
    const/4 v4, 0x2

    .line 22
    shl-int/2addr v3, v4

    .line 23
    add-int/2addr p1, v4

    .line 24
    aget-byte p0, p0, p1

    .line 25
    .line 26
    and-int/lit16 p1, p0, 0xff

    .line 27
    .line 28
    ushr-int/lit8 p1, p1, 0x6

    .line 29
    .line 30
    or-int/2addr p1, v3

    .line 31
    and-int/lit8 p1, p1, 0x3f

    .line 32
    .line 33
    int-to-byte p1, p1

    .line 34
    and-int/lit8 p0, p0, 0x3f

    .line 35
    .line 36
    int-to-byte p0, p0

    .line 37
    new-array v3, v2, [B

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    aput-byte v1, v3, v5

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    aput-byte v0, v3, v1

    .line 44
    .line 45
    aput-byte p1, v3, v4

    .line 46
    .line 47
    const/4 p1, 0x3

    .line 48
    aput-byte p0, v3, p1

    .line 49
    .line 50
    :goto_31
    if-ge v5, v2, :cond_5a

    .line 51
    .line 52
    add-int p0, v5, p3

    .line 53
    .line 54
    aget-byte v0, v3, v5

    .line 55
    .line 56
    add-int/lit8 v1, v0, 0x41

    .line 57
    .line 58
    rsub-int/lit8 v4, v0, 0x19

    .line 59
    .line 60
    ushr-int/lit8 v4, v4, 0x8

    .line 61
    .line 62
    and-int/lit8 v4, v4, 0x6

    .line 63
    .line 64
    add-int/2addr v1, v4

    .line 65
    rsub-int/lit8 v4, v0, 0x33

    .line 66
    .line 67
    ushr-int/lit8 v4, v4, 0x8

    .line 68
    .line 69
    and-int/lit8 v4, v4, 0x4b

    .line 70
    .line 71
    sub-int/2addr v1, v4

    .line 72
    rsub-int/lit8 v4, v0, 0x3d

    .line 73
    .line 74
    ushr-int/lit8 v4, v4, 0x8

    .line 75
    .line 76
    and-int/lit8 v4, v4, 0xf

    .line 77
    .line 78
    sub-int/2addr v1, v4

    .line 79
    rsub-int/lit8 v0, v0, 0x3e

    .line 80
    .line 81
    ushr-int/lit8 v0, v0, 0x8

    .line 82
    .line 83
    and-int/2addr v0, p1

    .line 84
    add-int/2addr v1, v0

    .line 85
    int-to-char v0, v1

    .line 86
    aput-char v0, p2, p0

    .line 87
    .line 88
    add-int/lit8 v5, v5, 0x1

    .line 89
    .line 90
    goto :goto_31

    .line 91
    :cond_5a
    return-void
.end method

.method public static c(Ljava/lang/String;)Lg7/b;
    .registers 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length v0, p0

    .line 6
    const/16 v1, 0x2c

    .line 7
    .line 8
    if-ne v0, v1, :cond_83

    .line 9
    .line 10
    const/16 v0, 0x2b

    .line 11
    .line 12
    aget-char v0, p0, v0

    .line 13
    .line 14
    const/16 v1, 0x3d

    .line 15
    .line 16
    if-ne v0, v1, :cond_83

    .line 17
    .line 18
    const/16 v0, 0x20

    .line 19
    .line 20
    new-array v0, v0, [B

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    move v2, v1

    .line 24
    move v3, v2

    .line 25
    :goto_18
    const/16 v4, 0xa

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    if-ge v2, v4, :cond_41

    .line 29
    .line 30
    mul-int/lit8 v4, v2, 0x4

    .line 31
    .line 32
    invoke-static {p0, v4}, Lg7/b;->a([CI)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    ushr-int/lit8 v6, v4, 0x1f

    .line 37
    .line 38
    or-int/2addr v3, v6

    .line 39
    mul-int/lit8 v6, v2, 0x3

    .line 40
    .line 41
    ushr-int/lit8 v7, v4, 0x10

    .line 42
    .line 43
    and-int/lit16 v7, v7, 0xff

    .line 44
    .line 45
    int-to-byte v7, v7

    .line 46
    aput-byte v7, v0, v6

    .line 47
    .line 48
    add-int/lit8 v7, v6, 0x1

    .line 49
    .line 50
    ushr-int/lit8 v8, v4, 0x8

    .line 51
    .line 52
    and-int/lit16 v8, v8, 0xff

    .line 53
    .line 54
    int-to-byte v8, v8

    .line 55
    aput-byte v8, v0, v7

    .line 56
    .line 57
    add-int/2addr v6, v5

    .line 58
    and-int/lit16 v4, v4, 0xff

    .line 59
    .line 60
    int-to-byte v4, v4

    .line 61
    aput-byte v4, v0, v6

    .line 62
    .line 63
    add-int/lit8 v2, v2, 0x1

    .line 64
    .line 65
    goto :goto_18

    .line 66
    :cond_41
    mul-int/lit8 v4, v2, 0x4

    .line 67
    .line 68
    aget-char v6, p0, v4

    .line 69
    .line 70
    add-int/lit8 v7, v4, 0x1

    .line 71
    .line 72
    aget-char v7, p0, v7

    .line 73
    .line 74
    add-int/2addr v4, v5

    .line 75
    aget-char p0, p0, v4

    .line 76
    .line 77
    const/4 v4, 0x4

    .line 78
    new-array v4, v4, [C

    .line 79
    .line 80
    aput-char v6, v4, v1

    .line 81
    .line 82
    const/4 v6, 0x1

    .line 83
    aput-char v7, v4, v6

    .line 84
    .line 85
    aput-char p0, v4, v5

    .line 86
    .line 87
    const/16 p0, 0x41

    .line 88
    .line 89
    const/4 v5, 0x3

    .line 90
    aput-char p0, v4, v5

    .line 91
    .line 92
    invoke-static {v4, v1}, Lg7/b;->a([CI)I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    ushr-int/lit8 v1, p0, 0x1f

    .line 97
    .line 98
    and-int/lit16 v4, p0, 0xff

    .line 99
    .line 100
    or-int/2addr v1, v4

    .line 101
    or-int/2addr v1, v3

    .line 102
    mul-int/2addr v2, v5

    .line 103
    ushr-int/lit8 v3, p0, 0x10

    .line 104
    .line 105
    and-int/lit16 v3, v3, 0xff

    .line 106
    .line 107
    int-to-byte v3, v3

    .line 108
    aput-byte v3, v0, v2

    .line 109
    .line 110
    add-int/2addr v2, v6

    .line 111
    ushr-int/lit8 p0, p0, 0x8

    .line 112
    .line 113
    and-int/lit16 p0, p0, 0xff

    .line 114
    .line 115
    int-to-byte p0, p0

    .line 116
    aput-byte p0, v0, v2

    .line 117
    .line 118
    if-nez v1, :cond_7d

    .line 119
    .line 120
    new-instance p0, Lg7/b;

    .line 121
    .line 122
    invoke-direct {p0, v0}, Lg7/b;-><init>([B)V

    .line 123
    .line 124
    .line 125
    return-object p0

    .line 126
    :cond_7d
    new-instance p0, Lg7/c;

    .line 127
    .line 128
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 129
    .line 130
    .line 131
    throw p0

    .line 132
    :cond_83
    new-instance p0, Lg7/c;

    .line 133
    .line 134
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 135
    .line 136
    .line 137
    throw p0
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .registers 9

    .line 1
    const/16 v0, 0x2c

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_6
    iget-object v3, p0, Lg7/b;->a:[B

    .line 8
    .line 9
    array-length v4, v3

    .line 10
    const/4 v5, 0x3

    .line 11
    div-int/2addr v4, v5

    .line 12
    if-ge v2, v4, :cond_17

    .line 13
    .line 14
    mul-int/lit8 v4, v2, 0x3

    .line 15
    .line 16
    mul-int/lit8 v5, v2, 0x4

    .line 17
    .line 18
    invoke-static {v3, v4, v0, v5}, Lg7/b;->b([BI[CI)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_6

    .line 24
    :cond_17
    mul-int/lit8 v4, v2, 0x3

    .line 25
    .line 26
    aget-byte v6, v3, v4

    .line 27
    .line 28
    const/4 v7, 0x1

    .line 29
    add-int/2addr v4, v7

    .line 30
    aget-byte v3, v3, v4

    .line 31
    .line 32
    new-array v4, v5, [B

    .line 33
    .line 34
    aput-byte v6, v4, v1

    .line 35
    .line 36
    aput-byte v3, v4, v7

    .line 37
    .line 38
    const/4 v3, 0x2

    .line 39
    aput-byte v1, v4, v3

    .line 40
    .line 41
    mul-int/lit8 v2, v2, 0x4

    .line 42
    .line 43
    invoke-static {v4, v1, v0, v2}, Lg7/b;->b([BI[CI)V

    .line 44
    .line 45
    .line 46
    const/16 v1, 0x2b

    .line 47
    .line 48
    const/16 v2, 0x3d

    .line 49
    .line 50
    aput-char v2, v0, v1

    .line 51
    .line 52
    new-instance v1, Ljava/lang/String;

    .line 53
    .line 54
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 55
    .line 56
    .line 57
    return-object v1
.end method

.method public final e()Ljava/lang/String;
    .registers 7

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_5
    iget-object v2, p0, Lg7/b;->a:[B

    .line 7
    .line 8
    array-length v3, v2

    .line 9
    if-ge v1, v3, :cond_37

    .line 10
    .line 11
    mul-int/lit8 v3, v1, 0x2

    .line 12
    .line 13
    aget-byte v2, v2, v1

    .line 14
    .line 15
    shr-int/lit8 v4, v2, 0x4

    .line 16
    .line 17
    and-int/lit8 v4, v4, 0xf

    .line 18
    .line 19
    add-int/lit8 v4, v4, 0x57

    .line 20
    .line 21
    shr-int/lit8 v5, v2, 0x4

    .line 22
    .line 23
    and-int/lit8 v5, v5, 0xf

    .line 24
    .line 25
    add-int/lit8 v5, v5, -0xa

    .line 26
    .line 27
    shr-int/lit8 v5, v5, 0x8

    .line 28
    .line 29
    and-int/lit8 v5, v5, -0x27

    .line 30
    .line 31
    add-int/2addr v4, v5

    .line 32
    int-to-char v4, v4

    .line 33
    aput-char v4, v0, v3

    .line 34
    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    and-int/lit8 v4, v2, 0xf

    .line 38
    .line 39
    add-int/lit8 v4, v4, 0x57

    .line 40
    .line 41
    and-int/lit8 v2, v2, 0xf

    .line 42
    .line 43
    add-int/lit8 v2, v2, -0xa

    .line 44
    .line 45
    shr-int/lit8 v2, v2, 0x8

    .line 46
    .line 47
    and-int/lit8 v2, v2, -0x27

    .line 48
    .line 49
    add-int/2addr v4, v2

    .line 50
    int-to-char v2, v4

    .line 51
    aput-char v2, v0, v3

    .line 52
    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_5

    .line 56
    :cond_37
    new-instance v1, Ljava/lang/String;

    .line 57
    .line 58
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 59
    .line 60
    .line 61
    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    if-ne p1, p0, :cond_4

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_4
    if-eqz p1, :cond_1a

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-class v1, Lg7/b;

    .line 12
    .line 13
    if-eq v0, v1, :cond_f

    .line 14
    .line 15
    goto :goto_1a

    .line 16
    :cond_f
    check-cast p1, Lg7/b;

    .line 17
    .line 18
    iget-object v0, p0, Lg7/b;->a:[B

    .line 19
    .line 20
    iget-object p1, p1, Lg7/b;->a:[B

    .line 21
    .line 22
    invoke-static {v0, p1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method public final hashCode()I
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    iget-object v2, p0, Lg7/b;->a:[B

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    div-int/lit8 v3, v3, 0x4

    .line 7
    .line 8
    if-ge v0, v3, :cond_26

    .line 9
    .line 10
    mul-int/lit8 v3, v0, 0x4

    .line 11
    .line 12
    aget-byte v4, v2, v3

    .line 13
    .line 14
    add-int/lit8 v5, v3, 0x1

    .line 15
    .line 16
    aget-byte v5, v2, v5

    .line 17
    .line 18
    shr-int/lit8 v5, v5, 0x8

    .line 19
    .line 20
    add-int/2addr v4, v5

    .line 21
    add-int/lit8 v5, v3, 0x2

    .line 22
    .line 23
    aget-byte v5, v2, v5

    .line 24
    .line 25
    shr-int/lit8 v5, v5, 0x10

    .line 26
    .line 27
    add-int/2addr v4, v5

    .line 28
    add-int/lit8 v3, v3, 0x3

    .line 29
    .line 30
    aget-byte v2, v2, v3

    .line 31
    .line 32
    shr-int/lit8 v2, v2, 0x18

    .line 33
    .line 34
    add-int/2addr v4, v2

    .line 35
    xor-int/2addr v1, v4

    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_26
    return v1
.end method
