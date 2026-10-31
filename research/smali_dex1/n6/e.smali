.class public final Ln6/e;
.super Ln6/k;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final j:[I

.field public static final k:[I

.field public static final l:[[I


# instance fields
.field public final synthetic h:I

.field public final i:Ljava/lang/Object;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 2

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    fill-array-data v1, :array_22

    .line 6
    .line 7
    .line 8
    sput-object v1, Ln6/e;->j:[I

    .line 9
    .line 10
    const/4 v1, 0x6

    .line 11
    new-array v1, v1, [I

    .line 12
    .line 13
    fill-array-data v1, :array_3a

    .line 14
    .line 15
    .line 16
    sput-object v1, Ln6/e;->k:[I

    .line 17
    .line 18
    new-array v1, v0, [I

    .line 19
    .line 20
    fill-array-data v1, :array_4a

    .line 21
    .line 22
    .line 23
    new-array v0, v0, [I

    .line 24
    .line 25
    fill-array-data v0, :array_62

    .line 26
    .line 27
    .line 28
    filled-new-array {v1, v0}, [[I

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Ln6/e;->l:[[I

    .line 33
    .line 34
    return-void

    .line 35
    :array_22
    .array-data 4
        0x0
        0xb
        0xd
        0xe
        0x13
        0x19
        0x1c
        0x15
        0x16
        0x1a
    .end array-data

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    :array_3a
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :array_4a
    .array-data 4
        0x38
        0x34
        0x32
        0x31
        0x2c
        0x26
        0x23
        0x2a
        0x29
        0x25
    .end array-data

    .line 76
    :array_62
    .array-data 4
        0x7
        0xb
        0xd
        0xe
        0x13
        0x19
        0x1c
        0x15
        0x16
        0x1a
    .end array-data
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 1
    iput p1, p0, Ln6/e;->h:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_2c

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ln6/k;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x4

    .line 10
    new-array p1, p1, [I

    .line 11
    .line 12
    iput-object p1, p0, Ln6/e;->i:Ljava/lang/Object;

    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_e
    invoke-direct {p0}, Ln6/k;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance p1, Ln6/e;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-direct {p1, v0}, Ln6/e;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Ln6/e;->i:Ljava/lang/Object;

    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_1a
    invoke-direct {p0}, Ln6/k;-><init>()V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x4

    .line 31
    new-array p1, p1, [I

    .line 32
    .line 33
    iput-object p1, p0, Ln6/e;->i:Ljava/lang/Object;

    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_23
    invoke-direct {p0}, Ln6/k;-><init>()V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x4

    .line 40
    new-array p1, p1, [I

    .line 41
    .line 42
    iput-object p1, p0, Ln6/e;->i:Ljava/lang/Object;

    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_23
        :pswitch_1a
        :pswitch_e
    .end packed-switch
.end method

.method public static o(Lz5/m;)Lz5/m;
    .registers 6

    .line 1
    iget-object v0, p0, Lz5/m;->a:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/16 v2, 0x30

    .line 9
    .line 10
    if-ne v1, v2, :cond_22

    .line 11
    .line 12
    new-instance v1, Lz5/m;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v2, p0, Lz5/m;->c:[Lz5/o;

    .line 20
    .line 21
    sget-object v3, Lz5/a;->p:Lz5/a;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-direct {v1, v0, v4, v2, v3}, Lz5/m;-><init>(Ljava/lang/String;[B[Lz5/o;Lz5/a;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lz5/m;->e:Ljava/util/Map;

    .line 28
    .line 29
    if-eqz p0, :cond_21

    .line 30
    .line 31
    invoke-virtual {v1, p0}, Lz5/m;->a(Ljava/util/Map;)V

    .line 32
    .line 33
    .line 34
    :cond_21
    return-object v1

    .line 35
    :cond_22
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    throw p0
.end method


# virtual methods
.method public a(Lz5/b;Ljava/util/Map;)Lz5/m;
    .registers 4

    .line 1
    iget v0, p0, Ln6/e;->h:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_18

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Ln6/h;->a(Lz5/b;Ljava/util/Map;)Lz5/m;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :pswitch_a
    iget-object v0, p0, Ln6/e;->i:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ln6/e;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Ln6/h;->a(Lz5/b;Ljava/util/Map;)Lz5/m;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Ln6/e;->o(Lz5/m;)Lz5/m;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    nop

    .line 25
    :pswitch_data_18
    .packed-switch 0x3
        :pswitch_a
    .end packed-switch
.end method

.method public b(ILf6/a;Ljava/util/Map;)Lz5/m;
    .registers 5

    .line 1
    iget v0, p0, Ln6/e;->h:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_18

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Ln6/k;->b(ILf6/a;Ljava/util/Map;)Lz5/m;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :pswitch_a
    iget-object v0, p0, Ln6/e;->i:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ln6/e;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2, p3}, Ln6/k;->b(ILf6/a;Ljava/util/Map;)Lz5/m;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Ln6/e;->o(Lz5/m;)Lz5/m;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    nop

    .line 25
    :pswitch_data_18
    .packed-switch 0x3
        :pswitch_a
    .end packed-switch
.end method

.method public g(Ljava/lang/String;)Z
    .registers 12

    .line 1
    iget v0, p0, Ln6/e;->h:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_72

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Ln6/k;->g(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :pswitch_a
    const/4 v0, 0x6

    .line 12
    new-array v0, v0, [C

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x7

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {p1, v1, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const/16 v4, 0xc

    .line 23
    .line 24
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x5

    .line 35
    aget-char v5, v0, v4

    .line 36
    .line 37
    const-string v6, "00000"

    .line 38
    .line 39
    const-string v7, "0000"

    .line 40
    .line 41
    const/4 v8, 0x2

    .line 42
    const/4 v9, 0x3

    .line 43
    packed-switch v5, :pswitch_data_78

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    goto :goto_5a

    .line 56
    :pswitch_37
    const/4 v4, 0x4

    .line 57
    invoke-virtual {v1, v0, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    aget-char v0, v0, v4

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    goto :goto_5a

    .line 69
    :pswitch_44
    invoke-virtual {v1, v0, v3, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v0, v9, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    goto :goto_5a

    .line 79
    :pswitch_4e
    invoke-virtual {v1, v0, v3, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v0, v8, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    :goto_5a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    const/16 v3, 0x8

    .line 96
    .line 97
    if-lt v0, v3, :cond_69

    .line 98
    .line 99
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    :cond_69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-super {p0, p1}, Ln6/k;->g(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    return p1

    .line 115
    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    :pswitch_data_78
    .packed-switch 0x30
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_44
        :pswitch_37
    .end packed-switch
.end method

.method public i(Lf6/a;I)[I
    .registers 6

    .line 1
    iget v0, p0, Ln6/e;->h:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_16

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Ln6/k;->i(Lf6/a;I)[I

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :pswitch_a
    const/4 v0, 0x6

    .line 12
    new-array v0, v0, [I

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    sget-object v2, Ln6/e;->k:[I

    .line 16
    .line 17
    invoke-static {p1, p2, v1, v2, v0}, Ln6/k;->l(Lf6/a;IZ[I[I)[I

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    nop

    .line 23
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch
.end method

.method public final j(Lf6/a;[ILjava/lang/StringBuilder;)I
    .registers 15

    .line 1
    iget v0, p0, Ln6/e;->h:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_14a

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ln6/e;->i:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ln6/e;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, p3}, Ln6/e;->j(Lf6/a;[ILjava/lang/StringBuilder;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :pswitch_e
    iget-object v0, p0, Ln6/e;->i:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, [I

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    aput v1, v0, v1

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    aput v1, v0, v2

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    aput v1, v0, v3

    .line 27
    .line 28
    const/4 v3, 0x3

    .line 29
    aput v1, v0, v3

    .line 30
    .line 31
    iget v3, p1, Lf6/a;->c:I

    .line 32
    .line 33
    aget p2, p2, v2

    .line 34
    .line 35
    move v4, v1

    .line 36
    :goto_23
    sget-object v5, Ln6/k;->f:[[I

    .line 37
    .line 38
    const/4 v6, 0x4

    .line 39
    if-ge v4, v6, :cond_41

    .line 40
    .line 41
    if-ge p2, v3, :cond_41

    .line 42
    .line 43
    invoke-static {p1, v0, p2, v5}, Ln6/k;->h(Lf6/a;[II[[I)I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    add-int/lit8 v5, v5, 0x30

    .line 48
    .line 49
    int-to-char v5, v5

    .line 50
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    array-length v5, v0

    .line 54
    move v6, v1

    .line 55
    :goto_36
    if-ge v6, v5, :cond_3e

    .line 56
    .line 57
    aget v7, v0, v6

    .line 58
    .line 59
    add-int/2addr p2, v7

    .line 60
    add-int/lit8 v6, v6, 0x1

    .line 61
    .line 62
    goto :goto_36

    .line 63
    :cond_3e
    add-int/lit8 v4, v4, 0x1

    .line 64
    .line 65
    goto :goto_23

    .line 66
    :cond_41
    const/4 v4, 0x5

    .line 67
    new-array v4, v4, [I

    .line 68
    .line 69
    sget-object v7, Ln6/k;->e:[I

    .line 70
    .line 71
    invoke-static {p1, p2, v2, v7, v4}, Ln6/k;->l(Lf6/a;IZ[I[I)[I

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    aget p2, p2, v2

    .line 76
    .line 77
    move v2, v1

    .line 78
    :goto_4d
    if-ge v2, v6, :cond_68

    .line 79
    .line 80
    if-ge p2, v3, :cond_68

    .line 81
    .line 82
    invoke-static {p1, v0, p2, v5}, Ln6/k;->h(Lf6/a;[II[[I)I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    add-int/lit8 v4, v4, 0x30

    .line 87
    .line 88
    int-to-char v4, v4

    .line 89
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    array-length v4, v0

    .line 93
    move v7, v1

    .line 94
    :goto_5d
    if-ge v7, v4, :cond_65

    .line 95
    .line 96
    aget v8, v0, v7

    .line 97
    .line 98
    add-int/2addr p2, v8

    .line 99
    add-int/lit8 v7, v7, 0x1

    .line 100
    .line 101
    goto :goto_5d

    .line 102
    :cond_65
    add-int/lit8 v2, v2, 0x1

    .line 103
    .line 104
    goto :goto_4d

    .line 105
    :cond_68
    return p2

    .line 106
    :pswitch_69
    iget-object v0, p0, Ln6/e;->i:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v0, [I

    .line 109
    .line 110
    const/4 v1, 0x0

    .line 111
    aput v1, v0, v1

    .line 112
    .line 113
    const/4 v2, 0x1

    .line 114
    aput v1, v0, v2

    .line 115
    .line 116
    const/4 v3, 0x2

    .line 117
    aput v1, v0, v3

    .line 118
    .line 119
    const/4 v3, 0x3

    .line 120
    aput v1, v0, v3

    .line 121
    .line 122
    iget v3, p1, Lf6/a;->c:I

    .line 123
    .line 124
    aget p2, p2, v2

    .line 125
    .line 126
    move v4, v1

    .line 127
    move v5, v4

    .line 128
    :goto_7f
    const/4 v6, 0x6

    .line 129
    const/16 v7, 0xa

    .line 130
    .line 131
    if-ge v4, v6, :cond_a8

    .line 132
    .line 133
    if-ge p2, v3, :cond_a8

    .line 134
    .line 135
    sget-object v6, Ln6/k;->g:[[I

    .line 136
    .line 137
    invoke-static {p1, v0, p2, v6}, Ln6/k;->h(Lf6/a;[II[[I)I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    rem-int/lit8 v8, v6, 0xa

    .line 142
    .line 143
    add-int/lit8 v8, v8, 0x30

    .line 144
    .line 145
    int-to-char v8, v8

    .line 146
    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    array-length v8, v0

    .line 150
    move v9, v1

    .line 151
    :goto_96
    if-ge v9, v8, :cond_9e

    .line 152
    .line 153
    aget v10, v0, v9

    .line 154
    .line 155
    add-int/2addr p2, v10

    .line 156
    add-int/lit8 v9, v9, 0x1

    .line 157
    .line 158
    goto :goto_96

    .line 159
    :cond_9e
    if-lt v6, v7, :cond_a5

    .line 160
    .line 161
    rsub-int/lit8 v6, v4, 0x5

    .line 162
    .line 163
    shl-int v6, v2, v6

    .line 164
    .line 165
    or-int/2addr v5, v6

    .line 166
    :cond_a5
    add-int/lit8 v4, v4, 0x1

    .line 167
    .line 168
    goto :goto_7f

    .line 169
    :cond_a8
    move p1, v1

    .line 170
    :goto_a9
    if-gt p1, v2, :cond_c9

    .line 171
    .line 172
    move v0, v1

    .line 173
    :goto_ac
    if-ge v0, v7, :cond_c6

    .line 174
    .line 175
    sget-object v3, Ln6/e;->l:[[I

    .line 176
    .line 177
    aget-object v3, v3, p1

    .line 178
    .line 179
    aget v3, v3, v0

    .line 180
    .line 181
    if-ne v5, v3, :cond_c3

    .line 182
    .line 183
    add-int/lit8 p1, p1, 0x30

    .line 184
    .line 185
    int-to-char p1, p1

    .line 186
    invoke-virtual {p3, v1, p1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    add-int/lit8 v0, v0, 0x30

    .line 190
    .line 191
    int-to-char p1, v0

    .line 192
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    return p2

    .line 196
    :cond_c3
    add-int/lit8 v0, v0, 0x1

    .line 197
    .line 198
    goto :goto_ac

    .line 199
    :cond_c6
    add-int/lit8 p1, p1, 0x1

    .line 200
    .line 201
    goto :goto_a9

    .line 202
    :cond_c9
    sget-object p1, Lz5/i;->d:Lz5/i;

    .line 203
    .line 204
    throw p1

    .line 205
    :pswitch_cc
    iget-object v0, p0, Ln6/e;->i:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v0, [I

    .line 208
    .line 209
    const/4 v1, 0x0

    .line 210
    aput v1, v0, v1

    .line 211
    .line 212
    const/4 v2, 0x1

    .line 213
    aput v1, v0, v2

    .line 214
    .line 215
    const/4 v3, 0x2

    .line 216
    aput v1, v0, v3

    .line 217
    .line 218
    const/4 v3, 0x3

    .line 219
    aput v1, v0, v3

    .line 220
    .line 221
    iget v3, p1, Lf6/a;->c:I

    .line 222
    .line 223
    aget p2, p2, v2

    .line 224
    .line 225
    move v4, v1

    .line 226
    move v5, v4

    .line 227
    :goto_e2
    const/4 v6, 0x6

    .line 228
    const/16 v7, 0xa

    .line 229
    .line 230
    if-ge v4, v6, :cond_10b

    .line 231
    .line 232
    if-ge p2, v3, :cond_10b

    .line 233
    .line 234
    sget-object v6, Ln6/k;->g:[[I

    .line 235
    .line 236
    invoke-static {p1, v0, p2, v6}, Ln6/k;->h(Lf6/a;[II[[I)I

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    rem-int/lit8 v8, v6, 0xa

    .line 241
    .line 242
    add-int/lit8 v8, v8, 0x30

    .line 243
    .line 244
    int-to-char v8, v8

    .line 245
    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    array-length v8, v0

    .line 249
    move v9, v1

    .line 250
    :goto_f9
    if-ge v9, v8, :cond_101

    .line 251
    .line 252
    aget v10, v0, v9

    .line 253
    .line 254
    add-int/2addr p2, v10

    .line 255
    add-int/lit8 v9, v9, 0x1

    .line 256
    .line 257
    goto :goto_f9

    .line 258
    :cond_101
    if-lt v6, v7, :cond_108

    .line 259
    .line 260
    rsub-int/lit8 v6, v4, 0x5

    .line 261
    .line 262
    shl-int v6, v2, v6

    .line 263
    .line 264
    or-int/2addr v5, v6

    .line 265
    :cond_108
    add-int/lit8 v4, v4, 0x1

    .line 266
    .line 267
    goto :goto_e2

    .line 268
    :cond_10b
    move v4, v1

    .line 269
    :goto_10c
    if-ge v4, v7, :cond_147

    .line 270
    .line 271
    sget-object v8, Ln6/e;->j:[I

    .line 272
    .line 273
    aget v8, v8, v4

    .line 274
    .line 275
    if-ne v5, v8, :cond_144

    .line 276
    .line 277
    add-int/lit8 v4, v4, 0x30

    .line 278
    .line 279
    int-to-char v4, v4

    .line 280
    invoke-virtual {p3, v1, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    sget-object v4, Ln6/k;->e:[I

    .line 284
    .line 285
    const/4 v5, 0x5

    .line 286
    new-array v5, v5, [I

    .line 287
    .line 288
    invoke-static {p1, p2, v2, v4, v5}, Ln6/k;->l(Lf6/a;IZ[I[I)[I

    .line 289
    .line 290
    .line 291
    move-result-object p2

    .line 292
    aget p2, p2, v2

    .line 293
    .line 294
    move v2, v1

    .line 295
    :goto_126
    if-ge v2, v6, :cond_143

    .line 296
    .line 297
    if-ge p2, v3, :cond_143

    .line 298
    .line 299
    sget-object v4, Ln6/k;->f:[[I

    .line 300
    .line 301
    invoke-static {p1, v0, p2, v4}, Ln6/k;->h(Lf6/a;[II[[I)I

    .line 302
    .line 303
    .line 304
    move-result v4

    .line 305
    add-int/lit8 v4, v4, 0x30

    .line 306
    .line 307
    int-to-char v4, v4

    .line 308
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    array-length v4, v0

    .line 312
    move v5, v1

    .line 313
    :goto_138
    if-ge v5, v4, :cond_140

    .line 314
    .line 315
    aget v7, v0, v5

    .line 316
    .line 317
    add-int/2addr p2, v7

    .line 318
    add-int/lit8 v5, v5, 0x1

    .line 319
    .line 320
    goto :goto_138

    .line 321
    :cond_140
    add-int/lit8 v2, v2, 0x1

    .line 322
    .line 323
    goto :goto_126

    .line 324
    :cond_143
    return p2

    .line 325
    :cond_144
    add-int/lit8 v4, v4, 0x1

    .line 326
    .line 327
    goto :goto_10c

    .line 328
    :cond_147
    sget-object p1, Lz5/i;->d:Lz5/i;

    .line 329
    .line 330
    throw p1

    .line 331
    :pswitch_data_14a
    .packed-switch 0x0
        :pswitch_cc
        :pswitch_69
        :pswitch_e
    .end packed-switch
.end method

.method public k(ILf6/a;[ILjava/util/Map;)Lz5/m;
    .registers 6

    .line 1
    iget v0, p0, Ln6/e;->h:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_18

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3, p4}, Ln6/k;->k(ILf6/a;[ILjava/util/Map;)Lz5/m;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :pswitch_a
    iget-object v0, p0, Ln6/e;->i:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ln6/e;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2, p3, p4}, Ln6/k;->k(ILf6/a;[ILjava/util/Map;)Lz5/m;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Ln6/e;->o(Lz5/m;)Lz5/m;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    nop

    .line 25
    :pswitch_data_18
    .packed-switch 0x3
        :pswitch_a
    .end packed-switch
.end method

.method public final n()Lz5/a;
    .registers 2

    .line 1
    iget v0, p0, Ln6/e;->h:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_12

    .line 4
    .line 5
    .line 6
    sget-object v0, Lz5/a;->p:Lz5/a;

    .line 7
    .line 8
    return-object v0

    .line 9
    :pswitch_8
    sget-object v0, Lz5/a;->h:Lz5/a;

    .line 10
    .line 11
    return-object v0

    .line 12
    :pswitch_b
    sget-object v0, Lz5/a;->q:Lz5/a;

    .line 13
    .line 14
    return-object v0

    .line 15
    :pswitch_e
    sget-object v0, Lz5/a;->i:Lz5/a;

    .line 16
    .line 17
    return-object v0

    .line 18
    nop

    .line 19
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method
