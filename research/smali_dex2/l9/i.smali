.class public final synthetic Ll9/i;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lcom/example/navistart/cores/ProxyFactory$ProxyFactoryCreatContext;
.implements Lcom/example/navistart/cores/ProxyFactory$ProxyFactoryCreat;
.implements Landroidx/core/util/Supplier;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Ll9/i;->b:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public static synthetic b(IILjava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public static synthetic c(ILjava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public static synthetic d(Ljava/lang/Object;)V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    throw v0
.end method

.method public static synthetic e(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method


# virtual methods
.method public create()Ljava/lang/Object;
    .registers 8

    .line 1
    iget v0, p0, Ll9/i;->b:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x1

    .line 8
    const/4 v6, 0x5

    .line 9
    packed-switch v0, :pswitch_data_80

    .line 10
    .line 11
    .line 12
    :pswitch_b
    new-instance v0, Lh1/a;

    .line 13
    .line 14
    invoke-direct {v0, v2}, Lh1/a;-><init>(I)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :pswitch_11
    new-instance v0, Lh1/a;

    .line 19
    .line 20
    invoke-direct {v0, v5}, Lh1/a;-><init>(I)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_17
    new-instance v0, Lg1/a;

    .line 25
    .line 26
    invoke-direct {v0, v4}, Lg1/a;-><init>(I)V

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :pswitch_1d
    new-instance v0, Lk1/a;

    .line 31
    .line 32
    invoke-direct {v0, v6}, Lk1/a;-><init>(I)V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :pswitch_23
    new-instance v0, Lg1/a;

    .line 37
    .line 38
    invoke-direct {v0, v6}, Lg1/a;-><init>(I)V

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :pswitch_29
    new-instance v0, Lg1/a;

    .line 43
    .line 44
    invoke-direct {v0, v5}, Lg1/a;-><init>(I)V

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    :pswitch_2f
    new-instance v0, Lk1/a;

    .line 49
    .line 50
    invoke-direct {v0, v5}, Lk1/a;-><init>(I)V

    .line 51
    .line 52
    .line 53
    return-object v0

    .line 54
    :pswitch_35
    new-instance v0, Lk1/a;

    .line 55
    .line 56
    invoke-direct {v0, v4}, Lk1/a;-><init>(I)V

    .line 57
    .line 58
    .line 59
    return-object v0

    .line 60
    :pswitch_3b
    new-instance v0, Lk1/a;

    .line 61
    .line 62
    invoke-direct {v0, v1}, Lk1/a;-><init>(I)V

    .line 63
    .line 64
    .line 65
    return-object v0

    .line 66
    :pswitch_41
    new-instance v0, Lg1/a;

    .line 67
    .line 68
    invoke-direct {v0, v1}, Lg1/a;-><init>(I)V

    .line 69
    .line 70
    .line 71
    return-object v0

    .line 72
    :pswitch_47
    new-instance v0, Lk1/a;

    .line 73
    .line 74
    invoke-direct {v0, v3}, Lk1/a;-><init>(I)V

    .line 75
    .line 76
    .line 77
    return-object v0

    .line 78
    :pswitch_4d
    new-instance v0, Lg1/a;

    .line 79
    .line 80
    invoke-direct {v0, v3}, Lg1/a;-><init>(I)V

    .line 81
    .line 82
    .line 83
    return-object v0

    .line 84
    :pswitch_53
    new-instance v0, Lk1/a;

    .line 85
    .line 86
    invoke-direct {v0, v2}, Lk1/a;-><init>(I)V

    .line 87
    .line 88
    .line 89
    return-object v0

    .line 90
    :pswitch_59
    new-instance v0, Lh1/a;

    .line 91
    .line 92
    invoke-direct {v0, v3}, Lh1/a;-><init>(I)V

    .line 93
    .line 94
    .line 95
    const/16 v1, 0x20

    .line 96
    .line 97
    new-array v1, v1, [B

    .line 98
    .line 99
    fill-array-data v1, :array_b2

    .line 100
    .line 101
    .line 102
    const/16 v2, 0x8

    .line 103
    .line 104
    new-array v2, v2, [B

    .line 105
    .line 106
    fill-array-data v2, :array_c6

    .line 107
    .line 108
    .line 109
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    iput-object v1, v0, Lh1/a;->b:Ljava/lang/String;

    .line 114
    .line 115
    return-object v0

    .line 116
    :pswitch_73
    new-instance v0, Lh1/a;

    .line 117
    .line 118
    invoke-direct {v0, v4}, Lh1/a;-><init>(I)V

    .line 119
    .line 120
    .line 121
    return-object v0

    .line 122
    :pswitch_79
    new-instance v0, Lk1/a;

    .line 123
    .line 124
    const/4 v1, 0x6

    .line 125
    invoke-direct {v0, v1}, Lk1/a;-><init>(I)V

    .line 126
    .line 127
    .line 128
    return-object v0

    .line 129
    :pswitch_data_80
    .packed-switch 0x6
        :pswitch_79
        :pswitch_b
        :pswitch_73
        :pswitch_59
        :pswitch_53
        :pswitch_b
        :pswitch_4d
        :pswitch_47
        :pswitch_41
        :pswitch_3b
        :pswitch_35
        :pswitch_2f
        :pswitch_29
        :pswitch_b
        :pswitch_23
        :pswitch_1d
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_17
        :pswitch_b
        :pswitch_b
        :pswitch_11
    .end packed-switch

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :array_b2
    .array-data 1
        0x5t
        0x4dt
        -0x51t
        0x68t
        -0x4bt
        0x35t
        0x27t
        0x1et
        0x1bt
        0x4bt
        -0x51t
        0x66t
        -0x4bt
        0x30t
        0x30t
        0x5t
        0x0t
        0x47t
        -0x47t
        0x75t
        -0x4ct
        0x35t
        0x35t
        0x14t
        0x5t
        0x4bt
        -0x51t
        0x78t
        -0x57t
        0x31t
        0x32t
        0x1t
    .end array-data

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    :array_c6
    .array-data 1
        0x44t
        0x18t
        -0x5t
        0x27t
        -0x5t
        0x74t
        0x71t
        0x57t
    .end array-data
.end method

.method public create(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    new-instance p1, Ll1/a;

    .line 129
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    return-object p1
.end method

.method public get()Ljava/lang/Object;
    .registers 3

    .line 1
    iget v0, p0, Ll9/i;->b:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_38

    .line 4
    .line 5
    .line 6
    new-instance v0, Lj1/l;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :sswitch_b
    new-instance v0, Lj1/k;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :sswitch_11
    new-instance v0, Lj1/r;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-direct {v0, v1}, Lj1/r;-><init>(I)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :sswitch_18
    new-instance v0, Lj1/b;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :sswitch_1e
    new-instance v0, Lj1/e;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    return-object v0

    .line 37
    :sswitch_24
    new-instance v0, Lj1/a;

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-direct {v0, v1}, Lj1/a;-><init>(I)V

    .line 41
    .line 42
    .line 43
    return-object v0

    .line 44
    :sswitch_2b
    new-instance v0, Lj1/a;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-direct {v0, v1}, Lj1/a;-><init>(I)V

    .line 48
    .line 49
    .line 50
    return-object v0

    .line 51
    :sswitch_32
    new-instance v0, Lj1/q;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    return-object v0

    .line 57
    :sswitch_data_38
    .sparse-switch
        0x7 -> :sswitch_32
        0xb -> :sswitch_2b
        0x13 -> :sswitch_24
        0x16 -> :sswitch_1e
        0x17 -> :sswitch_18
        0x18 -> :sswitch_11
        0x1a -> :sswitch_b
    .end sparse-switch
.end method
