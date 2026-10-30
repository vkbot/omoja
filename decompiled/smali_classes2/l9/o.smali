.class public Ll9/o;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final e:Ll9/o;


# instance fields
.field public final b:[B

.field public transient c:I

.field public transient d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ll9/o;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [B

    .line 5
    .line 6
    invoke-direct {v0, v1}, Ll9/o;-><init>([B)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Ll9/o;->e:Ll9/o;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ll9/o;->b:[B

    .line 8
    .line 9
    return-void
.end method

.method public static final varargs g([B)Ll9/o;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ll9/o;

    .line 5
    .line 6
    array-length v1, p0

    .line 7
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, p0}, Ll9/o;-><init>([B)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 13

    .line 1
    sget-object v0, Ll9/a;->a:[B

    .line 2
    .line 3
    iget-object v1, p0, Ll9/o;->b:[B

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    array-length v2, v1

    .line 12
    const/4 v3, 0x2

    .line 13
    add-int/2addr v2, v3

    .line 14
    div-int/lit8 v2, v2, 0x3

    .line 15
    .line 16
    mul-int/lit8 v2, v2, 0x4

    .line 17
    .line 18
    new-array v2, v2, [B

    .line 19
    .line 20
    array-length v4, v1

    .line 21
    array-length v5, v1

    .line 22
    rem-int/lit8 v5, v5, 0x3

    .line 23
    .line 24
    sub-int/2addr v4, v5

    .line 25
    const/4 v5, 0x0

    .line 26
    move v6, v5

    .line 27
    :goto_0
    if-ge v5, v4, :cond_0

    .line 28
    .line 29
    add-int/lit8 v7, v5, 0x1

    .line 30
    .line 31
    aget-byte v8, v1, v5

    .line 32
    .line 33
    add-int/lit8 v9, v5, 0x2

    .line 34
    .line 35
    aget-byte v7, v1, v7

    .line 36
    .line 37
    add-int/lit8 v5, v5, 0x3

    .line 38
    .line 39
    aget-byte v9, v1, v9

    .line 40
    .line 41
    add-int/lit8 v10, v6, 0x1

    .line 42
    .line 43
    and-int/lit16 v11, v8, 0xff

    .line 44
    .line 45
    shr-int/2addr v11, v3

    .line 46
    aget-byte v11, v0, v11

    .line 47
    .line 48
    aput-byte v11, v2, v6

    .line 49
    .line 50
    add-int/lit8 v11, v6, 0x2

    .line 51
    .line 52
    and-int/lit8 v8, v8, 0x3

    .line 53
    .line 54
    shl-int/lit8 v8, v8, 0x4

    .line 55
    .line 56
    and-int/lit16 v12, v7, 0xff

    .line 57
    .line 58
    shr-int/lit8 v12, v12, 0x4

    .line 59
    .line 60
    or-int/2addr v8, v12

    .line 61
    aget-byte v8, v0, v8

    .line 62
    .line 63
    aput-byte v8, v2, v10

    .line 64
    .line 65
    add-int/lit8 v8, v6, 0x3

    .line 66
    .line 67
    and-int/lit8 v7, v7, 0xf

    .line 68
    .line 69
    shl-int/2addr v7, v3

    .line 70
    and-int/lit16 v10, v9, 0xff

    .line 71
    .line 72
    shr-int/lit8 v10, v10, 0x6

    .line 73
    .line 74
    or-int/2addr v7, v10

    .line 75
    aget-byte v7, v0, v7

    .line 76
    .line 77
    aput-byte v7, v2, v11

    .line 78
    .line 79
    add-int/lit8 v6, v6, 0x4

    .line 80
    .line 81
    and-int/lit8 v7, v9, 0x3f

    .line 82
    .line 83
    aget-byte v7, v0, v7

    .line 84
    .line 85
    aput-byte v7, v2, v8

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    array-length v7, v1

    .line 89
    sub-int/2addr v7, v4

    .line 90
    const/4 v4, 0x1

    .line 91
    const/16 v8, 0x3d

    .line 92
    .line 93
    if-eq v7, v4, :cond_2

    .line 94
    .line 95
    if-eq v7, v3, :cond_1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_1
    add-int/lit8 v4, v5, 0x1

    .line 99
    .line 100
    aget-byte v5, v1, v5

    .line 101
    .line 102
    aget-byte v1, v1, v4

    .line 103
    .line 104
    add-int/lit8 v4, v6, 0x1

    .line 105
    .line 106
    and-int/lit16 v7, v5, 0xff

    .line 107
    .line 108
    shr-int/2addr v7, v3

    .line 109
    aget-byte v7, v0, v7

    .line 110
    .line 111
    aput-byte v7, v2, v6

    .line 112
    .line 113
    add-int/lit8 v7, v6, 0x2

    .line 114
    .line 115
    and-int/lit8 v5, v5, 0x3

    .line 116
    .line 117
    shl-int/lit8 v5, v5, 0x4

    .line 118
    .line 119
    and-int/lit16 v9, v1, 0xff

    .line 120
    .line 121
    shr-int/lit8 v9, v9, 0x4

    .line 122
    .line 123
    or-int/2addr v5, v9

    .line 124
    aget-byte v5, v0, v5

    .line 125
    .line 126
    aput-byte v5, v2, v4

    .line 127
    .line 128
    add-int/lit8 v6, v6, 0x3

    .line 129
    .line 130
    and-int/lit8 v1, v1, 0xf

    .line 131
    .line 132
    shl-int/2addr v1, v3

    .line 133
    aget-byte v0, v0, v1

    .line 134
    .line 135
    aput-byte v0, v2, v7

    .line 136
    .line 137
    aput-byte v8, v2, v6

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_2
    aget-byte v1, v1, v5

    .line 141
    .line 142
    add-int/lit8 v4, v6, 0x1

    .line 143
    .line 144
    and-int/lit16 v5, v1, 0xff

    .line 145
    .line 146
    shr-int/lit8 v3, v5, 0x2

    .line 147
    .line 148
    aget-byte v3, v0, v3

    .line 149
    .line 150
    aput-byte v3, v2, v6

    .line 151
    .line 152
    add-int/lit8 v3, v6, 0x2

    .line 153
    .line 154
    and-int/lit8 v1, v1, 0x3

    .line 155
    .line 156
    shl-int/lit8 v1, v1, 0x4

    .line 157
    .line 158
    aget-byte v0, v0, v1

    .line 159
    .line 160
    aput-byte v0, v2, v4

    .line 161
    .line 162
    add-int/lit8 v6, v6, 0x3

    .line 163
    .line 164
    aput-byte v8, v2, v3

    .line 165
    .line 166
    aput-byte v8, v2, v6

    .line 167
    .line 168
    :goto_1
    new-instance v0, Ljava/lang/String;

    .line 169
    .line 170
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 171
    .line 172
    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 173
    .line 174
    .line 175
    return-object v0
.end method

.method public b(Ljava/lang/String;)Ll9/o;
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0}, Ll9/o;->c()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Ll9/o;->b:[B

    .line 11
    .line 12
    invoke-virtual {p1, v2, v0, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance v0, Ll9/o;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p1}, Ll9/o;-><init>([B)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Ll9/o;->b:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 7

    .line 1
    check-cast p1, Ll9/o;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ll9/o;->c()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1}, Ll9/o;->c()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    move v4, v3

    .line 20
    :goto_0
    if-ge v4, v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, v4}, Ll9/o;->f(I)B

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    and-int/lit16 v5, v5, 0xff

    .line 27
    .line 28
    invoke-virtual {p1, v4}, Ll9/o;->f(I)B

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    and-int/lit16 v6, v6, 0xff

    .line 33
    .line 34
    if-ne v5, v6, :cond_0

    .line 35
    .line 36
    add-int/lit8 v4, v4, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    if-ge v5, v6, :cond_3

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    if-ne v0, v1, :cond_2

    .line 43
    .line 44
    return v3

    .line 45
    :cond_2
    if-ge v0, v1, :cond_3

    .line 46
    .line 47
    :goto_1
    const/4 p1, -0x1

    .line 48
    return p1

    .line 49
    :cond_3
    const/4 p1, 0x1

    .line 50
    return p1
.end method

.method public d()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Ll9/o;->b:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    mul-int/lit8 v1, v1, 0x2

    .line 5
    .line 6
    new-array v1, v1, [C

    .line 7
    .line 8
    array-length v2, v0

    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v3

    .line 11
    :goto_0
    if-ge v3, v2, :cond_0

    .line 12
    .line 13
    aget-byte v5, v0, v3

    .line 14
    .line 15
    add-int/lit8 v6, v4, 0x1

    .line 16
    .line 17
    shr-int/lit8 v7, v5, 0x4

    .line 18
    .line 19
    and-int/lit8 v7, v7, 0xf

    .line 20
    .line 21
    sget-object v8, Lm9/b;->a:[C

    .line 22
    .line 23
    aget-char v7, v8, v7

    .line 24
    .line 25
    aput-char v7, v1, v4

    .line 26
    .line 27
    add-int/lit8 v4, v4, 0x2

    .line 28
    .line 29
    and-int/lit8 v5, v5, 0xf

    .line 30
    .line 31
    aget-char v5, v8, v5

    .line 32
    .line 33
    aput-char v5, v1, v6

    .line 34
    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {v1}, Lkotlin/text/StringsKt;->concatToString([C)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method public e()[B
    .locals 1

    .line 1
    iget-object v0, p0, Ll9/o;->b:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Ll9/o;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p1, Ll9/o;

    .line 10
    .line 11
    invoke-virtual {p1}, Ll9/o;->c()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v2, p0, Ll9/o;->b:[B

    .line 16
    .line 17
    array-length v3, v2

    .line 18
    if-ne v0, v3, :cond_1

    .line 19
    .line 20
    array-length v0, v2

    .line 21
    invoke-virtual {p1, v1, v1, v0, v2}, Ll9/o;->h(III[B)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    :goto_0
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_1
    return v1
.end method

.method public f(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Ll9/o;->b:[B

    .line 2
    .line 3
    aget-byte p1, v0, p1

    .line 4
    .line 5
    return p1
.end method

.method public h(III[B)Z
    .locals 5

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-ltz p1, :cond_2

    .line 6
    .line 7
    iget-object v1, p0, Ll9/o;->b:[B

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    sub-int/2addr v2, p3

    .line 11
    if-gt p1, v2, :cond_2

    .line 12
    .line 13
    if-ltz p2, :cond_2

    .line 14
    .line 15
    array-length v2, p4

    .line 16
    sub-int/2addr v2, p3

    .line 17
    if-gt p2, v2, :cond_2

    .line 18
    .line 19
    move v2, v0

    .line 20
    :goto_0
    if-ge v2, p3, :cond_1

    .line 21
    .line 22
    add-int v3, v2, p1

    .line 23
    .line 24
    aget-byte v3, v1, v3

    .line 25
    .line 26
    add-int v4, v2, p2

    .line 27
    .line 28
    aget-byte v4, p4, v4

    .line 29
    .line 30
    if-eq v3, v4, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, 0x1

    .line 37
    return p1

    .line 38
    :cond_2
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Ll9/o;->c:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Ll9/o;->b:[B

    .line 7
    .line 8
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Ll9/o;->c:I

    .line 13
    .line 14
    return v0
.end method

.method public i(Ll9/o;I)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ll9/o;->b:[B

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v1, v1, p2, v0}, Ll9/o;->h(III[B)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public j()Ll9/o;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Ll9/o;->b:[B

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_5

    .line 6
    .line 7
    aget-byte v2, v1, v0

    .line 8
    .line 9
    const/16 v3, 0x41

    .line 10
    .line 11
    if-lt v2, v3, :cond_4

    .line 12
    .line 13
    const/16 v4, 0x5a

    .line 14
    .line 15
    if-le v2, v4, :cond_0

    .line 16
    .line 17
    goto :goto_3

    .line 18
    :cond_0
    array-length v5, v1

    .line 19
    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    add-int/lit8 v5, v0, 0x1

    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x20

    .line 26
    .line 27
    int-to-byte v2, v2

    .line 28
    aput-byte v2, v1, v0

    .line 29
    .line 30
    :goto_1
    array-length v0, v1

    .line 31
    if-ge v5, v0, :cond_3

    .line 32
    .line 33
    aget-byte v0, v1, v5

    .line 34
    .line 35
    if-lt v0, v3, :cond_2

    .line 36
    .line 37
    if-le v0, v4, :cond_1

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_1
    add-int/lit8 v0, v0, 0x20

    .line 41
    .line 42
    int-to-byte v0, v0

    .line 43
    aput-byte v0, v1, v5

    .line 44
    .line 45
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    new-instance v0, Ll9/o;

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ll9/o;-><init>([B)V

    .line 51
    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_5
    return-object p0
.end method

.method public k()[B
    .locals 2

    .line 1
    iget-object v0, p0, Ll9/o;->b:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Ll9/o;->d:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ll9/o;->e()[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/lang/String;

    .line 13
    .line 14
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 15
    .line 16
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Ll9/o;->d:Ljava/lang/String;

    .line 20
    .line 21
    return-object v1

    .line 22
    :cond_0
    return-object v0
.end method

.method public m(ILl9/l;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Ll9/o;->b:[B

    .line 3
    .line 4
    invoke-virtual {p2, v1, v0, p1}, Ll9/l;->write([BII)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Ll9/o;->b:[B

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    const-string v1, "[size=0]"

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    array-length v2, v1

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    :cond_1
    :goto_0
    const/16 v8, 0x40

    .line 16
    .line 17
    if-ge v4, v2, :cond_2f

    .line 18
    .line 19
    aget-byte v9, v1, v4

    .line 20
    .line 21
    const v10, 0xfffd

    .line 22
    .line 23
    .line 24
    const/16 v11, 0xa0

    .line 25
    .line 26
    const/16 v12, 0x7f

    .line 27
    .line 28
    const/16 v13, 0x20

    .line 29
    .line 30
    const/16 v14, 0xd

    .line 31
    .line 32
    const/16 v15, 0xa

    .line 33
    .line 34
    const/high16 v3, 0x10000

    .line 35
    .line 36
    const/16 v16, 0x2

    .line 37
    .line 38
    const/16 v17, 0x1

    .line 39
    .line 40
    if-ltz v9, :cond_c

    .line 41
    .line 42
    add-int/lit8 v18, v6, 0x1

    .line 43
    .line 44
    if-ne v6, v8, :cond_2

    .line 45
    .line 46
    goto/16 :goto_6

    .line 47
    .line 48
    :cond_2
    if-eq v9, v15, :cond_4

    .line 49
    .line 50
    if-eq v9, v14, :cond_4

    .line 51
    .line 52
    if-ltz v9, :cond_3

    .line 53
    .line 54
    if-ge v9, v13, :cond_3

    .line 55
    .line 56
    goto/16 :goto_5

    .line 57
    .line 58
    :cond_3
    if-gt v12, v9, :cond_4

    .line 59
    .line 60
    if-ge v9, v11, :cond_4

    .line 61
    .line 62
    goto/16 :goto_5

    .line 63
    .line 64
    :cond_4
    if-ne v9, v10, :cond_5

    .line 65
    .line 66
    goto/16 :goto_5

    .line 67
    .line 68
    :cond_5
    if-ge v9, v3, :cond_6

    .line 69
    .line 70
    move/from16 v6, v17

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_6
    move/from16 v6, v16

    .line 74
    .line 75
    :goto_1
    add-int/2addr v5, v6

    .line 76
    add-int/lit8 v4, v4, 0x1

    .line 77
    .line 78
    :goto_2
    move/from16 v6, v18

    .line 79
    .line 80
    if-ge v4, v2, :cond_1

    .line 81
    .line 82
    aget-byte v9, v1, v4

    .line 83
    .line 84
    if-ltz v9, :cond_1

    .line 85
    .line 86
    add-int/lit8 v4, v4, 0x1

    .line 87
    .line 88
    add-int/lit8 v18, v6, 0x1

    .line 89
    .line 90
    if-ne v6, v8, :cond_7

    .line 91
    .line 92
    goto/16 :goto_6

    .line 93
    .line 94
    :cond_7
    if-eq v9, v15, :cond_9

    .line 95
    .line 96
    if-eq v9, v14, :cond_9

    .line 97
    .line 98
    if-ltz v9, :cond_8

    .line 99
    .line 100
    if-ge v9, v13, :cond_8

    .line 101
    .line 102
    goto/16 :goto_5

    .line 103
    .line 104
    :cond_8
    if-gt v12, v9, :cond_9

    .line 105
    .line 106
    if-ge v9, v11, :cond_9

    .line 107
    .line 108
    goto/16 :goto_5

    .line 109
    .line 110
    :cond_9
    if-ne v9, v10, :cond_a

    .line 111
    .line 112
    goto/16 :goto_5

    .line 113
    .line 114
    :cond_a
    if-ge v9, v3, :cond_b

    .line 115
    .line 116
    move/from16 v6, v17

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_b
    move/from16 v6, v16

    .line 120
    .line 121
    :goto_3
    add-int/2addr v5, v6

    .line 122
    goto :goto_2

    .line 123
    :cond_c
    shr-int/lit8 v7, v9, 0x5

    .line 124
    .line 125
    const/4 v3, -0x2

    .line 126
    const/16 v10, 0x80

    .line 127
    .line 128
    if-ne v7, v3, :cond_15

    .line 129
    .line 130
    add-int/lit8 v3, v4, 0x1

    .line 131
    .line 132
    if-gt v2, v3, :cond_d

    .line 133
    .line 134
    if-ne v6, v8, :cond_2e

    .line 135
    .line 136
    goto/16 :goto_6

    .line 137
    .line 138
    :cond_d
    aget-byte v3, v1, v3

    .line 139
    .line 140
    and-int/lit16 v7, v3, 0xc0

    .line 141
    .line 142
    if-ne v7, v10, :cond_14

    .line 143
    .line 144
    xor-int/lit16 v3, v3, 0xf80

    .line 145
    .line 146
    shl-int/lit8 v7, v9, 0x6

    .line 147
    .line 148
    xor-int/2addr v3, v7

    .line 149
    if-ge v3, v10, :cond_e

    .line 150
    .line 151
    if-ne v6, v8, :cond_2e

    .line 152
    .line 153
    goto/16 :goto_6

    .line 154
    .line 155
    :cond_e
    add-int/lit8 v7, v6, 0x1

    .line 156
    .line 157
    if-ne v6, v8, :cond_f

    .line 158
    .line 159
    goto/16 :goto_6

    .line 160
    .line 161
    :cond_f
    if-eq v3, v15, :cond_11

    .line 162
    .line 163
    if-eq v3, v14, :cond_11

    .line 164
    .line 165
    if-ltz v3, :cond_10

    .line 166
    .line 167
    if-ge v3, v13, :cond_10

    .line 168
    .line 169
    goto/16 :goto_5

    .line 170
    .line 171
    :cond_10
    if-gt v12, v3, :cond_11

    .line 172
    .line 173
    if-ge v3, v11, :cond_11

    .line 174
    .line 175
    goto/16 :goto_5

    .line 176
    .line 177
    :cond_11
    const v6, 0xfffd

    .line 178
    .line 179
    .line 180
    if-ne v3, v6, :cond_12

    .line 181
    .line 182
    goto/16 :goto_5

    .line 183
    .line 184
    :cond_12
    const/high16 v6, 0x10000

    .line 185
    .line 186
    if-ge v3, v6, :cond_13

    .line 187
    .line 188
    move/from16 v16, v17

    .line 189
    .line 190
    :cond_13
    add-int v5, v5, v16

    .line 191
    .line 192
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 193
    .line 194
    add-int/lit8 v4, v4, 0x2

    .line 195
    .line 196
    :goto_4
    move v6, v7

    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_14
    if-ne v6, v8, :cond_2e

    .line 200
    .line 201
    goto/16 :goto_6

    .line 202
    .line 203
    :cond_15
    shr-int/lit8 v7, v9, 0x4

    .line 204
    .line 205
    const v11, 0xe000

    .line 206
    .line 207
    .line 208
    const v12, 0xd800

    .line 209
    .line 210
    .line 211
    if-ne v7, v3, :cond_20

    .line 212
    .line 213
    add-int/lit8 v3, v4, 0x2

    .line 214
    .line 215
    if-gt v2, v3, :cond_16

    .line 216
    .line 217
    if-ne v6, v8, :cond_2e

    .line 218
    .line 219
    goto/16 :goto_6

    .line 220
    .line 221
    :cond_16
    add-int/lit8 v7, v4, 0x1

    .line 222
    .line 223
    aget-byte v7, v1, v7

    .line 224
    .line 225
    and-int/lit16 v13, v7, 0xc0

    .line 226
    .line 227
    if-ne v13, v10, :cond_1f

    .line 228
    .line 229
    aget-byte v3, v1, v3

    .line 230
    .line 231
    and-int/lit16 v13, v3, 0xc0

    .line 232
    .line 233
    if-ne v13, v10, :cond_1e

    .line 234
    .line 235
    const v10, -0x1e080

    .line 236
    .line 237
    .line 238
    xor-int/2addr v3, v10

    .line 239
    shl-int/lit8 v7, v7, 0x6

    .line 240
    .line 241
    xor-int/2addr v3, v7

    .line 242
    shl-int/lit8 v7, v9, 0xc

    .line 243
    .line 244
    xor-int/2addr v3, v7

    .line 245
    const/16 v7, 0x800

    .line 246
    .line 247
    if-ge v3, v7, :cond_17

    .line 248
    .line 249
    if-ne v6, v8, :cond_2e

    .line 250
    .line 251
    goto/16 :goto_6

    .line 252
    .line 253
    :cond_17
    if-gt v12, v3, :cond_18

    .line 254
    .line 255
    if-ge v3, v11, :cond_18

    .line 256
    .line 257
    if-ne v6, v8, :cond_2e

    .line 258
    .line 259
    goto/16 :goto_6

    .line 260
    .line 261
    :cond_18
    add-int/lit8 v7, v6, 0x1

    .line 262
    .line 263
    if-ne v6, v8, :cond_19

    .line 264
    .line 265
    goto/16 :goto_6

    .line 266
    .line 267
    :cond_19
    if-eq v3, v15, :cond_1b

    .line 268
    .line 269
    if-eq v3, v14, :cond_1b

    .line 270
    .line 271
    if-ltz v3, :cond_1a

    .line 272
    .line 273
    const/16 v6, 0x20

    .line 274
    .line 275
    if-ge v3, v6, :cond_1a

    .line 276
    .line 277
    goto/16 :goto_5

    .line 278
    .line 279
    :cond_1a
    const/16 v6, 0x7f

    .line 280
    .line 281
    if-gt v6, v3, :cond_1b

    .line 282
    .line 283
    const/16 v6, 0xa0

    .line 284
    .line 285
    if-ge v3, v6, :cond_1b

    .line 286
    .line 287
    goto/16 :goto_5

    .line 288
    .line 289
    :cond_1b
    const v6, 0xfffd

    .line 290
    .line 291
    .line 292
    if-ne v3, v6, :cond_1c

    .line 293
    .line 294
    goto/16 :goto_5

    .line 295
    .line 296
    :cond_1c
    const/high16 v6, 0x10000

    .line 297
    .line 298
    if-ge v3, v6, :cond_1d

    .line 299
    .line 300
    move/from16 v16, v17

    .line 301
    .line 302
    :cond_1d
    add-int v5, v5, v16

    .line 303
    .line 304
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 305
    .line 306
    add-int/lit8 v4, v4, 0x3

    .line 307
    .line 308
    goto :goto_4

    .line 309
    :cond_1e
    if-ne v6, v8, :cond_2e

    .line 310
    .line 311
    goto/16 :goto_6

    .line 312
    .line 313
    :cond_1f
    if-ne v6, v8, :cond_2e

    .line 314
    .line 315
    goto/16 :goto_6

    .line 316
    .line 317
    :cond_20
    shr-int/lit8 v7, v9, 0x3

    .line 318
    .line 319
    if-ne v7, v3, :cond_2d

    .line 320
    .line 321
    add-int/lit8 v3, v4, 0x3

    .line 322
    .line 323
    if-gt v2, v3, :cond_21

    .line 324
    .line 325
    if-ne v6, v8, :cond_2e

    .line 326
    .line 327
    goto/16 :goto_6

    .line 328
    .line 329
    :cond_21
    add-int/lit8 v7, v4, 0x1

    .line 330
    .line 331
    aget-byte v7, v1, v7

    .line 332
    .line 333
    and-int/lit16 v13, v7, 0xc0

    .line 334
    .line 335
    if-ne v13, v10, :cond_2c

    .line 336
    .line 337
    add-int/lit8 v13, v4, 0x2

    .line 338
    .line 339
    aget-byte v13, v1, v13

    .line 340
    .line 341
    and-int/lit16 v14, v13, 0xc0

    .line 342
    .line 343
    if-ne v14, v10, :cond_2b

    .line 344
    .line 345
    aget-byte v3, v1, v3

    .line 346
    .line 347
    and-int/lit16 v14, v3, 0xc0

    .line 348
    .line 349
    if-ne v14, v10, :cond_2a

    .line 350
    .line 351
    const v10, 0x381f80

    .line 352
    .line 353
    .line 354
    xor-int/2addr v3, v10

    .line 355
    shl-int/lit8 v10, v13, 0x6

    .line 356
    .line 357
    xor-int/2addr v3, v10

    .line 358
    shl-int/lit8 v7, v7, 0xc

    .line 359
    .line 360
    xor-int/2addr v3, v7

    .line 361
    shl-int/lit8 v7, v9, 0x12

    .line 362
    .line 363
    xor-int/2addr v3, v7

    .line 364
    const v7, 0x10ffff

    .line 365
    .line 366
    .line 367
    if-le v3, v7, :cond_22

    .line 368
    .line 369
    if-ne v6, v8, :cond_2e

    .line 370
    .line 371
    goto :goto_6

    .line 372
    :cond_22
    if-gt v12, v3, :cond_23

    .line 373
    .line 374
    if-ge v3, v11, :cond_23

    .line 375
    .line 376
    if-ne v6, v8, :cond_2e

    .line 377
    .line 378
    goto :goto_6

    .line 379
    :cond_23
    const/high16 v7, 0x10000

    .line 380
    .line 381
    if-ge v3, v7, :cond_24

    .line 382
    .line 383
    if-ne v6, v8, :cond_2e

    .line 384
    .line 385
    goto :goto_6

    .line 386
    :cond_24
    add-int/lit8 v7, v6, 0x1

    .line 387
    .line 388
    if-ne v6, v8, :cond_25

    .line 389
    .line 390
    goto :goto_6

    .line 391
    :cond_25
    if-eq v3, v15, :cond_27

    .line 392
    .line 393
    const/16 v6, 0xd

    .line 394
    .line 395
    if-eq v3, v6, :cond_27

    .line 396
    .line 397
    if-ltz v3, :cond_26

    .line 398
    .line 399
    const/16 v6, 0x20

    .line 400
    .line 401
    if-ge v3, v6, :cond_26

    .line 402
    .line 403
    goto :goto_5

    .line 404
    :cond_26
    const/16 v6, 0x7f

    .line 405
    .line 406
    if-gt v6, v3, :cond_27

    .line 407
    .line 408
    const/16 v6, 0xa0

    .line 409
    .line 410
    if-ge v3, v6, :cond_27

    .line 411
    .line 412
    goto :goto_5

    .line 413
    :cond_27
    const v6, 0xfffd

    .line 414
    .line 415
    .line 416
    if-ne v3, v6, :cond_28

    .line 417
    .line 418
    goto :goto_5

    .line 419
    :cond_28
    const/high16 v6, 0x10000

    .line 420
    .line 421
    if-ge v3, v6, :cond_29

    .line 422
    .line 423
    move/from16 v16, v17

    .line 424
    .line 425
    :cond_29
    add-int v5, v5, v16

    .line 426
    .line 427
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 428
    .line 429
    add-int/lit8 v4, v4, 0x4

    .line 430
    .line 431
    goto/16 :goto_4

    .line 432
    .line 433
    :cond_2a
    if-ne v6, v8, :cond_2e

    .line 434
    .line 435
    goto :goto_6

    .line 436
    :cond_2b
    if-ne v6, v8, :cond_2e

    .line 437
    .line 438
    goto :goto_6

    .line 439
    :cond_2c
    if-ne v6, v8, :cond_2e

    .line 440
    .line 441
    goto :goto_6

    .line 442
    :cond_2d
    if-ne v6, v8, :cond_2e

    .line 443
    .line 444
    goto :goto_6

    .line 445
    :cond_2e
    :goto_5
    const/4 v5, -0x1

    .line 446
    :cond_2f
    :goto_6
    const-string v2, "\u2026]"

    .line 447
    .line 448
    const-string v3, "[size="

    .line 449
    .line 450
    const/16 v4, 0x5d

    .line 451
    .line 452
    const/4 v6, -0x1

    .line 453
    if-ne v5, v6, :cond_33

    .line 454
    .line 455
    array-length v5, v1

    .line 456
    if-gt v5, v8, :cond_30

    .line 457
    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    .line 459
    .line 460
    const-string v2, "[hex="

    .line 461
    .line 462
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v0}, Ll9/o;->d()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v2

    .line 469
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    return-object v1

    .line 480
    :cond_30
    new-instance v4, Ljava/lang/StringBuilder;

    .line 481
    .line 482
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    array-length v3, v1

    .line 486
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    const-string v3, " hex="

    .line 490
    .line 491
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    array-length v3, v1

    .line 495
    if-gt v8, v3, :cond_32

    .line 496
    .line 497
    array-length v3, v1

    .line 498
    if-ne v8, v3, :cond_31

    .line 499
    .line 500
    move-object v3, v0

    .line 501
    goto :goto_7

    .line 502
    :cond_31
    new-instance v3, Ll9/o;

    .line 503
    .line 504
    const/4 v5, 0x0

    .line 505
    invoke-static {v1, v5, v8}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    invoke-direct {v3, v1}, Ll9/o;-><init>([B)V

    .line 510
    .line 511
    .line 512
    :goto_7
    invoke-virtual {v3}, Ll9/o;->d()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    return-object v1

    .line 527
    :cond_32
    array-length v1, v1

    .line 528
    const/16 v2, 0x29

    .line 529
    .line 530
    const-string v3, "endIndex > length("

    .line 531
    .line 532
    invoke-static {v1, v2, v3}, Ll9/i;->b(IILjava/lang/String;)V

    .line 533
    .line 534
    .line 535
    const/4 v1, 0x0

    .line 536
    return-object v1

    .line 537
    :cond_33
    invoke-virtual {v0}, Ll9/o;->l()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v6

    .line 541
    const/4 v7, 0x0

    .line 542
    invoke-virtual {v6, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v7

    .line 546
    const-string v8, "\\"

    .line 547
    .line 548
    const-string v9, "\\\\"

    .line 549
    .line 550
    invoke-static {v7, v8, v9}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v7

    .line 554
    const-string v8, "\n"

    .line 555
    .line 556
    const-string v9, "\\n"

    .line 557
    .line 558
    invoke-static {v7, v8, v9}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v7

    .line 562
    const-string v8, "\r"

    .line 563
    .line 564
    const-string v9, "\\r"

    .line 565
    .line 566
    invoke-static {v7, v8, v9}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v7

    .line 570
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 571
    .line 572
    .line 573
    move-result v6

    .line 574
    if-ge v5, v6, :cond_34

    .line 575
    .line 576
    new-instance v4, Ljava/lang/StringBuilder;

    .line 577
    .line 578
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    array-length v1, v1

    .line 582
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    const-string v1, " text="

    .line 586
    .line 587
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    .line 595
    .line 596
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v1

    .line 600
    return-object v1

    .line 601
    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 602
    .line 603
    const-string v2, "[text="

    .line 604
    .line 605
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v1

    .line 618
    return-object v1
.end method
