.class public Lk4/e;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final d:Lk4/c;

.field public static final e:Lk4/b;


# instance fields
.field public final a:Lk4/a;

.field public final b:Ljava/lang/Character;

.field public volatile c:Lk4/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lk4/c;

    .line 2
    .line 3
    const-string v1, "base64()"

    .line 4
    .line 5
    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lk4/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lk4/e;->d:Lk4/c;

    .line 11
    .line 12
    new-instance v0, Lk4/c;

    .line 13
    .line 14
    const-string v1, "base64Url()"

    .line 15
    .line 16
    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lk4/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lk4/e;

    .line 22
    .line 23
    const-string v1, "base32()"

    .line 24
    .line 25
    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    .line 26
    .line 27
    invoke-direct {v0, v1, v2}, Lk4/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lk4/e;

    .line 31
    .line 32
    const-string v1, "base32Hex()"

    .line 33
    .line 34
    const-string v2, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    .line 35
    .line 36
    invoke-direct {v0, v1, v2}, Lk4/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lk4/b;

    .line 40
    .line 41
    new-instance v1, Lk4/a;

    .line 42
    .line 43
    const-string v2, "0123456789ABCDEF"

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v3, "base16()"

    .line 50
    .line 51
    invoke-direct {v1, v3, v2}, Lk4/a;-><init>(Ljava/lang/String;[C)V

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, v1}, Lk4/b;-><init>(Lk4/a;)V

    .line 55
    .line 56
    .line 57
    sput-object v0, Lk4/e;->e:Lk4/b;

    .line 58
    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x3d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 36
    new-instance v1, Lk4/a;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lk4/a;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v1, v0}, Lk4/e;-><init>(Lk4/a;Ljava/lang/Character;)V

    return-void
.end method

.method public constructor <init>(Lk4/a;Ljava/lang/Character;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lk4/e;->a:Lk4/a;

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object p1, p1, Lk4/a;->g:[B

    .line 16
    .line 17
    array-length v1, p1

    .line 18
    if-ge v0, v1, :cond_0

    .line 19
    .line 20
    aget-byte p1, p1, v0

    .line 21
    .line 22
    const/4 v0, -0x1

    .line 23
    if-eq p1, v0, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x1

    .line 28
    :goto_0
    const-string v0, "Padding character %s was already in alphabet"

    .line 29
    .line 30
    invoke-static {v0, p1, p2}, Lo4/b;->e(Ljava/lang/String;ZLjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iput-object p2, p0, Lk4/e;->b:Ljava/lang/Character;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)[B
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lk4/e;->g(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lk4/e;->a:Lk4/a;

    .line 10
    .line 11
    iget v1, v1, Lk4/a;->d:I

    .line 12
    .line 13
    int-to-long v1, v1

    .line 14
    int-to-long v3, v0

    .line 15
    mul-long/2addr v1, v3

    .line 16
    const-wide/16 v3, 0x7

    .line 17
    .line 18
    add-long/2addr v1, v3

    .line 19
    const-wide/16 v3, 0x8

    .line 20
    .line 21
    div-long/2addr v1, v3

    .line 22
    long-to-int v0, v1

    .line 23
    new-array v1, v0, [B

    .line 24
    .line 25
    invoke-virtual {p0, v1, p1}, Lk4/e;->b([BLjava/lang/CharSequence;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-ne p1, v0, :cond_0

    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_0
    new-array v0, p1, [B

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lk4/d; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    return-object v0

    .line 39
    :catch_0
    move-exception p1

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method

.method public b([BLjava/lang/CharSequence;)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lk4/e;->g(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget-object v3, v0, Lk4/e;->a:Lk4/a;

    .line 14
    .line 15
    iget-object v4, v3, Lk4/a;->h:[Z

    .line 16
    .line 17
    iget v5, v3, Lk4/a;->d:I

    .line 18
    .line 19
    iget v6, v3, Lk4/a;->e:I

    .line 20
    .line 21
    rem-int/2addr v2, v6

    .line 22
    aget-boolean v2, v4, v2

    .line 23
    .line 24
    if-eqz v2, :cond_4

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    move v4, v2

    .line 28
    move v7, v4

    .line 29
    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    if-ge v4, v8, :cond_3

    .line 34
    .line 35
    const-wide/16 v8, 0x0

    .line 36
    .line 37
    move v10, v2

    .line 38
    move v11, v10

    .line 39
    :goto_1
    if-ge v10, v6, :cond_1

    .line 40
    .line 41
    shl-long/2addr v8, v5

    .line 42
    add-int v12, v4, v10

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 45
    .line 46
    .line 47
    move-result v13

    .line 48
    if-ge v12, v13, :cond_0

    .line 49
    .line 50
    add-int/lit8 v12, v11, 0x1

    .line 51
    .line 52
    add-int/2addr v11, v4

    .line 53
    invoke-interface {v1, v11}, Ljava/lang/CharSequence;->charAt(I)C

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    invoke-virtual {v3, v11}, Lk4/a;->a(C)I

    .line 58
    .line 59
    .line 60
    move-result v11

    .line 61
    int-to-long v13, v11

    .line 62
    or-long/2addr v8, v13

    .line 63
    move v11, v12

    .line 64
    :cond_0
    add-int/lit8 v10, v10, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    iget v10, v3, Lk4/a;->f:I

    .line 68
    .line 69
    mul-int/lit8 v12, v10, 0x8

    .line 70
    .line 71
    mul-int/2addr v11, v5

    .line 72
    sub-int/2addr v12, v11

    .line 73
    add-int/lit8 v10, v10, -0x1

    .line 74
    .line 75
    mul-int/lit8 v10, v10, 0x8

    .line 76
    .line 77
    :goto_2
    if-lt v10, v12, :cond_2

    .line 78
    .line 79
    add-int/lit8 v11, v7, 0x1

    .line 80
    .line 81
    ushr-long v13, v8, v10

    .line 82
    .line 83
    const-wide/16 v15, 0xff

    .line 84
    .line 85
    and-long/2addr v13, v15

    .line 86
    long-to-int v13, v13

    .line 87
    int-to-byte v13, v13

    .line 88
    aput-byte v13, p1, v7

    .line 89
    .line 90
    add-int/lit8 v10, v10, -0x8

    .line 91
    .line 92
    move v7, v11

    .line 93
    goto :goto_2

    .line 94
    :cond_2
    add-int/2addr v4, v6

    .line 95
    goto :goto_0

    .line 96
    :cond_3
    return v7

    .line 97
    :cond_4
    new-instance v2, Lk4/d;

    .line 98
    .line 99
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v4, "Invalid input length "

    .line 106
    .line 107
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v2
.end method

.method public final c([B)Ljava/lang/String;
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    array-length v1, p1

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {v2, v0, v1}, Lo4/b;->k(III)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    iget-object v2, p0, Lk4/e;->a:Lk4/a;

    .line 10
    .line 11
    iget v3, v2, Lk4/a;->e:I

    .line 12
    .line 13
    iget v2, v2, Lk4/a;->f:I

    .line 14
    .line 15
    sget-object v4, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 16
    .line 17
    invoke-static {v0, v2}, La/a;->i(II)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    mul-int/2addr v2, v3

    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-virtual {p0, v1, p1, v0}, Lk4/e;->e(Ljava/lang/StringBuilder;[BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :catch_0
    move-exception p1

    .line 34
    invoke-static {p1}, Lj1/i;->e(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    return-object p1
.end method

.method public final d(Ljava/lang/StringBuilder;[BII)V
    .locals 9

    .line 1
    add-int v0, p3, p4

    .line 2
    .line 3
    array-length v1, p2

    .line 4
    invoke-static {p3, v0, v1}, Lo4/b;->k(III)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lk4/e;->a:Lk4/a;

    .line 8
    .line 9
    iget v1, v0, Lk4/a;->f:I

    .line 10
    .line 11
    iget v2, v0, Lk4/a;->d:I

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-gt p4, v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v3

    .line 19
    :goto_0
    invoke-static {v1}, Lo4/b;->f(Z)V

    .line 20
    .line 21
    .line 22
    const-wide/16 v4, 0x0

    .line 23
    .line 24
    move v1, v3

    .line 25
    :goto_1
    const/16 v6, 0x8

    .line 26
    .line 27
    if-ge v1, p4, :cond_1

    .line 28
    .line 29
    add-int v7, p3, v1

    .line 30
    .line 31
    aget-byte v7, p2, v7

    .line 32
    .line 33
    and-int/lit16 v7, v7, 0xff

    .line 34
    .line 35
    int-to-long v7, v7

    .line 36
    or-long/2addr v4, v7

    .line 37
    shl-long/2addr v4, v6

    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    add-int/lit8 p2, p4, 0x1

    .line 42
    .line 43
    mul-int/2addr p2, v6

    .line 44
    sub-int/2addr p2, v2

    .line 45
    :goto_2
    mul-int/lit8 p3, p4, 0x8

    .line 46
    .line 47
    if-ge v3, p3, :cond_2

    .line 48
    .line 49
    sub-int p3, p2, v3

    .line 50
    .line 51
    ushr-long v7, v4, p3

    .line 52
    .line 53
    long-to-int p3, v7

    .line 54
    iget v1, v0, Lk4/a;->c:I

    .line 55
    .line 56
    and-int/2addr p3, v1

    .line 57
    iget-object v1, v0, Lk4/a;->b:[C

    .line 58
    .line 59
    aget-char p3, v1, p3

    .line 60
    .line 61
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 62
    .line 63
    .line 64
    add-int/2addr v3, v2

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    iget-object p2, p0, Lk4/e;->b:Ljava/lang/Character;

    .line 67
    .line 68
    if-eqz p2, :cond_3

    .line 69
    .line 70
    :goto_3
    iget p3, v0, Lk4/a;->f:I

    .line 71
    .line 72
    mul-int/2addr p3, v6

    .line 73
    if-ge v3, p3, :cond_3

    .line 74
    .line 75
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    .line 76
    .line 77
    .line 78
    move-result p3

    .line 79
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 80
    .line 81
    .line 82
    add-int/2addr v3, v2

    .line 83
    goto :goto_3

    .line 84
    :cond_3
    return-void
.end method

.method public e(Ljava/lang/StringBuilder;[BI)V
    .locals 4

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {v1, p3, v0}, Lo4/b;->k(III)V

    .line 4
    .line 5
    .line 6
    :goto_0
    if-ge v1, p3, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lk4/e;->a:Lk4/a;

    .line 9
    .line 10
    iget v2, v0, Lk4/a;->f:I

    .line 11
    .line 12
    sub-int v3, p3, v1

    .line 13
    .line 14
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {p0, p1, p2, v1, v2}, Lk4/e;->d(Ljava/lang/StringBuilder;[BII)V

    .line 19
    .line 20
    .line 21
    iget v0, v0, Lk4/a;->f:I

    .line 22
    .line 23
    add-int/2addr v1, v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lk4/e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lk4/e;

    .line 7
    .line 8
    iget-object v0, p0, Lk4/e;->a:Lk4/a;

    .line 9
    .line 10
    iget-object v2, p1, Lk4/e;->a:Lk4/a;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lk4/a;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lk4/e;->b:Ljava/lang/Character;

    .line 19
    .line 20
    iget-object p1, p1, Lk4/e;->b:Ljava/lang/Character;

    .line 21
    .line 22
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_0
    return v1
.end method

.method public f(Lk4/a;Ljava/lang/Character;)Lk4/e;
    .locals 1

    .line 1
    new-instance v0, Lk4/e;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lk4/e;-><init>(Lk4/a;Ljava/lang/Character;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final g(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    iget-object v0, p0, Lk4/e;->b:Ljava/lang/Character;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    :goto_0
    if-ltz v1, :cond_2

    .line 17
    .line 18
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eq v2, v0, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method public final h()Lk4/e;
    .locals 12

    .line 1
    iget-object v0, p0, Lk4/e;->c:Lk4/e;

    .line 2
    .line 3
    if-nez v0, :cond_d

    .line 4
    .line 5
    iget-object v0, p0, Lk4/e;->a:Lk4/a;

    .line 6
    .line 7
    iget-object v1, v0, Lk4/a;->b:[C

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    const/4 v3, 0x0

    .line 11
    move v4, v3

    .line 12
    :goto_0
    if-ge v4, v2, :cond_b

    .line 13
    .line 14
    aget-char v5, v1, v4

    .line 15
    .line 16
    const/16 v6, 0x61

    .line 17
    .line 18
    if-lt v5, v6, :cond_a

    .line 19
    .line 20
    const/16 v7, 0x7a

    .line 21
    .line 22
    if-gt v5, v7, :cond_a

    .line 23
    .line 24
    array-length v2, v1

    .line 25
    move v4, v3

    .line 26
    :goto_1
    const/16 v5, 0x5a

    .line 27
    .line 28
    const/16 v8, 0x41

    .line 29
    .line 30
    const/4 v9, 0x1

    .line 31
    if-ge v4, v2, :cond_1

    .line 32
    .line 33
    aget-char v10, v1, v4

    .line 34
    .line 35
    if-lt v10, v8, :cond_0

    .line 36
    .line 37
    if-gt v10, v5, :cond_0

    .line 38
    .line 39
    move v2, v9

    .line 40
    goto :goto_2

    .line 41
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move v2, v3

    .line 45
    :goto_2
    xor-int/2addr v2, v9

    .line 46
    const-string v4, "Cannot call upperCase() on a mixed-case alphabet"

    .line 47
    .line 48
    invoke-static {v2, v4}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    array-length v2, v1

    .line 52
    new-array v2, v2, [C

    .line 53
    .line 54
    move v4, v3

    .line 55
    :goto_3
    array-length v10, v1

    .line 56
    if-ge v4, v10, :cond_3

    .line 57
    .line 58
    aget-char v10, v1, v4

    .line 59
    .line 60
    if-lt v10, v6, :cond_2

    .line 61
    .line 62
    if-gt v10, v7, :cond_2

    .line 63
    .line 64
    xor-int/lit8 v10, v10, 0x20

    .line 65
    .line 66
    int-to-char v10, v10

    .line 67
    :cond_2
    aput-char v10, v2, v4

    .line 68
    .line 69
    add-int/lit8 v4, v4, 0x1

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    new-instance v1, Lk4/a;

    .line 73
    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    iget-object v6, v0, Lk4/a;->a:Ljava/lang/String;

    .line 80
    .line 81
    const-string v7, ".upperCase()"

    .line 82
    .line 83
    invoke-static {v4, v6, v7}, Lai/onnxruntime/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-direct {v1, v4, v2}, Lk4/a;-><init>(Ljava/lang/String;[C)V

    .line 88
    .line 89
    .line 90
    iget-boolean v0, v0, Lk4/a;->i:Z

    .line 91
    .line 92
    if-eqz v0, :cond_9

    .line 93
    .line 94
    iget-object v0, v1, Lk4/a;->g:[B

    .line 95
    .line 96
    iget-boolean v2, v1, Lk4/a;->i:Z

    .line 97
    .line 98
    if-eqz v2, :cond_4

    .line 99
    .line 100
    goto :goto_7

    .line 101
    :cond_4
    array-length v2, v0

    .line 102
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    :goto_4
    if-gt v8, v5, :cond_8

    .line 107
    .line 108
    or-int/lit8 v4, v8, 0x20

    .line 109
    .line 110
    aget-byte v6, v0, v8

    .line 111
    .line 112
    aget-byte v7, v0, v4

    .line 113
    .line 114
    const/4 v10, -0x1

    .line 115
    if-ne v6, v10, :cond_5

    .line 116
    .line 117
    aput-byte v7, v2, v8

    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_5
    if-ne v7, v10, :cond_6

    .line 121
    .line 122
    move v7, v9

    .line 123
    goto :goto_5

    .line 124
    :cond_6
    move v7, v3

    .line 125
    :goto_5
    int-to-char v10, v8

    .line 126
    int-to-char v11, v4

    .line 127
    if-eqz v7, :cond_7

    .line 128
    .line 129
    aput-byte v6, v2, v4

    .line 130
    .line 131
    :goto_6
    add-int/lit8 v8, v8, 0x1

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_7
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    const-string v1, "Can\'t ignoreCase() since \'%s\' and \'%s\' encode different values"

    .line 147
    .line 148
    invoke-static {v1, v0}, Le3/d;->l(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const/4 v0, 0x0

    .line 156
    return-object v0

    .line 157
    :cond_8
    new-instance v0, Lk4/a;

    .line 158
    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    iget-object v4, v1, Lk4/a;->a:Ljava/lang/String;

    .line 165
    .line 166
    const-string v5, ".ignoreCase()"

    .line 167
    .line 168
    invoke-static {v3, v4, v5}, Lai/onnxruntime/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    iget-object v1, v1, Lk4/a;->b:[C

    .line 173
    .line 174
    invoke-direct {v0, v3, v1, v2, v9}, Lk4/a;-><init>(Ljava/lang/String;[C[BZ)V

    .line 175
    .line 176
    .line 177
    goto :goto_8

    .line 178
    :cond_9
    :goto_7
    move-object v0, v1

    .line 179
    goto :goto_8

    .line 180
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :cond_b
    :goto_8
    iget-object v1, p0, Lk4/e;->a:Lk4/a;

    .line 185
    .line 186
    if-ne v0, v1, :cond_c

    .line 187
    .line 188
    move-object v0, p0

    .line 189
    goto :goto_9

    .line 190
    :cond_c
    iget-object v1, p0, Lk4/e;->b:Ljava/lang/Character;

    .line 191
    .line 192
    invoke-virtual {p0, v0, v1}, Lk4/e;->f(Lk4/a;Ljava/lang/Character;)Lk4/e;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    :goto_9
    iput-object v0, p0, Lk4/e;->c:Lk4/e;

    .line 197
    .line 198
    :cond_d
    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lk4/e;->a:Lk4/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk4/a;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lk4/e;->b:Ljava/lang/Character;

    .line 8
    .line 9
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    xor-int/2addr v0, v1

    .line 14
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "BaseEncoding."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lk4/e;->a:Lk4/a;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    iget v1, v1, Lk4/a;->d:I

    .line 16
    .line 17
    rem-int/2addr v2, v1

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lk4/e;->b:Ljava/lang/Character;

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    const-string v1, ".omitPadding()"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string v2, ".withPadChar(\'"

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, "\')"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0
.end method
