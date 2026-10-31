.class public abstract Lj4/g;
.super Lj4/a;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/Set;


# static fields
.field public static final synthetic d:I


# instance fields
.field public transient c:Lj4/e;


# direct methods
.method public static i(I)I
    .registers 6

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    const v0, 0x2ccccccc

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-ge p0, v0, :cond_22

    .line 11
    .line 12
    add-int/lit8 v0, p0, -0x1

    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    shl-int/2addr v0, v1

    .line 19
    :goto_12
    int-to-double v1, v0

    .line 20
    const-wide v3, 0x3fe6666666666666L    # 0.7

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    mul-double/2addr v1, v3

    .line 26
    int-to-double v3, p0

    .line 27
    cmpg-double v1, v1, v3

    .line 28
    .line 29
    if-gez v1, :cond_21

    .line 30
    .line 31
    shl-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_12

    .line 34
    :cond_21
    return v0

    .line 35
    :cond_22
    const/high16 v0, 0x40000000    # 2.0f

    .line 36
    .line 37
    if-ge p0, v0, :cond_27

    .line 38
    .line 39
    goto :goto_28

    .line 40
    :cond_27
    const/4 v1, 0x0

    .line 41
    :goto_28
    const-string p0, "collection too large"

    .line 42
    .line 43
    invoke-static {p0, v1}, Lo4/b;->d(Ljava/lang/String;Z)V

    .line 44
    .line 45
    .line 46
    return v0
.end method

.method public static varargs j(I[Ljava/lang/Object;)Lj4/g;
    .registers 15

    .line 1
    if-eqz p0, :cond_81

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eq p0, v1, :cond_76

    .line 6
    .line 7
    invoke-static {p0}, Lj4/g;->i(I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    new-array v5, v2, [Ljava/lang/Object;

    .line 12
    .line 13
    add-int/lit8 v7, v2, -0x1

    .line 14
    .line 15
    move v3, v0

    .line 16
    move v6, v3

    .line 17
    move v8, v6

    .line 18
    :goto_11
    if-ge v3, p0, :cond_45

    .line 19
    .line 20
    aget-object v4, p1, v3

    .line 21
    .line 22
    if-eqz v4, :cond_3a

    .line 23
    .line 24
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v9

    .line 28
    invoke-static {v9}, Lcom/bumptech/glide/c;->s(I)I

    .line 29
    .line 30
    .line 31
    move-result v10

    .line 32
    :goto_1f
    and-int v11, v10, v7

    .line 33
    .line 34
    aget-object v12, v5, v11

    .line 35
    .line 36
    if-nez v12, :cond_2e

    .line 37
    .line 38
    add-int/lit8 v10, v8, 0x1

    .line 39
    .line 40
    aput-object v4, p1, v8

    .line 41
    .line 42
    aput-object v4, v5, v11

    .line 43
    .line 44
    add-int/2addr v6, v9

    .line 45
    move v8, v10

    .line 46
    goto :goto_34

    .line 47
    :cond_2e
    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v11

    .line 51
    if-eqz v11, :cond_37

    .line 52
    .line 53
    :goto_34
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_11

    .line 56
    :cond_37
    add-int/lit8 v10, v10, 0x1

    .line 57
    .line 58
    goto :goto_1f

    .line 59
    :cond_3a
    const-string p0, "at index "

    .line 60
    .line 61
    invoke-static {v3, p0}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0}, Ln0/b;->n(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/4 p0, 0x0

    .line 69
    return-object p0

    .line 70
    :cond_45
    const/4 v3, 0x0

    .line 71
    invoke-static {p1, v8, p0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    if-ne v8, v1, :cond_56

    .line 75
    .line 76
    aget-object p0, p1, v0

    .line 77
    .line 78
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    new-instance p1, Lj4/p;

    .line 82
    .line 83
    invoke-direct {p1, p0}, Lj4/p;-><init>(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    return-object p1

    .line 87
    :cond_56
    invoke-static {v8}, Lj4/g;->i(I)I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    div-int/lit8 v2, v2, 0x2

    .line 92
    .line 93
    if-ge p0, v2, :cond_63

    .line 94
    .line 95
    invoke-static {v8, p1}, Lj4/g;->j(I[Ljava/lang/Object;)Lj4/g;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :cond_63
    array-length p0, p1

    .line 101
    shr-int/lit8 v0, p0, 0x1

    .line 102
    .line 103
    shr-int/lit8 p0, p0, 0x2

    .line 104
    .line 105
    add-int/2addr v0, p0

    .line 106
    if-ge v8, v0, :cond_6f

    .line 107
    .line 108
    invoke-static {p1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    :cond_6f
    move-object v4, p1

    .line 113
    new-instance v3, Lj4/o;

    .line 114
    .line 115
    invoke-direct/range {v3 .. v8}, Lj4/o;-><init>([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 116
    .line 117
    .line 118
    return-object v3

    .line 119
    :cond_76
    aget-object p0, p1, v0

    .line 120
    .line 121
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    new-instance p1, Lj4/p;

    .line 125
    .line 126
    invoke-direct {p1, p0}, Lj4/p;-><init>(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    return-object p1

    .line 130
    :cond_81
    sget-object p0, Lj4/o;->k:Lj4/o;

    .line 131
    .line 132
    return-object p0
.end method


# virtual methods
.method public a()Lj4/e;
    .registers 2

    .line 1
    iget-object v0, p0, Lj4/g;->c:Lj4/e;

    .line 2
    .line 3
    if-nez v0, :cond_a

    .line 4
    .line 5
    invoke-virtual {p0}, Lj4/g;->k()Lj4/e;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lj4/g;->c:Lj4/e;

    .line 10
    .line 11
    :cond_a
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lj4/g;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1f

    .line 9
    .line 10
    instance-of v1, p0, Lj4/o;

    .line 11
    .line 12
    if-eqz v1, :cond_1f

    .line 13
    .line 14
    move-object v1, p1

    .line 15
    check-cast v1, Lj4/g;

    .line 16
    .line 17
    instance-of v1, v1, Lj4/o;

    .line 18
    .line 19
    if-eqz v1, :cond_1f

    .line 20
    .line 21
    invoke-virtual {p0}, Lj4/g;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eq v1, v3, :cond_1f

    .line 30
    .line 31
    return v2

    .line 32
    :cond_1f
    if-ne p0, p1, :cond_22

    .line 33
    .line 34
    goto :goto_38

    .line 35
    :cond_22
    instance-of v1, p1, Ljava/util/Set;

    .line 36
    .line 37
    if-eqz v1, :cond_39

    .line 38
    .line 39
    check-cast p1, Ljava/util/Set;

    .line 40
    .line 41
    :try_start_28
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-ne v1, v3, :cond_39

    .line 50
    .line 51
    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 52
    .line 53
    .line 54
    move-result p1
    :try_end_36
    .catch Ljava/lang/NullPointerException; {:try_start_28 .. :try_end_36} :catch_39
    .catch Ljava/lang/ClassCastException; {:try_start_28 .. :try_end_36} :catch_39

    .line 55
    if-eqz p1, :cond_39

    .line 56
    .line 57
    :goto_38
    return v0

    .line 58
    :catch_39
    :cond_39
    return v2
.end method

.method public hashCode()I
    .registers 5

    .line 1
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_1c

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eqz v3, :cond_17

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move v3, v1

    .line 25
    :goto_18
    add-int/2addr v2, v3

    .line 26
    not-int v2, v2

    .line 27
    not-int v2, v2

    .line 28
    goto :goto_6

    .line 29
    :cond_1c
    return v2
.end method

.method public k()Lj4/e;
    .registers 3

    .line 1
    sget-object v0, Lj4/a;->b:[Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lj4/a;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lj4/e;->c:Lj4/c;

    .line 8
    .line 9
    array-length v1, v0

    .line 10
    invoke-static {v1, v0}, Lj4/e;->i(I[Ljava/lang/Object;)Lj4/i;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method
