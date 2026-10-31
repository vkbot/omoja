.class public final Lcom/google/protobuf/j1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final f:Lcom/google/protobuf/j1;


# instance fields
.field public a:I

.field public b:[I

.field public c:[Ljava/lang/Object;

.field public d:I

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/protobuf/j1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [I

    .line 5
    .line 6
    new-array v3, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3, v1}, Lcom/google/protobuf/j1;-><init>(I[I[Ljava/lang/Object;Z)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/google/protobuf/j1;->f:Lcom/google/protobuf/j1;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(I[I[Ljava/lang/Object;Z)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/google/protobuf/j1;->d:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/protobuf/j1;->a:I

    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/protobuf/j1;->b:[I

    .line 10
    .line 11
    iput-object p3, p0, Lcom/google/protobuf/j1;->c:[Ljava/lang/Object;

    .line 12
    .line 13
    iput-boolean p4, p0, Lcom/google/protobuf/j1;->e:Z

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/j1;->b:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-le p1, v1, :cond_21

    .line 5
    .line 6
    iget v1, p0, Lcom/google/protobuf/j1;->a:I

    .line 7
    .line 8
    div-int/lit8 v2, v1, 0x2

    .line 9
    .line 10
    add-int/2addr v2, v1

    .line 11
    if-ge v2, p1, :cond_d

    .line 12
    .line 13
    goto :goto_e

    .line 14
    :cond_d
    move p1, v2

    .line 15
    :goto_e
    const/16 v1, 0x8

    .line 16
    .line 17
    if-ge p1, v1, :cond_13

    .line 18
    .line 19
    move p1, v1

    .line 20
    :cond_13
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/google/protobuf/j1;->b:[I

    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/protobuf/j1;->c:[Ljava/lang/Object;

    .line 27
    .line 28
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/google/protobuf/j1;->c:[Ljava/lang/Object;

    .line 33
    .line 34
    :cond_21
    return-void
.end method

.method public final b()I
    .registers 7

    .line 1
    iget v0, p0, Lcom/google/protobuf/j1;->d:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_6

    .line 5
    .line 6
    return v0

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    :goto_8
    iget v2, p0, Lcom/google/protobuf/j1;->a:I

    .line 10
    .line 11
    if-ge v0, v2, :cond_8b

    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/protobuf/j1;->b:[I

    .line 14
    .line 15
    aget v2, v2, v0

    .line 16
    .line 17
    ushr-int/lit8 v3, v2, 0x3

    .line 18
    .line 19
    and-int/lit8 v2, v2, 0x7

    .line 20
    .line 21
    if-eqz v2, :cond_74

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    if-eq v2, v4, :cond_64

    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    if-eq v2, v4, :cond_51

    .line 28
    .line 29
    const/4 v5, 0x3

    .line 30
    if-eq v2, v5, :cond_3e

    .line 31
    .line 32
    const/4 v4, 0x5

    .line 33
    if-ne v2, v4, :cond_34

    .line 34
    .line 35
    iget-object v2, p0, Lcom/google/protobuf/j1;->c:[Ljava/lang/Object;

    .line 36
    .line 37
    aget-object v2, v2, v0

    .line 38
    .line 39
    check-cast v2, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {v3}, Lcom/google/protobuf/n;->c(I)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    add-int/lit8 v2, v2, 0x4

    .line 49
    .line 50
    :goto_31
    add-int/2addr v2, v1

    .line 51
    move v1, v2

    .line 52
    goto :goto_87

    .line 53
    :cond_34
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    invoke-static {}, Lcom/google/protobuf/d0;->b()Lcom/google/protobuf/c0;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    throw v0

    .line 63
    :cond_3e
    invoke-static {v3}, Lcom/google/protobuf/n;->c(I)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    mul-int/2addr v2, v4

    .line 68
    iget-object v3, p0, Lcom/google/protobuf/j1;->c:[Ljava/lang/Object;

    .line 69
    .line 70
    aget-object v3, v3, v0

    .line 71
    .line 72
    check-cast v3, Lcom/google/protobuf/j1;

    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/google/protobuf/j1;->b()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    :goto_4d
    add-int/2addr v3, v2

    .line 79
    add-int/2addr v3, v1

    .line 80
    move v1, v3

    .line 81
    goto :goto_87

    .line 82
    :cond_51
    iget-object v2, p0, Lcom/google/protobuf/j1;->c:[Ljava/lang/Object;

    .line 83
    .line 84
    aget-object v2, v2, v0

    .line 85
    .line 86
    check-cast v2, Lcom/google/protobuf/g;

    .line 87
    .line 88
    invoke-static {v3}, Lcom/google/protobuf/n;->c(I)I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    invoke-virtual {v2}, Lcom/google/protobuf/g;->size()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-static {v2, v2, v3, v1}, Lcom/google/protobuf/q;->a(IIII)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    goto :goto_87

    .line 101
    :cond_64
    iget-object v2, p0, Lcom/google/protobuf/j1;->c:[Ljava/lang/Object;

    .line 102
    .line 103
    aget-object v2, v2, v0

    .line 104
    .line 105
    check-cast v2, Ljava/lang/Long;

    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-static {v3}, Lcom/google/protobuf/n;->c(I)I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    add-int/lit8 v2, v2, 0x8

    .line 115
    .line 116
    goto :goto_31

    .line 117
    :cond_74
    iget-object v2, p0, Lcom/google/protobuf/j1;->c:[Ljava/lang/Object;

    .line 118
    .line 119
    aget-object v2, v2, v0

    .line 120
    .line 121
    check-cast v2, Ljava/lang/Long;

    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 124
    .line 125
    .line 126
    move-result-wide v4

    .line 127
    invoke-static {v3}, Lcom/google/protobuf/n;->c(I)I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    invoke-static {v4, v5}, Lcom/google/protobuf/n;->e(J)I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    goto :goto_4d

    .line 136
    :goto_87
    add-int/lit8 v0, v0, 0x1

    .line 137
    .line 138
    goto/16 :goto_8

    .line 139
    .line 140
    :cond_8b
    iput v1, p0, Lcom/google/protobuf/j1;->d:I

    .line 141
    .line 142
    return v1
.end method

.method public final c(ILjava/lang/Object;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/j1;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1a

    .line 4
    .line 5
    iget v0, p0, Lcom/google/protobuf/j1;->a:I

    .line 6
    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/google/protobuf/j1;->a(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/protobuf/j1;->b:[I

    .line 13
    .line 14
    iget v1, p0, Lcom/google/protobuf/j1;->a:I

    .line 15
    .line 16
    aput p1, v0, v1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/protobuf/j1;->c:[Ljava/lang/Object;

    .line 19
    .line 20
    aput-object p2, p1, v1

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    iput v1, p0, Lcom/google/protobuf/j1;->a:I

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1a
    invoke-static {}, Landroidx/navigation/b;->a()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final d(Lcom/google/protobuf/l0;)V
    .registers 8

    .line 1
    iget v0, p0, Lcom/google/protobuf/j1;->a:I

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    goto :goto_66

    .line 6
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v0, p1, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lcom/google/protobuf/n;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_d
    iget v2, p0, Lcom/google/protobuf/j1;->a:I

    .line 15
    .line 16
    if-ge v1, v2, :cond_66

    .line 17
    .line 18
    iget-object v2, p0, Lcom/google/protobuf/j1;->b:[I

    .line 19
    .line 20
    aget v2, v2, v1

    .line 21
    .line 22
    iget-object v3, p0, Lcom/google/protobuf/j1;->c:[Ljava/lang/Object;

    .line 23
    .line 24
    aget-object v3, v3, v1

    .line 25
    .line 26
    ushr-int/lit8 v4, v2, 0x3

    .line 27
    .line 28
    and-int/lit8 v2, v2, 0x7

    .line 29
    .line 30
    if-eqz v2, :cond_5a

    .line 31
    .line 32
    const/4 v5, 0x1

    .line 33
    if-eq v2, v5, :cond_50

    .line 34
    .line 35
    const/4 v5, 0x2

    .line 36
    if-eq v2, v5, :cond_4a

    .line 37
    .line 38
    const/4 v5, 0x3

    .line 39
    if-eq v2, v5, :cond_3d

    .line 40
    .line 41
    const/4 v5, 0x5

    .line 42
    if-ne v2, v5, :cond_35

    .line 43
    .line 44
    check-cast v3, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {v0, v4, v2}, Lcom/google/protobuf/n;->l(II)V

    .line 51
    .line 52
    .line 53
    goto :goto_63

    .line 54
    :cond_35
    invoke-static {}, Lcom/google/protobuf/d0;->b()Lcom/google/protobuf/c0;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p1}, Ln0/b;->w(Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_3d
    invoke-virtual {v0, v4, v5}, Lcom/google/protobuf/n;->w(II)V

    .line 63
    .line 64
    .line 65
    check-cast v3, Lcom/google/protobuf/j1;

    .line 66
    .line 67
    invoke-virtual {v3, p1}, Lcom/google/protobuf/j1;->d(Lcom/google/protobuf/l0;)V

    .line 68
    .line 69
    .line 70
    const/4 v2, 0x4

    .line 71
    invoke-virtual {v0, v4, v2}, Lcom/google/protobuf/n;->w(II)V

    .line 72
    .line 73
    .line 74
    goto :goto_63

    .line 75
    :cond_4a
    check-cast v3, Lcom/google/protobuf/g;

    .line 76
    .line 77
    invoke-virtual {v0, v4, v3}, Lcom/google/protobuf/n;->j(ILcom/google/protobuf/g;)V

    .line 78
    .line 79
    .line 80
    goto :goto_63

    .line 81
    :cond_50
    check-cast v3, Ljava/lang/Long;

    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 84
    .line 85
    .line 86
    move-result-wide v2

    .line 87
    invoke-virtual {v0, v4, v2, v3}, Lcom/google/protobuf/n;->n(IJ)V

    .line 88
    .line 89
    .line 90
    goto :goto_63

    .line 91
    :cond_5a
    check-cast v3, Ljava/lang/Long;

    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 94
    .line 95
    .line 96
    move-result-wide v2

    .line 97
    invoke-virtual {v0, v4, v2, v3}, Lcom/google/protobuf/n;->z(IJ)V

    .line 98
    .line 99
    .line 100
    :goto_63
    add-int/lit8 v1, v1, 0x1

    .line 101
    .line 102
    goto :goto_d

    .line 103
    :cond_66
    :goto_66
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 10

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_8

    .line 7
    .line 8
    return v1

    .line 9
    :cond_8
    instance-of v2, p1, Lcom/google/protobuf/j1;

    .line 10
    .line 11
    if-nez v2, :cond_d

    .line 12
    .line 13
    return v1

    .line 14
    :cond_d
    check-cast p1, Lcom/google/protobuf/j1;

    .line 15
    .line 16
    iget v2, p0, Lcom/google/protobuf/j1;->a:I

    .line 17
    .line 18
    iget v3, p1, Lcom/google/protobuf/j1;->a:I

    .line 19
    .line 20
    if-ne v2, v3, :cond_3e

    .line 21
    .line 22
    iget-object v3, p0, Lcom/google/protobuf/j1;->b:[I

    .line 23
    .line 24
    iget-object v4, p1, Lcom/google/protobuf/j1;->b:[I

    .line 25
    .line 26
    move v5, v1

    .line 27
    :goto_1a
    if-ge v5, v2, :cond_26

    .line 28
    .line 29
    aget v6, v3, v5

    .line 30
    .line 31
    aget v7, v4, v5

    .line 32
    .line 33
    if-eq v6, v7, :cond_23

    .line 34
    .line 35
    goto :goto_3e

    .line 36
    :cond_23
    add-int/lit8 v5, v5, 0x1

    .line 37
    .line 38
    goto :goto_1a

    .line 39
    :cond_26
    iget-object v2, p0, Lcom/google/protobuf/j1;->c:[Ljava/lang/Object;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/google/protobuf/j1;->c:[Ljava/lang/Object;

    .line 42
    .line 43
    iget v3, p0, Lcom/google/protobuf/j1;->a:I

    .line 44
    .line 45
    move v4, v1

    .line 46
    :goto_2d
    if-ge v4, v3, :cond_3d

    .line 47
    .line 48
    aget-object v5, v2, v4

    .line 49
    .line 50
    aget-object v6, p1, v4

    .line 51
    .line 52
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-nez v5, :cond_3a

    .line 57
    .line 58
    goto :goto_3e

    .line 59
    :cond_3a
    add-int/lit8 v4, v4, 0x1

    .line 60
    .line 61
    goto :goto_2d

    .line 62
    :cond_3d
    return v0

    .line 63
    :cond_3e
    :goto_3e
    return v1
.end method

.method public final hashCode()I
    .registers 9

    .line 1
    iget v0, p0, Lcom/google/protobuf/j1;->a:I

    .line 2
    .line 3
    const/16 v1, 0x20f

    .line 4
    .line 5
    add-int/2addr v1, v0

    .line 6
    mul-int/lit8 v1, v1, 0x1f

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/protobuf/j1;->b:[I

    .line 9
    .line 10
    const/16 v3, 0x11

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    move v6, v3

    .line 14
    move v5, v4

    .line 15
    :goto_e
    if-ge v5, v0, :cond_18

    .line 16
    .line 17
    mul-int/lit8 v6, v6, 0x1f

    .line 18
    .line 19
    aget v7, v2, v5

    .line 20
    .line 21
    add-int/2addr v6, v7

    .line 22
    add-int/lit8 v5, v5, 0x1

    .line 23
    .line 24
    goto :goto_e

    .line 25
    :cond_18
    add-int/2addr v1, v6

    .line 26
    mul-int/lit8 v1, v1, 0x1f

    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/protobuf/j1;->c:[Ljava/lang/Object;

    .line 29
    .line 30
    iget v2, p0, Lcom/google/protobuf/j1;->a:I

    .line 31
    .line 32
    :goto_1f
    if-ge v4, v2, :cond_2d

    .line 33
    .line 34
    mul-int/lit8 v3, v3, 0x1f

    .line 35
    .line 36
    aget-object v5, v0, v4

    .line 37
    .line 38
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    add-int/2addr v3, v5

    .line 43
    add-int/lit8 v4, v4, 0x1

    .line 44
    .line 45
    goto :goto_1f

    .line 46
    :cond_2d
    add-int/2addr v1, v3

    .line 47
    return v1
.end method
