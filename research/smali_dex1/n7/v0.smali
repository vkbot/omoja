.class public final Ln7/v0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final c:Ljava/util/logging/Logger;

.field public static final d:Ln7/h;

.field public static final e:Lk4/c;


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const-class v0, Ln7/v0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Ln7/v0;->c:Ljava/util/logging/Logger;

    .line 12
    .line 13
    new-instance v0, Ln7/h;

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ln7/h;-><init>(I)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Ln7/v0;->d:Ln7/h;

    .line 21
    .line 22
    sget-object v0, Lk4/e;->d:Lk4/c;

    .line 23
    .line 24
    iget-object v1, v0, Lk4/e;->b:Ljava/lang/Character;

    .line 25
    .line 26
    if-nez v1, :cond_1c

    .line 27
    .line 28
    goto :goto_25

    .line 29
    :cond_1c
    iget-object v0, v0, Lk4/e;->a:Lk4/a;

    .line 30
    .line 31
    new-instance v1, Lk4/c;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-direct {v1, v0, v2}, Lk4/c;-><init>(Lk4/a;Ljava/lang/Character;)V

    .line 35
    .line 36
    .line 37
    move-object v0, v1

    .line 38
    :goto_25
    sput-object v0, Ln7/v0;->e:Lk4/c;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final a(Ln7/s0;)V
    .registers 8

    .line 1
    iget v0, p0, Ln7/v0;->b:I

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    :goto_7
    iget v2, p0, Ln7/v0;->b:I

    .line 9
    .line 10
    if-ge v0, v2, :cond_3d

    .line 11
    .line 12
    iget-object v2, p1, Ln7/s0;->b:[B

    .line 13
    .line 14
    iget-object v3, p0, Ln7/v0;->a:[Ljava/lang/Object;

    .line 15
    .line 16
    mul-int/lit8 v4, v0, 0x2

    .line 17
    .line 18
    aget-object v3, v3, v4

    .line 19
    .line 20
    check-cast v3, [B

    .line 21
    .line 22
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1c

    .line 27
    .line 28
    goto :goto_3a

    .line 29
    :cond_1c
    iget-object v2, p0, Ln7/v0;->a:[Ljava/lang/Object;

    .line 30
    .line 31
    aget-object v3, v2, v4

    .line 32
    .line 33
    check-cast v3, [B

    .line 34
    .line 35
    mul-int/lit8 v5, v1, 0x2

    .line 36
    .line 37
    aput-object v3, v2, v5

    .line 38
    .line 39
    add-int/lit8 v4, v4, 0x1

    .line 40
    .line 41
    aget-object v3, v2, v4

    .line 42
    .line 43
    instance-of v4, v2, [[B

    .line 44
    .line 45
    if-eqz v4, :cond_32

    .line 46
    .line 47
    array-length v2, v2

    .line 48
    invoke-virtual {p0, v2}, Ln7/v0;->b(I)V

    .line 49
    .line 50
    .line 51
    :cond_32
    iget-object v2, p0, Ln7/v0;->a:[Ljava/lang/Object;

    .line 52
    .line 53
    add-int/lit8 v5, v5, 0x1

    .line 54
    .line 55
    aput-object v3, v2, v5

    .line 56
    .line 57
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    :goto_3a
    add-int/lit8 v0, v0, 0x1

    .line 60
    .line 61
    goto :goto_7

    .line 62
    :cond_3d
    iget-object p1, p0, Ln7/v0;->a:[Ljava/lang/Object;

    .line 63
    .line 64
    mul-int/lit8 v0, v1, 0x2

    .line 65
    .line 66
    mul-int/lit8 v2, v2, 0x2

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    invoke-static {p1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iput v1, p0, Ln7/v0;->b:I

    .line 73
    .line 74
    return-void
.end method

.method public final b(I)V
    .registers 5

    .line 1
    new-array p1, p1, [Ljava/lang/Object;

    .line 2
    .line 3
    iget v0, p0, Ln7/v0;->b:I

    .line 4
    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    goto :goto_f

    .line 8
    :cond_7
    iget-object v1, p0, Ln7/v0;->a:[Ljava/lang/Object;

    .line 9
    .line 10
    mul-int/lit8 v0, v0, 0x2

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    .line 15
    .line 16
    :goto_f
    iput-object p1, p0, Ln7/v0;->a:[Ljava/lang/Object;

    .line 17
    .line 18
    return-void
.end method

.method public final c(Ln7/s0;)Ljava/lang/Object;
    .registers 6

    .line 1
    iget v0, p0, Ln7/v0;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    :goto_4
    if-ltz v0, :cond_32

    .line 6
    .line 7
    iget-object v1, p1, Ln7/s0;->b:[B

    .line 8
    .line 9
    iget-object v2, p0, Ln7/v0;->a:[Ljava/lang/Object;

    .line 10
    .line 11
    mul-int/lit8 v3, v0, 0x2

    .line 12
    .line 13
    aget-object v2, v2, v3

    .line 14
    .line 15
    check-cast v2, [B

    .line 16
    .line 17
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2f

    .line 22
    .line 23
    iget-object v0, p0, Ln7/v0;->a:[Ljava/lang/Object;

    .line 24
    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    aget-object v0, v0, v3

    .line 28
    .line 29
    instance-of v1, v0, [B

    .line 30
    .line 31
    if-eqz v1, :cond_27

    .line 32
    .line 33
    check-cast v0, [B

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ln7/s0;->a([B)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    :cond_27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Ln0/b;->a()V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    return-object p1

    .line 48
    :cond_2f
    add-int/lit8 v0, v0, -0x1

    .line 49
    .line 50
    goto :goto_4

    .line 51
    :cond_32
    const/4 p1, 0x0

    .line 52
    return-object p1
.end method

.method public final d(Ln7/v0;)V
    .registers 7

    .line 1
    iget v0, p1, Ln7/v0;->b:I

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v1, p0, Ln7/v0;->a:[Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_c

    .line 10
    .line 11
    array-length v1, v1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move v1, v2

    .line 14
    :goto_d
    iget v3, p0, Ln7/v0;->b:I

    .line 15
    .line 16
    mul-int/lit8 v4, v3, 0x2

    .line 17
    .line 18
    sub-int/2addr v1, v4

    .line 19
    if-nez v3, :cond_15

    .line 20
    .line 21
    goto :goto_19

    .line 22
    :cond_15
    mul-int/lit8 v4, v0, 0x2

    .line 23
    .line 24
    if-ge v1, v4, :cond_21

    .line 25
    .line 26
    :goto_19
    mul-int/lit8 v3, v3, 0x2

    .line 27
    .line 28
    mul-int/lit8 v0, v0, 0x2

    .line 29
    .line 30
    add-int/2addr v0, v3

    .line 31
    invoke-virtual {p0, v0}, Ln7/v0;->b(I)V

    .line 32
    .line 33
    .line 34
    :cond_21
    iget-object v0, p1, Ln7/v0;->a:[Ljava/lang/Object;

    .line 35
    .line 36
    iget-object v1, p0, Ln7/v0;->a:[Ljava/lang/Object;

    .line 37
    .line 38
    iget v3, p0, Ln7/v0;->b:I

    .line 39
    .line 40
    mul-int/lit8 v3, v3, 0x2

    .line 41
    .line 42
    iget v4, p1, Ln7/v0;->b:I

    .line 43
    .line 44
    mul-int/lit8 v4, v4, 0x2

    .line 45
    .line 46
    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    iget v0, p0, Ln7/v0;->b:I

    .line 50
    .line 51
    iget p1, p1, Ln7/v0;->b:I

    .line 52
    .line 53
    add-int/2addr v0, p1

    .line 54
    iput v0, p0, Ln7/v0;->b:I

    .line 55
    .line 56
    return-void
.end method

.method public final e(Ln7/s0;Ljava/lang/Object;)V
    .registers 7

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "value"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Ln7/v0;->b:I

    .line 12
    .line 13
    mul-int/lit8 v1, v0, 0x2

    .line 14
    .line 15
    if-eqz v1, :cond_19

    .line 16
    .line 17
    iget-object v2, p0, Ln7/v0;->a:[Ljava/lang/Object;

    .line 18
    .line 19
    if-eqz v2, :cond_16

    .line 20
    .line 21
    array-length v2, v2

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 v2, 0x0

    .line 24
    :goto_17
    if-ne v1, v2, :cond_24

    .line 25
    .line 26
    :cond_19
    mul-int/lit8 v0, v0, 0x4

    .line 27
    .line 28
    const/16 v1, 0x8

    .line 29
    .line 30
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p0, v0}, Ln7/v0;->b(I)V

    .line 35
    .line 36
    .line 37
    :cond_24
    iget v0, p0, Ln7/v0;->b:I

    .line 38
    .line 39
    iget-object v1, p1, Ln7/s0;->b:[B

    .line 40
    .line 41
    iget-object v2, p0, Ln7/v0;->a:[Ljava/lang/Object;

    .line 42
    .line 43
    mul-int/lit8 v3, v0, 0x2

    .line 44
    .line 45
    aput-object v1, v2, v3

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Ln7/s0;->b(Ljava/lang/Object;)[B

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object p2, p0, Ln7/v0;->a:[Ljava/lang/Object;

    .line 52
    .line 53
    mul-int/lit8 v0, v0, 0x2

    .line 54
    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 56
    .line 57
    aput-object p1, p2, v0

    .line 58
    .line 59
    iget p1, p0, Ln7/v0;->b:I

    .line 60
    .line 61
    add-int/lit8 p1, p1, 0x1

    .line 62
    .line 63
    iput p1, p0, Ln7/v0;->b:I

    .line 64
    .line 65
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Metadata("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_8
    iget v2, p0, Ln7/v0;->b:I

    .line 10
    .line 11
    if-ge v1, v2, :cond_66

    .line 12
    .line 13
    if-eqz v1, :cond_13

    .line 14
    .line 15
    const/16 v2, 0x2c

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    :cond_13
    new-instance v2, Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p0, Ln7/v0;->a:[Ljava/lang/Object;

    .line 23
    .line 24
    mul-int/lit8 v4, v1, 0x2

    .line 25
    .line 26
    aget-object v3, v3, v4

    .line 27
    .line 28
    check-cast v3, [B

    .line 29
    .line 30
    sget-object v5, Li4/b;->a:Ljava/nio/charset/Charset;

    .line 31
    .line 32
    invoke-direct {v2, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const/16 v3, 0x3d

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v3, "-bin"

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    iget-object v3, p0, Ln7/v0;->a:[Ljava/lang/Object;

    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    if-eqz v2, :cond_4d

    .line 53
    .line 54
    add-int/lit8 v4, v4, 0x1

    .line 55
    .line 56
    aget-object v2, v3, v4

    .line 57
    .line 58
    instance-of v3, v2, [B

    .line 59
    .line 60
    if-eqz v3, :cond_49

    .line 61
    .line 62
    check-cast v2, [B

    .line 63
    .line 64
    sget-object v3, Ln7/v0;->e:Lk4/c;

    .line 65
    .line 66
    invoke-virtual {v3, v2}, Lk4/e;->c([B)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    goto :goto_5f

    .line 74
    :cond_49
    invoke-static {v2}, Lcom/google/protobuf/q;->q(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    throw v6

    .line 78
    :cond_4d
    new-instance v2, Ljava/lang/String;

    .line 79
    .line 80
    add-int/lit8 v4, v4, 0x1

    .line 81
    .line 82
    aget-object v3, v3, v4

    .line 83
    .line 84
    instance-of v4, v3, [B

    .line 85
    .line 86
    if-eqz v4, :cond_62

    .line 87
    .line 88
    check-cast v3, [B

    .line 89
    .line 90
    invoke-direct {v2, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    :goto_5f
    add-int/lit8 v1, v1, 0x1

    .line 97
    .line 98
    goto :goto_8

    .line 99
    :cond_62
    invoke-static {v3}, Lcom/google/protobuf/q;->q(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    throw v6

    .line 103
    :cond_66
    const/16 v1, 0x29

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    return-object v0
.end method
