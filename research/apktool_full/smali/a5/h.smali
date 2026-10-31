.class public La5/h;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lf2/b;
.implements Le5/b;
.implements Lokhttp3/Callback;
.implements Lo7/w;
.implements Lv/a;


# instance fields
.field public final synthetic b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 168
    iput p1, p0, La5/h;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;Ljava/util/ArrayList;Lk/g;)V
    .locals 1

    const/16 v0, 0x17

    iput v0, p0, La5/h;->b:I

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const-string v0, "Argument must not be null"

    invoke-static {p3, v0}, Lc0/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iput-object p3, p0, La5/h;->c:Ljava/lang/Object;

    .line 186
    invoke-static {p2, v0}, Lc0/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iput-object p2, p0, La5/h;->d:Ljava/lang/Object;

    .line 188
    new-instance p2, Lcom/bumptech/glide/load/data/i;

    invoke-direct {p2, p1}, Lcom/bumptech/glide/load/data/i;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p2, p0, La5/h;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lc0/m;Ljava/util/ArrayList;Lk/g;)V
    .locals 1

    const/16 v0, 0x16

    iput v0, p0, La5/h;->b:I

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const-string v0, "Argument must not be null"

    invoke-static {p3, v0}, Lc0/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iput-object p3, p0, La5/h;->d:Ljava/lang/Object;

    .line 180
    invoke-static {p2, v0}, Lc0/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iput-object p2, p0, La5/h;->e:Ljava/lang/Object;

    .line 182
    new-instance p2, Lcom/bumptech/glide/load/data/i;

    invoke-direct {p2, p1, p3}, Lcom/bumptech/glide/load/data/i;-><init>(Ljava/io/InputStream;Lk/g;)V

    iput-object p2, p0, La5/h;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf6/a;)V
    .locals 2

    const/16 v0, 0x18

    iput v0, p0, La5/h;->b:I

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Lc6/a;

    .line 171
    invoke-direct {v0}, Lc6/a;-><init>()V

    const/4 v1, 0x0

    .line 172
    iput v1, v0, Lc6/a;->b:I

    const/4 v1, 0x1

    .line 173
    iput v1, v0, Lc6/a;->c:I

    .line 174
    iput-object v0, p0, La5/h;->d:Ljava/lang/Object;

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, La5/h;->e:Ljava/lang/Object;

    .line 176
    iput-object p1, p0, La5/h;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf6/b;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/16 v2, 0x10

    .line 6
    .line 7
    iput v2, v0, La5/h;->b:I

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iget v2, v1, Lf6/b;->c:I

    .line 13
    .line 14
    const/16 v3, 0x8

    .line 15
    .line 16
    if-lt v2, v3, :cond_9

    .line 17
    .line 18
    const/16 v3, 0x90

    .line 19
    .line 20
    if-gt v2, v3, :cond_9

    .line 21
    .line 22
    and-int/lit8 v3, v2, 0x1

    .line 23
    .line 24
    if-nez v3, :cond_9

    .line 25
    .line 26
    iget v4, v1, Lf6/b;->b:I

    .line 27
    .line 28
    sget-object v5, Lj6/d;->h:[Lj6/d;

    .line 29
    .line 30
    if-nez v3, :cond_8

    .line 31
    .line 32
    and-int/lit8 v3, v4, 0x1

    .line 33
    .line 34
    if-nez v3, :cond_8

    .line 35
    .line 36
    sget-object v3, Lj6/d;->h:[Lj6/d;

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    :goto_0
    const/16 v7, 0x1e

    .line 40
    .line 41
    if-ge v6, v7, :cond_7

    .line 42
    .line 43
    aget-object v7, v3, v6

    .line 44
    .line 45
    iget v8, v7, Lj6/d;->b:I

    .line 46
    .line 47
    if-ne v8, v2, :cond_6

    .line 48
    .line 49
    iget v9, v7, Lj6/d;->c:I

    .line 50
    .line 51
    if-ne v9, v4, :cond_6

    .line 52
    .line 53
    iput-object v7, v0, La5/h;->e:Ljava/lang/Object;

    .line 54
    .line 55
    if-ne v2, v8, :cond_5

    .line 56
    .line 57
    iget v2, v7, Lj6/d;->d:I

    .line 58
    .line 59
    iget v3, v7, Lj6/d;->e:I

    .line 60
    .line 61
    div-int/2addr v8, v2

    .line 62
    div-int/2addr v9, v3

    .line 63
    mul-int v4, v8, v2

    .line 64
    .line 65
    mul-int v6, v9, v3

    .line 66
    .line 67
    new-instance v7, Lf6/b;

    .line 68
    .line 69
    invoke-direct {v7, v6, v4}, Lf6/b;-><init>(II)V

    .line 70
    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    :goto_1
    if-ge v4, v8, :cond_4

    .line 74
    .line 75
    mul-int v6, v4, v2

    .line 76
    .line 77
    const/4 v10, 0x0

    .line 78
    :goto_2
    if-ge v10, v9, :cond_3

    .line 79
    .line 80
    mul-int v11, v10, v3

    .line 81
    .line 82
    const/4 v12, 0x0

    .line 83
    :goto_3
    if-ge v12, v2, :cond_2

    .line 84
    .line 85
    add-int/lit8 v13, v2, 0x2

    .line 86
    .line 87
    mul-int/2addr v13, v4

    .line 88
    add-int/lit8 v13, v13, 0x1

    .line 89
    .line 90
    add-int/2addr v13, v12

    .line 91
    add-int v14, v6, v12

    .line 92
    .line 93
    const/4 v15, 0x0

    .line 94
    :goto_4
    if-ge v15, v3, :cond_1

    .line 95
    .line 96
    add-int/lit8 v16, v3, 0x2

    .line 97
    .line 98
    mul-int v16, v16, v10

    .line 99
    .line 100
    add-int/lit8 v16, v16, 0x1

    .line 101
    .line 102
    add-int v5, v16, v15

    .line 103
    .line 104
    invoke-virtual {v1, v5, v13}, Lf6/b;->b(II)Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    if-eqz v5, :cond_0

    .line 109
    .line 110
    add-int v5, v11, v15

    .line 111
    .line 112
    invoke-virtual {v7, v5, v14}, Lf6/b;->f(II)V

    .line 113
    .line 114
    .line 115
    :cond_0
    add-int/lit8 v15, v15, 0x1

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_1
    add-int/lit8 v12, v12, 0x1

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_4
    iput-object v7, v0, La5/h;->c:Ljava/lang/Object;

    .line 128
    .line 129
    new-instance v1, Lf6/b;

    .line 130
    .line 131
    iget v2, v7, Lf6/b;->b:I

    .line 132
    .line 133
    iget v3, v7, Lf6/b;->c:I

    .line 134
    .line 135
    invoke-direct {v1, v2, v3}, Lf6/b;-><init>(II)V

    .line 136
    .line 137
    .line 138
    iput-object v1, v0, La5/h;->d:Ljava/lang/Object;

    .line 139
    .line 140
    return-void

    .line 141
    :cond_5
    const-string v1, "Dimension of bitMatrix must match the version size"

    .line 142
    .line 143
    invoke-static {v1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const/4 v1, 0x0

    .line 147
    throw v1

    .line 148
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_7
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    throw v1

    .line 156
    :cond_8
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    throw v1

    .line 161
    :cond_9
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    throw v1
.end method

.method public constructor <init>(Lj/r;Ly/f;Lj/v;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, La5/h;->b:I

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La5/h;->e:Ljava/lang/Object;

    .line 190
    iput-object p2, p0, La5/h;->d:Ljava/lang/Object;

    .line 191
    iput-object p3, p0, La5/h;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 166
    iput p4, p0, La5/h;->b:I

    iput-object p1, p0, La5/h;->c:Ljava/lang/Object;

    iput-object p2, p0, La5/h;->d:Ljava/lang/Object;

    iput-object p3, p0, La5/h;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .line 167
    iput p4, p0, La5/h;->b:I

    iput-object p1, p0, La5/h;->e:Ljava/lang/Object;

    iput-object p2, p0, La5/h;->c:Ljava/lang/Object;

    iput-object p3, p0, La5/h;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo7/t;Ln7/e;)V
    .locals 1

    const/16 v0, 0x12

    iput v0, p0, La5/h;->b:I

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La5/h;->e:Ljava/lang/Object;

    .line 193
    iput-object p2, p0, La5/h;->c:Ljava/lang/Object;

    return-void
.end method

.method public static h(IILf6/a;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    if-ge v0, p1, :cond_1

    .line 4
    .line 5
    add-int v2, p0, v0

    .line 6
    .line 7
    invoke-virtual {p2, v2}, Lf6/a;->d(I)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    sub-int v2, p1, v0

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    sub-int/2addr v2, v3

    .line 17
    shl-int v2, v3, v2

    .line 18
    .line 19
    or-int/2addr v1, v2

    .line 20
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return v1
.end method

.method public static o(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    and-int/lit8 v1, v1, 0x1

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0, p1, p2}, La5/h;->o(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 23
    .line 24
    .line 25
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 26
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 27
    .line 28
    .line 29
    move-result p1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    .line 30
    and-int/lit8 p1, p1, 0x1

    .line 31
    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    :goto_0
    return-object v0

    .line 35
    :cond_2
    return-object p0

    .line 36
    :catch_0
    move-object v0, p0

    .line 37
    :catch_1
    return-object v0
.end method

.method private final w()V
    .locals 0

    .line 1
    return-void
.end method

.method private final x()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public a(Lj/d0;Lh/h;)Lj/d0;
    .locals 2

    .line 1
    invoke-interface {p1}, Lj/d0;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, La5/h;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lj/i;

    .line 14
    .line 15
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, La5/h;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Lk/b;

    .line 24
    .line 25
    invoke-static {v0, v1}, Lq/e;->c(Landroid/graphics/Bitmap;Lk/b;)Lq/e;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0, p2}, Lj/i;->a(Lj/d0;Lh/h;)Lj/d0;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_0
    instance-of v0, v0, Lu/b;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, La5/h;->e:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lv/c;

    .line 41
    .line 42
    invoke-virtual {v0, p1, p2}, Lv/c;->a(Lj/d0;Lh/h;)Lj/d0;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    :cond_1
    const/4 p1, 0x0

    .line 48
    return-object p1
.end method

.method public b(Ln7/f1;Lo7/v;Ln7/v0;)V
    .locals 0

    .line 1
    invoke-static {}, Lw7/b;->c()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {}, Lw7/b;->a()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p3}, La5/h;->c(Ln7/f1;Ln7/v0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    sget-object p1, Lw7/b;->a:Lw7/a;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    sget-object p2, Lw7/b;->a:Lw7/a;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_1
    move-exception p2

    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    throw p1
.end method

.method public c(Ln7/f1;Ln7/v0;)V
    .locals 4

    .line 1
    iget-object v0, p0, La5/h;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo7/t;

    .line 4
    .line 5
    iget-object v1, v0, Lo7/t;->k:Ln7/c;

    .line 6
    .line 7
    iget-object v1, v1, Ln7/c;->a:Ln7/o;

    .line 8
    .line 9
    iget-object v2, v0, Lo7/t;->h:Ln7/n;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :cond_0
    iget-object v2, p1, Ln7/f1;->a:Ln7/e1;

    .line 18
    .line 19
    sget-object v3, Ln7/e1;->e:Ln7/e1;

    .line 20
    .line 21
    if-ne v2, v3, :cond_1

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, Ln7/o;->a()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    new-instance p1, Li7/i;

    .line 32
    .line 33
    const/4 p2, 0x1

    .line 34
    invoke-direct {p1, p2}, Li7/i;-><init>(I)V

    .line 35
    .line 36
    .line 37
    iget-object p2, v0, Lo7/t;->l:Lo7/u;

    .line 38
    .line 39
    invoke-interface {p2, p1}, Lo7/u;->e(Li7/i;)V

    .line 40
    .line 41
    .line 42
    sget-object p2, Ln7/f1;->h:Ln7/f1;

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, "ClientCall was cancelled at or after deadline. "

    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p2, p1}, Ln7/f1;->b(Ljava/lang/String;)Ln7/f1;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    new-instance p2, Ln7/v0;

    .line 63
    .line 64
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-static {}, Lw7/b;->b()V

    .line 68
    .line 69
    .line 70
    iget-object v0, v0, Lo7/t;->e:Ljava/util/concurrent/Executor;

    .line 71
    .line 72
    new-instance v1, Lo7/q;

    .line 73
    .line 74
    invoke-direct {v1, p0, p1, p2}, Lo7/q;-><init>(La5/h;Ln7/f1;Ln7/v0;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public d(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0, p2, v1}, La5/h;->f(ILjava/lang/String;)Lq6/h;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v1, Lq6/h;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v2}, Lq6/k;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-boolean v2, v1, Lq6/h;->d:Z

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    iget v2, v1, Lq6/h;->c:I

    .line 23
    .line 24
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move-object v2, v0

    .line 30
    :goto_1
    iget v1, v1, Lq6/j;->a:I

    .line 31
    .line 32
    if-eq p2, v1, :cond_2

    .line 33
    .line 34
    move p2, v1

    .line 35
    move-object v1, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method

.method public e(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget v0, p0, La5/h;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, La5/h;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/bumptech/glide/load/data/i;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/i;->e()Landroid/os/ParcelFileDescriptor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :pswitch_0
    iget-object v0, p0, La5/h;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lcom/bumptech/glide/load/data/i;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/bumptech/glide/load/data/i;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Lq/x;

    .line 31
    .line 32
    invoke-virtual {v0}, Lq/x;->reset()V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :pswitch_1
    iget-object v0, p0, La5/h;->c:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 44
    .line 45
    invoke-static {v0}, Lc0/b;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Lc0/a;

    .line 50
    .line 51
    invoke-direct {v1, v0}, Lc0/a;-><init>(Ljava/nio/ByteBuffer;)V

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-static {v1, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public f(ILjava/lang/String;)Lq6/h;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, La5/h;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lf6/a;

    .line 8
    .line 9
    iget-object v3, v0, La5/h;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v3, Lc6/a;

    .line 12
    .line 13
    iget-object v4, v0, La5/h;->e:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v4, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 19
    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    :cond_0
    move/from16 v1, p1

    .line 27
    .line 28
    iput v1, v3, Lc6/a;->b:I

    .line 29
    .line 30
    :goto_0
    iget v1, v3, Lc6/a;->b:I

    .line 31
    .line 32
    iget v6, v3, Lc6/a;->c:I

    .line 33
    .line 34
    const/16 v7, 0x24

    .line 35
    .line 36
    const/16 v15, 0x3a

    .line 37
    .line 38
    const/16 v10, 0x20

    .line 39
    .line 40
    const/16 v11, 0xf

    .line 41
    .line 42
    const/16 v12, 0x3f

    .line 43
    .line 44
    const/16 v13, 0x10

    .line 45
    .line 46
    const/4 v14, 0x5

    .line 47
    const/4 v5, 0x2

    .line 48
    if-ne v6, v5, :cond_e

    .line 49
    .line 50
    :goto_1
    iget v5, v3, Lc6/a;->b:I

    .line 51
    .line 52
    add-int/lit8 v6, v5, 0x5

    .line 53
    .line 54
    iget v8, v2, Lf6/a;->c:I

    .line 55
    .line 56
    if-le v6, v8, :cond_1

    .line 57
    .line 58
    goto/16 :goto_6

    .line 59
    .line 60
    :cond_1
    invoke-static {v5, v14, v2}, La5/h;->h(IILf6/a;)I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    const/4 v8, 0x6

    .line 65
    if-lt v6, v14, :cond_2

    .line 66
    .line 67
    if-ge v6, v13, :cond_2

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    add-int/lit8 v6, v5, 0x6

    .line 71
    .line 72
    iget v9, v2, Lf6/a;->c:I

    .line 73
    .line 74
    if-le v6, v9, :cond_3

    .line 75
    .line 76
    goto/16 :goto_6

    .line 77
    .line 78
    :cond_3
    invoke-static {v5, v8, v2}, La5/h;->h(IILf6/a;)I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-lt v5, v13, :cond_8

    .line 83
    .line 84
    if-ge v5, v12, :cond_8

    .line 85
    .line 86
    :goto_2
    iget v5, v3, Lc6/a;->b:I

    .line 87
    .line 88
    invoke-static {v5, v14, v2}, La5/h;->h(IILf6/a;)I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-ne v6, v11, :cond_4

    .line 93
    .line 94
    new-instance v6, Lq6/g;

    .line 95
    .line 96
    add-int/lit8 v5, v5, 0x5

    .line 97
    .line 98
    invoke-direct {v6, v7, v5}, Lq6/g;-><init>(CI)V

    .line 99
    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_4
    if-lt v6, v14, :cond_5

    .line 103
    .line 104
    if-ge v6, v11, :cond_5

    .line 105
    .line 106
    new-instance v8, Lq6/g;

    .line 107
    .line 108
    add-int/lit8 v5, v5, 0x5

    .line 109
    .line 110
    add-int/lit8 v6, v6, 0x2b

    .line 111
    .line 112
    int-to-char v6, v6

    .line 113
    invoke-direct {v8, v6, v5}, Lq6/g;-><init>(CI)V

    .line 114
    .line 115
    .line 116
    :goto_3
    move-object v6, v8

    .line 117
    goto :goto_5

    .line 118
    :cond_5
    invoke-static {v5, v8, v2}, La5/h;->h(IILf6/a;)I

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    if-lt v6, v10, :cond_6

    .line 123
    .line 124
    if-ge v6, v15, :cond_6

    .line 125
    .line 126
    new-instance v8, Lq6/g;

    .line 127
    .line 128
    add-int/lit8 v5, v5, 0x6

    .line 129
    .line 130
    add-int/lit8 v6, v6, 0x21

    .line 131
    .line 132
    int-to-char v6, v6

    .line 133
    invoke-direct {v8, v6, v5}, Lq6/g;-><init>(CI)V

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_6
    packed-switch v6, :pswitch_data_0

    .line 138
    .line 139
    .line 140
    const-string v1, "Decoding invalid alphanumeric value: "

    .line 141
    .line 142
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-static {v1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const/4 v1, 0x0

    .line 154
    return-object v1

    .line 155
    :pswitch_0
    const/16 v6, 0x2f

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :pswitch_1
    const/16 v6, 0x2e

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :pswitch_2
    const/16 v6, 0x2d

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :pswitch_3
    const/16 v6, 0x2c

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :pswitch_4
    const/16 v6, 0x2a

    .line 168
    .line 169
    :goto_4
    new-instance v8, Lq6/g;

    .line 170
    .line 171
    add-int/lit8 v5, v5, 0x6

    .line 172
    .line 173
    invoke-direct {v8, v6, v5}, Lq6/g;-><init>(CI)V

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :goto_5
    iget v5, v6, Lq6/j;->a:I

    .line 178
    .line 179
    iput v5, v3, Lc6/a;->b:I

    .line 180
    .line 181
    iget-char v6, v6, Lq6/g;->b:C

    .line 182
    .line 183
    if-ne v6, v7, :cond_7

    .line 184
    .line 185
    new-instance v6, Lq6/h;

    .line 186
    .line 187
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    invoke-direct {v6, v5, v7}, Lq6/h;-><init>(ILjava/lang/String;)V

    .line 192
    .line 193
    .line 194
    new-instance v5, Ld6/d;

    .line 195
    .line 196
    const/4 v7, 0x1

    .line 197
    invoke-direct {v5, v6, v7}, Ld6/d;-><init>(Lq6/h;Z)V

    .line 198
    .line 199
    .line 200
    goto :goto_c

    .line 201
    :cond_7
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    goto/16 :goto_1

    .line 205
    .line 206
    :cond_8
    :goto_6
    iget v5, v3, Lc6/a;->b:I

    .line 207
    .line 208
    add-int/lit8 v6, v5, 0x3

    .line 209
    .line 210
    iget v7, v2, Lf6/a;->c:I

    .line 211
    .line 212
    if-le v6, v7, :cond_9

    .line 213
    .line 214
    goto :goto_8

    .line 215
    :cond_9
    :goto_7
    if-ge v5, v6, :cond_c

    .line 216
    .line 217
    invoke-virtual {v2, v5}, Lf6/a;->d(I)Z

    .line 218
    .line 219
    .line 220
    move-result v7

    .line 221
    if-eqz v7, :cond_b

    .line 222
    .line 223
    :goto_8
    iget v5, v3, Lc6/a;->b:I

    .line 224
    .line 225
    invoke-virtual {v0, v5}, La5/h;->s(I)Z

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    if-eqz v5, :cond_d

    .line 230
    .line 231
    iget v5, v3, Lc6/a;->b:I

    .line 232
    .line 233
    add-int/lit8 v6, v5, 0x5

    .line 234
    .line 235
    iget v7, v2, Lf6/a;->c:I

    .line 236
    .line 237
    if-ge v6, v7, :cond_a

    .line 238
    .line 239
    add-int/lit8 v5, v5, 0x5

    .line 240
    .line 241
    iput v5, v3, Lc6/a;->b:I

    .line 242
    .line 243
    :goto_9
    const/4 v8, 0x3

    .line 244
    goto :goto_a

    .line 245
    :cond_a
    iput v7, v3, Lc6/a;->b:I

    .line 246
    .line 247
    goto :goto_9

    .line 248
    :goto_a
    iput v8, v3, Lc6/a;->c:I

    .line 249
    .line 250
    goto :goto_b

    .line 251
    :cond_b
    const/4 v8, 0x3

    .line 252
    add-int/lit8 v5, v5, 0x1

    .line 253
    .line 254
    goto :goto_7

    .line 255
    :cond_c
    const/4 v8, 0x3

    .line 256
    iget v5, v3, Lc6/a;->b:I

    .line 257
    .line 258
    add-int/2addr v5, v8

    .line 259
    iput v5, v3, Lc6/a;->b:I

    .line 260
    .line 261
    const/4 v7, 0x1

    .line 262
    iput v7, v3, Lc6/a;->c:I

    .line 263
    .line 264
    :cond_d
    :goto_b
    new-instance v5, Ld6/d;

    .line 265
    .line 266
    const/4 v6, 0x0

    .line 267
    const/4 v7, 0x0

    .line 268
    invoke-direct {v5, v7, v6}, Ld6/d;-><init>(Lq6/h;Z)V

    .line 269
    .line 270
    .line 271
    :goto_c
    iget-boolean v6, v5, Ld6/d;->a:Z

    .line 272
    .line 273
    :goto_d
    move v7, v6

    .line 274
    const/4 v6, 0x0

    .line 275
    goto/16 :goto_24

    .line 276
    .line 277
    :cond_e
    const/4 v8, 0x3

    .line 278
    const/16 v9, 0x8

    .line 279
    .line 280
    const/4 v10, 0x7

    .line 281
    if-ne v6, v8, :cond_1f

    .line 282
    .line 283
    :goto_e
    iget v6, v3, Lc6/a;->b:I

    .line 284
    .line 285
    add-int/lit8 v8, v6, 0x5

    .line 286
    .line 287
    iget v12, v2, Lf6/a;->c:I

    .line 288
    .line 289
    if-le v8, v12, :cond_f

    .line 290
    .line 291
    goto/16 :goto_13

    .line 292
    .line 293
    :cond_f
    invoke-static {v6, v14, v2}, La5/h;->h(IILf6/a;)I

    .line 294
    .line 295
    .line 296
    move-result v8

    .line 297
    const/16 v12, 0x74

    .line 298
    .line 299
    const/16 v15, 0x40

    .line 300
    .line 301
    if-lt v8, v14, :cond_10

    .line 302
    .line 303
    if-ge v8, v13, :cond_10

    .line 304
    .line 305
    goto :goto_f

    .line 306
    :cond_10
    add-int/lit8 v8, v6, 0x7

    .line 307
    .line 308
    iget v13, v2, Lf6/a;->c:I

    .line 309
    .line 310
    if-le v8, v13, :cond_11

    .line 311
    .line 312
    goto/16 :goto_13

    .line 313
    .line 314
    :cond_11
    invoke-static {v6, v10, v2}, La5/h;->h(IILf6/a;)I

    .line 315
    .line 316
    .line 317
    move-result v8

    .line 318
    if-lt v8, v15, :cond_12

    .line 319
    .line 320
    if-ge v8, v12, :cond_12

    .line 321
    .line 322
    goto :goto_f

    .line 323
    :cond_12
    add-int/lit8 v8, v6, 0x8

    .line 324
    .line 325
    iget v13, v2, Lf6/a;->c:I

    .line 326
    .line 327
    if-le v8, v13, :cond_13

    .line 328
    .line 329
    goto/16 :goto_13

    .line 330
    .line 331
    :cond_13
    invoke-static {v6, v9, v2}, La5/h;->h(IILf6/a;)I

    .line 332
    .line 333
    .line 334
    move-result v6

    .line 335
    const/16 v8, 0xe8

    .line 336
    .line 337
    if-lt v6, v8, :cond_19

    .line 338
    .line 339
    const/16 v8, 0xfd

    .line 340
    .line 341
    if-ge v6, v8, :cond_19

    .line 342
    .line 343
    :goto_f
    iget v6, v3, Lc6/a;->b:I

    .line 344
    .line 345
    invoke-static {v6, v14, v2}, La5/h;->h(IILf6/a;)I

    .line 346
    .line 347
    .line 348
    move-result v8

    .line 349
    if-ne v8, v11, :cond_14

    .line 350
    .line 351
    new-instance v8, Lq6/g;

    .line 352
    .line 353
    add-int/lit8 v6, v6, 0x5

    .line 354
    .line 355
    invoke-direct {v8, v7, v6}, Lq6/g;-><init>(CI)V

    .line 356
    .line 357
    .line 358
    goto/16 :goto_12

    .line 359
    .line 360
    :cond_14
    if-lt v8, v14, :cond_15

    .line 361
    .line 362
    if-ge v8, v11, :cond_15

    .line 363
    .line 364
    new-instance v12, Lq6/g;

    .line 365
    .line 366
    add-int/lit8 v6, v6, 0x5

    .line 367
    .line 368
    add-int/lit8 v8, v8, 0x2b

    .line 369
    .line 370
    int-to-char v8, v8

    .line 371
    invoke-direct {v12, v8, v6}, Lq6/g;-><init>(CI)V

    .line 372
    .line 373
    .line 374
    :goto_10
    move-object v8, v12

    .line 375
    goto/16 :goto_12

    .line 376
    .line 377
    :cond_15
    invoke-static {v6, v10, v2}, La5/h;->h(IILf6/a;)I

    .line 378
    .line 379
    .line 380
    move-result v8

    .line 381
    const/16 v13, 0x5a

    .line 382
    .line 383
    if-lt v8, v15, :cond_16

    .line 384
    .line 385
    if-ge v8, v13, :cond_16

    .line 386
    .line 387
    new-instance v12, Lq6/g;

    .line 388
    .line 389
    add-int/lit8 v6, v6, 0x7

    .line 390
    .line 391
    add-int/lit8 v8, v8, 0x1

    .line 392
    .line 393
    int-to-char v8, v8

    .line 394
    invoke-direct {v12, v8, v6}, Lq6/g;-><init>(CI)V

    .line 395
    .line 396
    .line 397
    goto :goto_10

    .line 398
    :cond_16
    if-lt v8, v13, :cond_17

    .line 399
    .line 400
    if-ge v8, v12, :cond_17

    .line 401
    .line 402
    new-instance v12, Lq6/g;

    .line 403
    .line 404
    add-int/lit8 v6, v6, 0x7

    .line 405
    .line 406
    add-int/lit8 v8, v8, 0x7

    .line 407
    .line 408
    int-to-char v8, v8

    .line 409
    invoke-direct {v12, v8, v6}, Lq6/g;-><init>(CI)V

    .line 410
    .line 411
    .line 412
    goto :goto_10

    .line 413
    :cond_17
    invoke-static {v6, v9, v2}, La5/h;->h(IILf6/a;)I

    .line 414
    .line 415
    .line 416
    move-result v8

    .line 417
    packed-switch v8, :pswitch_data_1

    .line 418
    .line 419
    .line 420
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    throw v1

    .line 425
    :pswitch_5
    const/16 v8, 0x20

    .line 426
    .line 427
    goto :goto_11

    .line 428
    :pswitch_6
    const/16 v8, 0x5f

    .line 429
    .line 430
    goto :goto_11

    .line 431
    :pswitch_7
    const/16 v8, 0x3f

    .line 432
    .line 433
    goto :goto_11

    .line 434
    :pswitch_8
    const/16 v8, 0x3e

    .line 435
    .line 436
    goto :goto_11

    .line 437
    :pswitch_9
    const/16 v8, 0x3d

    .line 438
    .line 439
    goto :goto_11

    .line 440
    :pswitch_a
    const/16 v8, 0x3c

    .line 441
    .line 442
    goto :goto_11

    .line 443
    :pswitch_b
    const/16 v8, 0x3b

    .line 444
    .line 445
    goto :goto_11

    .line 446
    :pswitch_c
    const/16 v8, 0x3a

    .line 447
    .line 448
    goto :goto_11

    .line 449
    :pswitch_d
    const/16 v8, 0x2f

    .line 450
    .line 451
    goto :goto_11

    .line 452
    :pswitch_e
    const/16 v8, 0x2e

    .line 453
    .line 454
    goto :goto_11

    .line 455
    :pswitch_f
    const/16 v8, 0x2d

    .line 456
    .line 457
    goto :goto_11

    .line 458
    :pswitch_10
    const/16 v8, 0x2c

    .line 459
    .line 460
    goto :goto_11

    .line 461
    :pswitch_11
    const/16 v8, 0x2b

    .line 462
    .line 463
    goto :goto_11

    .line 464
    :pswitch_12
    const/16 v8, 0x2a

    .line 465
    .line 466
    goto :goto_11

    .line 467
    :pswitch_13
    const/16 v8, 0x29

    .line 468
    .line 469
    goto :goto_11

    .line 470
    :pswitch_14
    const/16 v8, 0x28

    .line 471
    .line 472
    goto :goto_11

    .line 473
    :pswitch_15
    const/16 v8, 0x27

    .line 474
    .line 475
    goto :goto_11

    .line 476
    :pswitch_16
    const/16 v8, 0x26

    .line 477
    .line 478
    goto :goto_11

    .line 479
    :pswitch_17
    const/16 v8, 0x25

    .line 480
    .line 481
    goto :goto_11

    .line 482
    :pswitch_18
    const/16 v8, 0x22

    .line 483
    .line 484
    goto :goto_11

    .line 485
    :pswitch_19
    const/16 v8, 0x21

    .line 486
    .line 487
    :goto_11
    new-instance v12, Lq6/g;

    .line 488
    .line 489
    add-int/lit8 v6, v6, 0x8

    .line 490
    .line 491
    invoke-direct {v12, v8, v6}, Lq6/g;-><init>(CI)V

    .line 492
    .line 493
    .line 494
    goto :goto_10

    .line 495
    :goto_12
    iget v6, v8, Lq6/j;->a:I

    .line 496
    .line 497
    iput v6, v3, Lc6/a;->b:I

    .line 498
    .line 499
    iget-char v8, v8, Lq6/g;->b:C

    .line 500
    .line 501
    if-ne v8, v7, :cond_18

    .line 502
    .line 503
    new-instance v5, Lq6/h;

    .line 504
    .line 505
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v7

    .line 509
    invoke-direct {v5, v6, v7}, Lq6/h;-><init>(ILjava/lang/String;)V

    .line 510
    .line 511
    .line 512
    new-instance v6, Ld6/d;

    .line 513
    .line 514
    const/4 v7, 0x1

    .line 515
    invoke-direct {v6, v5, v7}, Ld6/d;-><init>(Lq6/h;Z)V

    .line 516
    .line 517
    .line 518
    move-object v5, v6

    .line 519
    goto :goto_18

    .line 520
    :cond_18
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    const/16 v12, 0x3f

    .line 524
    .line 525
    const/16 v13, 0x10

    .line 526
    .line 527
    const/16 v15, 0x3a

    .line 528
    .line 529
    goto/16 :goto_e

    .line 530
    .line 531
    :cond_19
    :goto_13
    iget v6, v3, Lc6/a;->b:I

    .line 532
    .line 533
    add-int/lit8 v7, v6, 0x3

    .line 534
    .line 535
    iget v8, v2, Lf6/a;->c:I

    .line 536
    .line 537
    if-le v7, v8, :cond_1a

    .line 538
    .line 539
    goto :goto_15

    .line 540
    :cond_1a
    :goto_14
    if-ge v6, v7, :cond_1d

    .line 541
    .line 542
    invoke-virtual {v2, v6}, Lf6/a;->d(I)Z

    .line 543
    .line 544
    .line 545
    move-result v8

    .line 546
    if-eqz v8, :cond_1c

    .line 547
    .line 548
    :goto_15
    iget v6, v3, Lc6/a;->b:I

    .line 549
    .line 550
    invoke-virtual {v0, v6}, La5/h;->s(I)Z

    .line 551
    .line 552
    .line 553
    move-result v6

    .line 554
    if-eqz v6, :cond_1e

    .line 555
    .line 556
    iget v6, v3, Lc6/a;->b:I

    .line 557
    .line 558
    add-int/lit8 v7, v6, 0x5

    .line 559
    .line 560
    iget v8, v2, Lf6/a;->c:I

    .line 561
    .line 562
    if-ge v7, v8, :cond_1b

    .line 563
    .line 564
    add-int/lit8 v6, v6, 0x5

    .line 565
    .line 566
    iput v6, v3, Lc6/a;->b:I

    .line 567
    .line 568
    goto :goto_16

    .line 569
    :cond_1b
    iput v8, v3, Lc6/a;->b:I

    .line 570
    .line 571
    :goto_16
    iput v5, v3, Lc6/a;->c:I

    .line 572
    .line 573
    goto :goto_17

    .line 574
    :cond_1c
    add-int/lit8 v6, v6, 0x1

    .line 575
    .line 576
    goto :goto_14

    .line 577
    :cond_1d
    iget v5, v3, Lc6/a;->b:I

    .line 578
    .line 579
    const/16 v16, 0x3

    .line 580
    .line 581
    add-int/lit8 v5, v5, 0x3

    .line 582
    .line 583
    iput v5, v3, Lc6/a;->b:I

    .line 584
    .line 585
    const/4 v7, 0x1

    .line 586
    iput v7, v3, Lc6/a;->c:I

    .line 587
    .line 588
    :cond_1e
    :goto_17
    new-instance v5, Ld6/d;

    .line 589
    .line 590
    const/4 v6, 0x0

    .line 591
    const/4 v7, 0x0

    .line 592
    invoke-direct {v5, v7, v6}, Ld6/d;-><init>(Lq6/h;Z)V

    .line 593
    .line 594
    .line 595
    :goto_18
    iget-boolean v6, v5, Ld6/d;->a:Z

    .line 596
    .line 597
    goto/16 :goto_d

    .line 598
    .line 599
    :cond_1f
    :goto_19
    iget v6, v3, Lc6/a;->b:I

    .line 600
    .line 601
    add-int/lit8 v7, v6, 0x7

    .line 602
    .line 603
    iget v8, v2, Lf6/a;->c:I

    .line 604
    .line 605
    if-le v7, v8, :cond_21

    .line 606
    .line 607
    add-int/lit8 v6, v6, 0x4

    .line 608
    .line 609
    if-gt v6, v8, :cond_20

    .line 610
    .line 611
    :goto_1a
    const/4 v7, 0x1

    .line 612
    goto :goto_1c

    .line 613
    :cond_20
    const/4 v7, 0x0

    .line 614
    goto :goto_1c

    .line 615
    :cond_21
    move v7, v6

    .line 616
    :goto_1b
    add-int/lit8 v8, v6, 0x3

    .line 617
    .line 618
    if-ge v7, v8, :cond_23

    .line 619
    .line 620
    invoke-virtual {v2, v7}, Lf6/a;->d(I)Z

    .line 621
    .line 622
    .line 623
    move-result v8

    .line 624
    if-eqz v8, :cond_22

    .line 625
    .line 626
    goto :goto_1a

    .line 627
    :cond_22
    add-int/lit8 v7, v7, 0x1

    .line 628
    .line 629
    goto :goto_1b

    .line 630
    :cond_23
    invoke-virtual {v2, v8}, Lf6/a;->d(I)Z

    .line 631
    .line 632
    .line 633
    move-result v7

    .line 634
    :goto_1c
    iget v6, v3, Lc6/a;->b:I

    .line 635
    .line 636
    iget v8, v2, Lf6/a;->c:I

    .line 637
    .line 638
    const/4 v11, 0x4

    .line 639
    if-eqz v7, :cond_2a

    .line 640
    .line 641
    add-int/lit8 v7, v6, 0x7

    .line 642
    .line 643
    const/16 v12, 0xa

    .line 644
    .line 645
    if-le v7, v8, :cond_25

    .line 646
    .line 647
    invoke-static {v6, v11, v2}, La5/h;->h(IILf6/a;)I

    .line 648
    .line 649
    .line 650
    move-result v6

    .line 651
    iget v7, v2, Lf6/a;->c:I

    .line 652
    .line 653
    if-nez v6, :cond_24

    .line 654
    .line 655
    new-instance v6, Lq6/i;

    .line 656
    .line 657
    invoke-direct {v6, v7, v12, v12}, Lq6/i;-><init>(III)V

    .line 658
    .line 659
    .line 660
    goto :goto_1d

    .line 661
    :cond_24
    new-instance v8, Lq6/i;

    .line 662
    .line 663
    add-int/lit8 v6, v6, -0x1

    .line 664
    .line 665
    invoke-direct {v8, v7, v6, v12}, Lq6/i;-><init>(III)V

    .line 666
    .line 667
    .line 668
    move-object v6, v8

    .line 669
    goto :goto_1d

    .line 670
    :cond_25
    invoke-static {v6, v10, v2}, La5/h;->h(IILf6/a;)I

    .line 671
    .line 672
    .line 673
    move-result v6

    .line 674
    sub-int/2addr v6, v9

    .line 675
    div-int/lit8 v8, v6, 0xb

    .line 676
    .line 677
    rem-int/lit8 v6, v6, 0xb

    .line 678
    .line 679
    new-instance v11, Lq6/i;

    .line 680
    .line 681
    invoke-direct {v11, v7, v8, v6}, Lq6/i;-><init>(III)V

    .line 682
    .line 683
    .line 684
    move-object v6, v11

    .line 685
    :goto_1d
    iget v7, v6, Lq6/j;->a:I

    .line 686
    .line 687
    iput v7, v3, Lc6/a;->b:I

    .line 688
    .line 689
    iget v8, v6, Lq6/i;->c:I

    .line 690
    .line 691
    iget v6, v6, Lq6/i;->b:I

    .line 692
    .line 693
    if-ne v6, v12, :cond_28

    .line 694
    .line 695
    if-ne v8, v12, :cond_26

    .line 696
    .line 697
    const/4 v5, 0x1

    .line 698
    goto :goto_1e

    .line 699
    :cond_26
    const/4 v5, 0x0

    .line 700
    :goto_1e
    if-eqz v5, :cond_27

    .line 701
    .line 702
    new-instance v5, Lq6/h;

    .line 703
    .line 704
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object v6

    .line 708
    invoke-direct {v5, v7, v6}, Lq6/h;-><init>(ILjava/lang/String;)V

    .line 709
    .line 710
    .line 711
    goto :goto_1f

    .line 712
    :cond_27
    new-instance v5, Lq6/h;

    .line 713
    .line 714
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v6

    .line 718
    invoke-direct {v5, v7, v6, v8}, Lq6/h;-><init>(ILjava/lang/String;I)V

    .line 719
    .line 720
    .line 721
    :goto_1f
    new-instance v6, Ld6/d;

    .line 722
    .line 723
    const/4 v7, 0x1

    .line 724
    invoke-direct {v6, v5, v7}, Ld6/d;-><init>(Lq6/h;Z)V

    .line 725
    .line 726
    .line 727
    :goto_20
    move-object v5, v6

    .line 728
    const/4 v6, 0x0

    .line 729
    goto :goto_23

    .line 730
    :cond_28
    const/4 v7, 0x1

    .line 731
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 732
    .line 733
    .line 734
    if-ne v8, v12, :cond_29

    .line 735
    .line 736
    new-instance v5, Lq6/h;

    .line 737
    .line 738
    iget v6, v3, Lc6/a;->b:I

    .line 739
    .line 740
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v8

    .line 744
    invoke-direct {v5, v6, v8}, Lq6/h;-><init>(ILjava/lang/String;)V

    .line 745
    .line 746
    .line 747
    new-instance v6, Ld6/d;

    .line 748
    .line 749
    invoke-direct {v6, v5, v7}, Ld6/d;-><init>(Lq6/h;Z)V

    .line 750
    .line 751
    .line 752
    goto :goto_20

    .line 753
    :cond_29
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 754
    .line 755
    .line 756
    goto/16 :goto_19

    .line 757
    .line 758
    :cond_2a
    add-int/lit8 v7, v6, 0x1

    .line 759
    .line 760
    if-le v7, v8, :cond_2b

    .line 761
    .line 762
    goto :goto_22

    .line 763
    :cond_2b
    const/4 v7, 0x0

    .line 764
    :goto_21
    if-ge v7, v11, :cond_2d

    .line 765
    .line 766
    add-int v8, v7, v6

    .line 767
    .line 768
    iget v9, v2, Lf6/a;->c:I

    .line 769
    .line 770
    if-ge v8, v9, :cond_2d

    .line 771
    .line 772
    invoke-virtual {v2, v8}, Lf6/a;->d(I)Z

    .line 773
    .line 774
    .line 775
    move-result v8

    .line 776
    if-eqz v8, :cond_2c

    .line 777
    .line 778
    goto :goto_22

    .line 779
    :cond_2c
    add-int/lit8 v7, v7, 0x1

    .line 780
    .line 781
    goto :goto_21

    .line 782
    :cond_2d
    iput v5, v3, Lc6/a;->c:I

    .line 783
    .line 784
    iget v5, v3, Lc6/a;->b:I

    .line 785
    .line 786
    add-int/2addr v5, v11

    .line 787
    iput v5, v3, Lc6/a;->b:I

    .line 788
    .line 789
    :goto_22
    new-instance v5, Ld6/d;

    .line 790
    .line 791
    const/4 v6, 0x0

    .line 792
    const/4 v7, 0x0

    .line 793
    invoke-direct {v5, v7, v6}, Ld6/d;-><init>(Lq6/h;Z)V

    .line 794
    .line 795
    .line 796
    :goto_23
    iget-boolean v7, v5, Ld6/d;->a:Z

    .line 797
    .line 798
    :goto_24
    iget v8, v3, Lc6/a;->b:I

    .line 799
    .line 800
    if-eq v1, v8, :cond_2e

    .line 801
    .line 802
    goto :goto_25

    .line 803
    :cond_2e
    if-eqz v7, :cond_30

    .line 804
    .line 805
    :goto_25
    if-eqz v7, :cond_2f

    .line 806
    .line 807
    goto :goto_26

    .line 808
    :cond_2f
    move v5, v6

    .line 809
    goto/16 :goto_0

    .line 810
    .line 811
    :cond_30
    :goto_26
    iget-object v1, v5, Ld6/d;->b:Ljava/lang/Object;

    .line 812
    .line 813
    check-cast v1, Lq6/h;

    .line 814
    .line 815
    if-eqz v1, :cond_31

    .line 816
    .line 817
    iget-boolean v2, v1, Lq6/h;->d:Z

    .line 818
    .line 819
    if-eqz v2, :cond_31

    .line 820
    .line 821
    new-instance v2, Lq6/h;

    .line 822
    .line 823
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object v3

    .line 827
    iget v1, v1, Lq6/h;->c:I

    .line 828
    .line 829
    invoke-direct {v2, v8, v3, v1}, Lq6/h;-><init>(ILjava/lang/String;I)V

    .line 830
    .line 831
    .line 832
    return-object v2

    .line 833
    :cond_31
    new-instance v1, Lq6/h;

    .line 834
    .line 835
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v2

    .line 839
    invoke-direct {v1, v8, v2}, Lq6/h;-><init>(ILjava/lang/String;)V

    .line 840
    .line 841
    .line 842
    return-object v1

    .line 843
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    :pswitch_data_1
    .packed-switch 0xe8
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public g(Lg2/a;Ljava/io/ByteArrayOutputStream;)V
    .locals 4

    .line 1
    new-instance v0, La5/f;

    .line 2
    .line 3
    iget-object v1, p0, La5/h;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/util/HashMap;

    .line 6
    .line 7
    iget-object v2, p0, La5/h;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Ljava/util/HashMap;

    .line 10
    .line 11
    iget-object v3, p0, La5/h;->e:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, Lx4/d;

    .line 14
    .line 15
    invoke-direct {v0, p2, v1, v2, v3}, La5/f;-><init>(Ljava/io/ByteArrayOutputStream;Ljava/util/HashMap;Ljava/util/HashMap;Lx4/d;)V

    .line 16
    .line 17
    .line 18
    const-class p2, Lg2/a;

    .line 19
    .line 20
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lx4/d;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-interface {v1, p1, v0}, Lx4/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p1, Lx4/b;

    .line 33
    .line 34
    const-string v0, "No encoder for "

    .line 35
    .line 36
    invoke-static {p2, v0}, Lai/onnxruntime/a;->j(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method

.method public get()Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, La5/h;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    iget-object v0, p0, La5/h;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lt8/a;

    .line 9
    .line 10
    invoke-interface {v0}, Lt8/a;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/content/Context;

    .line 15
    .line 16
    iget-object v1, p0, La5/h;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lt8/a;

    .line 19
    .line 20
    invoke-interface {v1}, Lt8/a;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lk2/d;

    .line 25
    .line 26
    iget-object v2, p0, La5/h;->e:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Lc5/e;

    .line 29
    .line 30
    invoke-virtual {v2}, Lc5/e;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lj2/a;

    .line 35
    .line 36
    new-instance v3, La5/h;

    .line 37
    .line 38
    const/16 v4, 0xf

    .line 39
    .line 40
    invoke-direct {v3, v0, v1, v2, v4}, La5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    return-object v3

    .line 44
    :pswitch_1
    iget-object v0, p0, La5/h;->c:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, La5/h;

    .line 47
    .line 48
    iget-object v1, p0, La5/h;->d:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Lh5/a;

    .line 51
    .line 52
    invoke-virtual {v1}, Lh5/a;->get()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lf5/l0;

    .line 57
    .line 58
    iget-object v2, p0, La5/h;->e:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v2, Lg5/a;

    .line 61
    .line 62
    invoke-virtual {v2}, Lg5/a;->get()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Lb5/b;

    .line 67
    .line 68
    new-instance v3, Landroid/support/v4/media/h;

    .line 69
    .line 70
    iget-object v0, v0, La5/h;->c:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v0, Lo4/f;

    .line 73
    .line 74
    const/16 v4, 0x8

    .line 75
    .line 76
    const/4 v5, 0x0

    .line 77
    invoke-direct {v3, v4, v5}, Landroid/support/v4/media/h;-><init>(IZ)V

    .line 78
    .line 79
    .line 80
    iput-object v1, v3, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 81
    .line 82
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    .line 84
    invoke-virtual {v0}, Lo4/f;->a()V

    .line 85
    .line 86
    .line 87
    iget-object v0, v0, Lo4/f;->g:Lt4/l;

    .line 88
    .line 89
    invoke-virtual {v0}, Lt4/l;->get()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Lp5/a;

    .line 94
    .line 95
    monitor-enter v0

    .line 96
    :try_start_0
    iget-boolean v4, v0, Lp5/a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 97
    .line 98
    monitor-exit v0

    .line 99
    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 100
    .line 101
    .line 102
    iput-object v1, v3, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 103
    .line 104
    const-class v0, Lo4/b;

    .line 105
    .line 106
    new-instance v1, Le0/g;

    .line 107
    .line 108
    const/16 v4, 0x8

    .line 109
    .line 110
    invoke-direct {v1, v4}, Le0/g;-><init>(I)V

    .line 111
    .line 112
    .line 113
    check-cast v2, Lt4/j;

    .line 114
    .line 115
    iget-object v4, v2, Lt4/j;->c:Lu4/j;

    .line 116
    .line 117
    monitor-enter v2

    .line 118
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    iget-object v5, v2, Lt4/j;->a:Ljava/util/HashMap;

    .line 122
    .line 123
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-nez v5, :cond_0

    .line 128
    .line 129
    iget-object v5, v2, Lt4/j;->a:Ljava/util/HashMap;

    .line 130
    .line 131
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    .line 132
    .line 133
    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    .line 141
    goto :goto_1

    .line 142
    :cond_0
    :goto_0
    iget-object v5, v2, Lt4/j;->a:Ljava/util/HashMap;

    .line 143
    .line 144
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 149
    .line 150
    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    .line 152
    .line 153
    monitor-exit v2

    .line 154
    return-object v3

    .line 155
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    throw v0

    .line 157
    :catchall_1
    move-exception v1

    .line 158
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 159
    throw v1

    .line 160
    :pswitch_2
    iget-object v0, p0, La5/h;->c:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v0, Lt8/a;

    .line 163
    .line 164
    invoke-interface {v0}, Lt8/a;->get()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    check-cast v0, Lx7/k;

    .line 169
    .line 170
    iget-object v1, p0, La5/h;->d:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v1, Lt8/a;

    .line 173
    .line 174
    invoke-interface {v1}, Lt8/a;->get()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    check-cast v1, Lx7/k;

    .line 179
    .line 180
    iget-object v1, p0, La5/h;->e:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v1, Lt8/a;

    .line 183
    .line 184
    invoke-interface {v1}, Lt8/a;->get()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    check-cast v1, Lx7/k;

    .line 189
    .line 190
    new-instance v2, Lf5/k0;

    .line 191
    .line 192
    invoke-direct {v2, v0, v1}, Lf5/k0;-><init>(Lx7/k;Lx7/k;)V

    .line 193
    .line 194
    .line 195
    return-object v2

    .line 196
    :pswitch_3
    iget-object v0, p0, La5/h;->c:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast v0, Lt8/a;

    .line 199
    .line 200
    invoke-interface {v0}, Lt8/a;->get()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    check-cast v0, Lf5/y;

    .line 205
    .line 206
    iget-object v1, p0, La5/h;->d:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v1, Lt8/a;

    .line 209
    .line 210
    invoke-interface {v1}, Lt8/a;->get()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    check-cast v1, Landroid/app/Application;

    .line 215
    .line 216
    iget-object v2, p0, La5/h;->e:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v2, Lw7/c;

    .line 219
    .line 220
    invoke-virtual {v2}, Lw7/c;->get()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    check-cast v2, Li5/a;

    .line 225
    .line 226
    new-instance v3, Lf5/g;

    .line 227
    .line 228
    invoke-direct {v3, v0, v1, v2}, Lf5/g;-><init>(Lf5/y;Landroid/app/Application;Li5/a;)V

    .line 229
    .line 230
    .line 231
    return-object v3

    .line 232
    :pswitch_4
    iget-object v0, p0, La5/h;->c:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast v0, Le0/s3;

    .line 235
    .line 236
    invoke-virtual {v0}, Le0/s3;->get()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    iget-object v0, p0, La5/h;->d:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast v0, Lc2/k;

    .line 242
    .line 243
    invoke-virtual {v0}, Lc2/k;->get()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    check-cast v0, Lj2/i;

    .line 248
    .line 249
    iget-object v1, p0, La5/h;->e:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast v1, Lb1/m;

    .line 252
    .line 253
    invoke-virtual {v1}, Lb1/m;->get()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    check-cast v1, Lb1/m;

    .line 258
    .line 259
    new-instance v2, Ld2/s;

    .line 260
    .line 261
    invoke-direct {v2, v0, v1}, Ld2/s;-><init>(Lj2/i;Lb1/m;)V

    .line 262
    .line 263
    .line 264
    return-object v2

    .line 265
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public i()Z
    .locals 5

    .line 1
    iget-object v0, p0, La5/h;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    const/16 v1, 0x12

    .line 6
    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    new-array v3, v2, [B

    .line 15
    .line 16
    fill-array-data v3, :array_1

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    const/16 v1, 0x15

    .line 30
    .line 31
    new-array v1, v1, [B

    .line 32
    .line 33
    fill-array-data v1, :array_2

    .line 34
    .line 35
    .line 36
    new-array v3, v2, [B

    .line 37
    .line 38
    fill-array-data v3, :array_3

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    const/16 v1, 0x1d

    .line 52
    .line 53
    new-array v1, v1, [B

    .line 54
    .line 55
    fill-array-data v1, :array_4

    .line 56
    .line 57
    .line 58
    new-array v3, v2, [B

    .line 59
    .line 60
    fill-array-data v3, :array_5

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_1

    .line 72
    .line 73
    const/16 v1, 0x11

    .line 74
    .line 75
    new-array v1, v1, [B

    .line 76
    .line 77
    fill-array-data v1, :array_6

    .line 78
    .line 79
    .line 80
    new-array v3, v2, [B

    .line 81
    .line 82
    fill-array-data v3, :array_7

    .line 83
    .line 84
    .line 85
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_1

    .line 94
    .line 95
    const/16 v1, 0x10

    .line 96
    .line 97
    new-array v1, v1, [B

    .line 98
    .line 99
    fill-array-data v1, :array_8

    .line 100
    .line 101
    .line 102
    new-array v3, v2, [B

    .line 103
    .line 104
    fill-array-data v3, :array_9

    .line 105
    .line 106
    .line 107
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_1

    .line 116
    .line 117
    const/16 v1, 0xf

    .line 118
    .line 119
    new-array v3, v1, [B

    .line 120
    .line 121
    fill-array-data v3, :array_a

    .line 122
    .line 123
    .line 124
    new-array v4, v2, [B

    .line 125
    .line 126
    fill-array-data v4, :array_b

    .line 127
    .line 128
    .line 129
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-nez v3, :cond_1

    .line 138
    .line 139
    new-array v1, v1, [B

    .line 140
    .line 141
    fill-array-data v1, :array_c

    .line 142
    .line 143
    .line 144
    new-array v3, v2, [B

    .line 145
    .line 146
    fill-array-data v3, :array_d

    .line 147
    .line 148
    .line 149
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-nez v1, :cond_1

    .line 158
    .line 159
    const/16 v1, 0x14

    .line 160
    .line 161
    new-array v1, v1, [B

    .line 162
    .line 163
    fill-array-data v1, :array_e

    .line 164
    .line 165
    .line 166
    new-array v3, v2, [B

    .line 167
    .line 168
    fill-array-data v3, :array_f

    .line 169
    .line 170
    .line 171
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-nez v1, :cond_1

    .line 180
    .line 181
    const/16 v1, 0x1b

    .line 182
    .line 183
    new-array v1, v1, [B

    .line 184
    .line 185
    fill-array-data v1, :array_10

    .line 186
    .line 187
    .line 188
    new-array v3, v2, [B

    .line 189
    .line 190
    fill-array-data v3, :array_11

    .line 191
    .line 192
    .line 193
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-nez v1, :cond_1

    .line 202
    .line 203
    const/16 v1, 0x1f

    .line 204
    .line 205
    new-array v1, v1, [B

    .line 206
    .line 207
    fill-array-data v1, :array_12

    .line 208
    .line 209
    .line 210
    new-array v3, v2, [B

    .line 211
    .line 212
    fill-array-data v3, :array_13

    .line 213
    .line 214
    .line 215
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-nez v1, :cond_1

    .line 224
    .line 225
    const/16 v1, 0x11

    .line 226
    .line 227
    new-array v1, v1, [B

    .line 228
    .line 229
    fill-array-data v1, :array_14

    .line 230
    .line 231
    .line 232
    new-array v3, v2, [B

    .line 233
    .line 234
    fill-array-data v3, :array_15

    .line 235
    .line 236
    .line 237
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    if-nez v1, :cond_1

    .line 246
    .line 247
    const/16 v1, 0xc

    .line 248
    .line 249
    new-array v1, v1, [B

    .line 250
    .line 251
    fill-array-data v1, :array_16

    .line 252
    .line 253
    .line 254
    new-array v3, v2, [B

    .line 255
    .line 256
    fill-array-data v3, :array_17

    .line 257
    .line 258
    .line 259
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-nez v1, :cond_1

    .line 268
    .line 269
    const/16 v1, 0xe

    .line 270
    .line 271
    new-array v1, v1, [B

    .line 272
    .line 273
    fill-array-data v1, :array_18

    .line 274
    .line 275
    .line 276
    new-array v3, v2, [B

    .line 277
    .line 278
    fill-array-data v3, :array_19

    .line 279
    .line 280
    .line 281
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    if-nez v1, :cond_1

    .line 290
    .line 291
    const/4 v1, 0x7

    .line 292
    new-array v1, v1, [B

    .line 293
    .line 294
    fill-array-data v1, :array_1a

    .line 295
    .line 296
    .line 297
    new-array v3, v2, [B

    .line 298
    .line 299
    fill-array-data v3, :array_1b

    .line 300
    .line 301
    .line 302
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    if-nez v1, :cond_1

    .line 311
    .line 312
    const/16 v1, 0x1a

    .line 313
    .line 314
    new-array v1, v1, [B

    .line 315
    .line 316
    fill-array-data v1, :array_1c

    .line 317
    .line 318
    .line 319
    new-array v2, v2, [B

    .line 320
    .line 321
    fill-array-data v2, :array_1d

    .line 322
    .line 323
    .line 324
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    if-eqz v0, :cond_0

    .line 333
    .line 334
    goto :goto_0

    .line 335
    :cond_0
    const/4 v0, 0x0

    .line 336
    return v0

    .line 337
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 338
    return v0

    .line 339
    :array_0
    .array-data 1
        0x45t
        0x64t
        0x49t
        -0x53t
        0x2bt
        0x51t
        -0x21t
        0x62t
        0x74t
        0x6et
        0x5ct
        -0x6dt
        0x3ct
        0x59t
        -0x22t
        0x6ft
        0x4et
        0x6dt
    .end array-data

    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    nop

    .line 353
    :array_1
    .array-data 1
        0x2bt
        0x1t
        0x2et
        -0x34t
        0x5ft
        0x38t
        -0x50t
        0xct
    .end array-data

    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    :array_2
    .array-data 1
        -0x5at
        -0x4at
        0x49t
        0x3t
        -0x18t
        0x3t
        -0x15t
        0x79t
        -0x78t
        -0x54t
        0x5et
        0x2ft
        -0x1t
        0x5t
        -0x16t
        0x73t
        -0x42t
        -0x49t
        0x45t
        0x1ft
        -0xet
    .end array-data

    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    nop

    .line 377
    :array_3
    .array-data 1
        -0x29t
        -0x3dt
        0x2ct
        0x70t
        -0x64t
        0x6at
        -0x7ct
        0x17t
    .end array-data

    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    :array_4
    .array-data 1
        0x20t
        -0x1at
        -0x53t
        -0x7t
        0x7at
        0x69t
        -0x4ft
        0x1at
        0x1bt
        -0x14t
        -0x47t
        -0x3dt
        0x65t
        0x6et
        -0x48t
        0xat
        0x2dt
        -0xdt
        -0x59t
        -0x7t
        0x57t
        0x78t
        -0x45t
        0x13t
        0x29t
        -0x1et
        -0x5bt
        -0x8t
        0x7bt
    .end array-data

    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    nop

    .line 405
    :array_5
    .array-data 1
        0x44t
        -0x7dt
        -0x35t
        -0x64t
        0x8t
        0x1bt
        -0x2ct
        0x7et
    .end array-data

    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    :array_6
    .array-data 1
        0x8t
        -0x5ct
        0x70t
        -0x1ft
        -0x4et
        0x27t
        0x59t
        -0x5at
        0x3at
        -0x4et
        0x73t
        -0x8t
        -0x4at
        0x36t
        0x5bt
        -0x59t
        0x16t
    .end array-data

    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    nop

    .line 427
    :array_7
    .array-data 1
        0x65t
        -0x2ft
        0x1ct
        -0x6bt
        -0x25t
        0x57t
        0x35t
        -0x3dt
    .end array-data

    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    :array_8
    .array-data 1
        -0x5et
        -0x25t
        0x39t
        0xat
        -0x80t
        0x6at
        0x49t
        0x51t
        -0x70t
        -0x3ft
        0x37t
        0x14t
        -0x74t
        0x79t
        0x51t
        0x47t
    .end array-data

    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    :array_9
    .array-data 1
        -0x31t
        -0x52t
        0x55t
        0x7et
        -0x17t
        0x1at
        0x25t
        0x34t
    .end array-data

    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    :array_a
    .array-data 1
        -0x4t
        0x27t
        0x3t
        0x16t
        0x4dt
        -0x13t
        0x3at
        -0x35t
        -0x32t
        0x24t
        0xet
        0xet
        0x51t
        -0x8t
        0x25t
    .end array-data

    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    :array_b
    .array-data 1
        -0x6ft
        0x52t
        0x6ft
        0x62t
        0x24t
        -0x63t
        0x56t
        -0x52t
    .end array-data

    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    :array_c
    .array-data 1
        0x25t
        -0x3dt
        0x33t
        0x6et
        0xft
        0x28t
        -0x12t
        0x2t
        0x37t
        -0xft
        0x36t
        0x75t
        0x7t
        0x28t
        -0xft
    .end array-data

    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    :array_d
    .array-data 1
        0x44t
        -0x52t
        0x51t
        0x7t
        0x68t
        0x5dt
        -0x7ft
        0x77t
    .end array-data

    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    :array_e
    .array-data 1
        -0x30t
        0x7t
        -0x4bt
        0x3t
        -0x8t
        0x64t
        -0x66t
        0x2bt
        -0x2ct
        0x1et
        -0x42t
        0x4t
        -0x2t
        0x75t
        -0x44t
        0x13t
        -0x2ft
        0x18t
        -0x5bt
        0x10t
    .end array-data

    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    :array_f
    .array-data 1
        -0x5dt
        0x77t
        -0x30t
        0x60t
        -0x6ft
        0x2t
        -0x1dt
        0x74t
    .end array-data

    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    :array_10
    .array-data 1
        0x50t
        -0x5et
        0xct
        0x7et
        -0x42t
        -0x15t
        0x63t
        0x4bt
        0x42t
        -0x70t
        0xft
        0x7et
        -0x55t
        -0x8t
        0x60t
        0x51t
        0x46t
        -0x70t
        0xat
        0x7et
        -0x55t
        -0x5t
        0x6ft
        0x4at
        0x58t
        -0x60t
        0x0t
    .end array-data

    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    :array_11
    .array-data 1
        0x31t
        -0x31t
        0x6et
        0x17t
        -0x27t
        -0x62t
        0xct
        0x3et
    .end array-data

    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    :array_12
    .array-data 1
        -0x2ft
        0x41t
        -0x75t
        0x19t
        -0x1at
        0x6at
        -0x70t
        -0x49t
        -0x40t
        0x49t
        -0x75t
        0x1et
        -0x19t
        0x60t
        -0x6dt
        -0x73t
        -0x3et
        0x77t
        -0x69t
        0x10t
        -0x2t
        0x5at
        -0x6ct
        -0x63t
        -0x40t
        0x58t
        -0x6at
        0xdt
        -0x2t
        0x60t
        -0x7dt
    .end array-data

    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    :array_13
    .array-data 1
        -0x50t
        0x28t
        -0x7t
        0x7ft
        -0x76t
        0x5t
        -0x19t
        -0x18t
    .end array-data

    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    :array_14
    .array-data 1
        0x53t
        0x7ct
        -0x37t
        0x71t
        -0x21t
        -0x72t
        0x2dt
        0x6t
        0x52t
        0x77t
        -0x22t
        0x5bt
        -0x38t
        -0x74t
        0x2dt
        0x1t
        0x56t
    .end array-data

    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    nop

    .line 585
    :array_15
    .array-data 1
        0x26t
        0x12t
        -0x46t
        0x4t
        -0x51t
        -0x2t
        0x42t
        0x74t
    .end array-data

    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    :array_16
    .array-data 1
        0x3ct
        -0x80t
        0x24t
        -0x3ft
        0x7t
        -0x68t
        -0x10t
        0x37t
        0x36t
        -0x7ft
        0x2dt
        -0x8t
    .end array-data

    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    :array_17
    .array-data 1
        0x5ft
        -0x11t
        0x4at
        -0x59t
        0x6bt
        -0xft
        -0x6dt
        0x43t
    .end array-data

    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    :array_18
    .array-data 1
        0x3ft
        -0x56t
        0x41t
        0x47t
        -0x69t
        0x1dt
        0xat
        0x31t
        0xet
        -0x47t
        0x47t
        0x4at
        -0x6at
        0x11t
    .end array-data

    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    nop

    .line 623
    :array_19
    .array-data 1
        0x51t
        -0x31t
        0x26t
        0x26t
        -0x1dt
        0x74t
        0x7ct
        0x54t
    .end array-data

    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    :array_1a
    .array-data 1
        0x20t
        0x7ct
        0x78t
        0x25t
        -0x6t
        0x13t
        -0x71t
    .end array-data

    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    :array_1b
    .array-data 1
        0x55t
        0x12t
        0xbt
        0x44t
        -0x64t
        0x76t
        -0x30t
        0x6t
    .end array-data

    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    :array_1c
    .array-data 1
        0x66t
        0x53t
        -0x39t
        0x3at
        -0x39t
        -0x63t
        0x50t
        0x78t
        0x4bt
        0x59t
        -0x27t
        0x4t
        -0x23t
        -0x6ft
        0x41t
        0x7ct
        0x60t
        0x5ft
        -0x23t
        0x3et
        -0x14t
        -0x7et
        0x47t
        0x71t
        0x61t
        0x53t
    .end array-data

    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    nop

    .line 665
    :array_1d
    .array-data 1
        0x14t
        0x36t
        -0x55t
        0x5bt
        -0x4dt
        -0xct
        0x26t
        0x1dt
    .end array-data
.end method

.method public j()V
    .locals 3

    .line 1
    iget-object v0, p0, La5/h;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo7/t;

    .line 4
    .line 5
    iget-object v1, v0, Lo7/t;->d:Ln7/x0;

    .line 6
    .line 7
    iget-object v1, v1, Ln7/x0;->a:Ln7/w0;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v2, Ln7/w0;->b:Ln7/w0;

    .line 13
    .line 14
    if-eq v1, v2, :cond_1

    .line 15
    .line 16
    sget-object v2, Ln7/w0;->c:Ln7/w0;

    .line 17
    .line 18
    if-ne v1, v2, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-static {}, Lw7/b;->c()V

    .line 22
    .line 23
    .line 24
    :try_start_0
    invoke-static {}, Lw7/b;->a()V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lw7/b;->b()V

    .line 28
    .line 29
    .line 30
    iget-object v0, v0, Lo7/t;->e:Ljava/util/concurrent/Executor;

    .line 31
    .line 32
    new-instance v1, Lo7/r;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lo7/r;-><init>(La5/h;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    sget-object v0, Lw7/b;->a:Lw7/a;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    :try_start_1
    sget-object v1, Lw7/b;->a:Lw7/a;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_1
    move-exception v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    throw v0

    .line 58
    :cond_1
    :goto_1
    return-void
.end method

.method public k(Lo7/o2;)V
    .locals 2

    .line 1
    iget-object v0, p0, La5/h;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo7/t;

    .line 4
    .line 5
    invoke-static {}, Lw7/b;->c()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-static {}, Lw7/b;->a()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lw7/b;->b()V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lo7/t;->e:Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    new-instance v1, Lo7/p;

    .line 17
    .line 18
    invoke-direct {v1, p0, p1}, Lo7/p;-><init>(La5/h;Lo7/o2;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    sget-object p1, Lw7/b;->a:Lw7/a;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    :try_start_1
    sget-object v0, Lw7/b;->a:Lw7/a;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_1
    move-exception v0

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    throw p1
.end method

.method public l(Ln7/v0;)V
    .locals 2

    .line 1
    iget-object v0, p0, La5/h;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo7/t;

    .line 4
    .line 5
    invoke-static {}, Lw7/b;->c()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-static {}, Lw7/b;->a()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lw7/b;->b()V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lo7/t;->e:Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    new-instance v1, Lo7/p;

    .line 17
    .line 18
    invoke-direct {v1, p0, p1}, Lo7/p;-><init>(La5/h;Ln7/v0;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    sget-object p1, Lw7/b;->a:Lw7/a;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    :try_start_1
    sget-object v0, Lw7/b;->a:Lw7/a;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_1
    move-exception v0

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    throw p1
.end method

.method public m()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 10

    .line 1
    iget v0, p0, La5/h;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, La5/h;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/util/List;

    .line 9
    .line 10
    iget-object v1, p0, La5/h;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lcom/bumptech/glide/load/data/i;

    .line 13
    .line 14
    iget-object v2, p0, La5/h;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Lk/g;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x0

    .line 23
    :goto_0
    if-ge v4, v3, :cond_2

    .line 24
    .line 25
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Lh/d;

    .line 30
    .line 31
    const/4 v6, 0x0

    .line 32
    :try_start_0
    new-instance v7, Lq/x;

    .line 33
    .line 34
    new-instance v8, Ljava/io/FileInputStream;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/bumptech/glide/load/data/i;->e()Landroid/os/ParcelFileDescriptor;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {v7, v8, v2}, Lq/x;-><init>(Ljava/io/InputStream;Lk/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    .line 49
    .line 50
    :try_start_1
    invoke-interface {v5, v7}, Lh/d;->c(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 51
    .line 52
    .line 53
    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    invoke-virtual {v7}, Lq/x;->c()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/bumptech/glide/load/data/i;->e()Landroid/os/ParcelFileDescriptor;

    .line 58
    .line 59
    .line 60
    sget-object v6, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 61
    .line 62
    if-eq v5, v6, :cond_0

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    move-object v6, v7

    .line 70
    goto :goto_1

    .line 71
    :catchall_1
    move-exception v0

    .line 72
    :goto_1
    if-eqz v6, :cond_1

    .line 73
    .line 74
    invoke-virtual {v6}, Lq/x;->c()V

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-virtual {v1}, Lcom/bumptech/glide/load/data/i;->e()Landroid/os/ParcelFileDescriptor;

    .line 78
    .line 79
    .line 80
    throw v0

    .line 81
    :cond_2
    sget-object v5, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 82
    .line 83
    :goto_2
    return-object v5

    .line 84
    :pswitch_0
    iget-object v0, p0, La5/h;->e:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v0, Ljava/util/List;

    .line 87
    .line 88
    iget-object v1, p0, La5/h;->c:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v1, Lcom/bumptech/glide/load/data/i;

    .line 91
    .line 92
    iget-object v1, v1, Lcom/bumptech/glide/load/data/i;->c:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v1, Lq/x;

    .line 95
    .line 96
    invoke-virtual {v1}, Lq/x;->reset()V

    .line 97
    .line 98
    .line 99
    iget-object v2, p0, La5/h;->d:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v2, Lk/g;

    .line 102
    .line 103
    invoke-static {v0, v1, v2}, Lo4/b;->v(Ljava/util/List;Ljava/io/InputStream;Lk/g;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    return-object v0

    .line 108
    :pswitch_1
    iget-object v0, p0, La5/h;->d:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v0, Ljava/util/List;

    .line 111
    .line 112
    iget-object v1, p0, La5/h;->c:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 115
    .line 116
    invoke-static {v1}, Lc0/b;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-static {v0, v1}, Lo4/b;->w(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    return-object v0

    .line 125
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public n(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2

    .line 1
    iget-object v0, p0, La5/h;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, La5/h;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, [Ljava/lang/Class;

    .line 8
    .line 9
    invoke-static {p1, v0, v1}, La5/h;->o(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, La5/h;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ljava/lang/Class;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    :cond_0
    return-object p1
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3

    .line 1
    const/16 p1, 0xd

    .line 2
    .line 3
    new-array p1, p1, [B

    .line 4
    .line 5
    fill-array-data p1, :array_0

    .line 6
    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    new-array v1, v0, [B

    .line 11
    .line 12
    fill-array-data v1, :array_1

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const/16 v2, 0x42

    .line 25
    .line 26
    new-array v2, v2, [B

    .line 27
    .line 28
    fill-array-data v2, :array_2

    .line 29
    .line 30
    .line 31
    new-array v0, v0, [B

    .line 32
    .line 33
    fill-array-data v0, :array_3

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 58
    .line 59
    sput-object p1, Li7/j;->f:Ljava/lang/Boolean;

    .line 60
    .line 61
    return-void

    .line 62
    nop

    .line 63
    :array_0
    .array-data 1
        0x5dt
        -0x27t
        0xft
        -0x1et
        -0x64t
        0x2t
        0x37t
        0x54t
        0x7ct
        -0x35t
        0x8t
        -0x14t
        -0x42t
    .end array-data

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
    nop

    .line 75
    :array_1
    .array-data 1
        0x19t
        -0x48t
        0x7bt
        -0x7dt
        -0x34t
        0x70t
        0x58t
        0x37t
    .end array-data

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    :array_2
    .array-data 1
        0x63t
        0x74t
        0x67t
        -0x55t
        -0x72t
        0x6ft
        0x4dt
        0x49t
        0x63t
        0x50t
        0x66t
        -0x6dt
        0x7et
        0x7t
        0x2at
        0x28t
        0x3t
        0x3at
        0x5t
        -0xet
        -0x22t
        0x6t
        0x1et
        0x28t
        0x4t
        0x3at
        0xct
        -0xdt
        -0x1at
        -0x9t
        0x4dt
        0x40t
        -0x6dt
        0x3at
        0x8t
        -0xdt
        -0x11t
        0x6t
        0x1dt
        0x28t
        0x3t
        0x3at
        0x7t
        -0xdt
        -0x20t
        0x6t
        0x1ft
        0x28t
        0x9t
        0x3at
        0xet
        0x3t
        -0x72t
        0x63t
        0x4dt
        0x48t
        0x63t
        0x57t
        0x66t
        -0x62t
        -0x71t
        0x5ct
        0x4ct
        0x7dt
        -0x77t
        -0x36t
    .end array-data

    .line 84
    .line 85
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
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
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
    nop

    .line 121
    :array_3
    .array-data 1
        -0x4dt
        -0x16t
        -0x4at
        0x23t
        0x5et
        -0x29t
        -0x63t
        -0x8t
    .end array-data
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 8

    .line 1
    iget-object p1, p0, La5/h;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, La5/h;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Li7/j;

    .line 8
    .line 9
    iget-object v1, p0, La5/h;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Ljava/lang/String;

    .line 12
    .line 13
    const/16 v2, 0xd

    .line 14
    .line 15
    const/16 v3, 0x8

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    .line 24
    .line 25
    .line 26
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 27
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    .line 28
    .line 29
    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 30
    .line 31
    .line 32
    const/16 v5, 0x2000

    .line 33
    .line 34
    :try_start_2
    new-array v5, v5, [B

    .line 35
    .line 36
    :goto_0
    invoke-virtual {p2, v5}, Ljava/io/InputStream;->read([B)I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    const/4 v7, -0x1

    .line 41
    if-eq v6, v7, :cond_0

    .line 42
    .line 43
    const/4 v7, 0x0

    .line 44
    invoke-virtual {v4, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    new-array p2, v2, [B

    .line 51
    .line 52
    fill-array-data p2, :array_0

    .line 53
    .line 54
    .line 55
    new-array v5, v3, [B

    .line 56
    .line 57
    fill-array-data v5, :array_1

    .line 58
    .line 59
    .line 60
    invoke-static {p2, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const/16 v6, 0x1b

    .line 70
    .line 71
    new-array v6, v6, [B

    .line 72
    .line 73
    fill-array-data v6, :array_2

    .line 74
    .line 75
    .line 76
    new-array v7, v3, [B

    .line 77
    .line 78
    fill-array-data v7, :array_3

    .line 79
    .line 80
    .line 81
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-static {p2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    invoke-static {v0, v1, p1}, Li7/j;->c(Li7/j;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v0, p1}, Li7/j;->b(Li7/j;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    .line 103
    .line 104
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 105
    .line 106
    .line 107
    goto :goto_4

    .line 108
    :catch_0
    move-exception p1

    .line 109
    goto :goto_3

    .line 110
    :goto_1
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :catchall_1
    move-exception p2

    .line 115
    :try_start_5
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    :goto_2
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 119
    :goto_3
    :try_start_6
    new-instance p2, Ljava/lang/RuntimeException;

    .line 120
    .line 121
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    throw p2

    .line 125
    :catch_1
    move-exception p1

    .line 126
    goto :goto_5

    .line 127
    :cond_1
    :goto_4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 128
    .line 129
    sput-object p1, Li7/j;->f:Ljava/lang/Boolean;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 130
    .line 131
    return-void

    .line 132
    :goto_5
    new-array p2, v2, [B

    .line 133
    .line 134
    fill-array-data p2, :array_4

    .line 135
    .line 136
    .line 137
    new-array v0, v3, [B

    .line 138
    .line 139
    fill-array-data v0, :array_5

    .line 140
    .line 141
    .line 142
    invoke-static {p2, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const/16 v1, 0x42

    .line 152
    .line 153
    new-array v1, v1, [B

    .line 154
    .line 155
    fill-array-data v1, :array_6

    .line 156
    .line 157
    .line 158
    new-array v2, v3, [B

    .line 159
    .line 160
    fill-array-data v2, :array_7

    .line 161
    .line 162
    .line 163
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 185
    .line 186
    sput-object p1, Li7/j;->f:Ljava/lang/Boolean;

    .line 187
    .line 188
    return-void

    .line 189
    :array_0
    .array-data 1
        -0x52t
        0x58t
        -0x4dt
        -0x6dt
        0x42t
        -0x74t
        0x5bt
        0x43t
        -0x71t
        0x4at
        -0x4ct
        -0x63t
        0x60t
    .end array-data

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
    .line 200
    nop

    .line 201
    :array_1
    .array-data 1
        -0x16t
        0x39t
        -0x39t
        -0xet
        0x12t
        -0x2t
        0x34t
        0x20t
    .end array-data

    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    :array_2
    .array-data 1
        -0x41t
        0x2bt
        -0x3dt
        0x73t
        0x43t
        -0x5bt
        0x24t
        -0x69t
        0x35t
        -0x25t
        0x43t
        -0x18t
        -0x4et
        -0x10t
        0x75t
        -0x9t
        0x5ft
        -0x4et
        0x23t
        -0x7et
        0x15t
        -0xft
        0x44t
        -0x9t
        0x58t
        0x58t
        -0x4dt
    .end array-data

    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    :array_3
    .array-data 1
        -0x1bt
        0x62t
        -0x6dt
        0x53t
        -0x6et
        0x21t
        -0xct
        0x27t
    .end array-data

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    :array_4
    .array-data 1
        0x4et
        0x40t
        0x45t
        -0x68t
        0x63t
        -0x25t
        -0x48t
        -0x13t
        0x6ft
        0x52t
        0x42t
        -0x6at
        0x41t
    .end array-data

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    nop

    .line 247
    :array_5
    .array-data 1
        0xat
        0x21t
        0x31t
        -0x7t
        0x33t
        -0x57t
        -0x29t
        -0x72t
    .end array-data

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    :array_6
    .array-data 1
        0x2ft
        -0x5ct
        -0x2t
        0x5at
        0x8t
        0x20t
        -0x77t
        0x3t
        0x2ft
        -0x80t
        -0x1t
        0x62t
        -0x8t
        0x48t
        -0x12t
        0x62t
        0x4ft
        -0x16t
        -0x64t
        0x3t
        0x58t
        0x49t
        -0x26t
        0x62t
        0x48t
        -0x16t
        -0x6bt
        0x2t
        0x60t
        -0x48t
        -0x77t
        0xat
        -0x21t
        -0x16t
        -0x6ft
        0x2t
        0x69t
        0x49t
        -0x27t
        0x62t
        0x4ft
        -0x16t
        -0x62t
        0x2t
        0x66t
        0x49t
        -0x25t
        0x62t
        0x45t
        -0x16t
        -0x69t
        -0xet
        0x8t
        0x2ct
        -0x77t
        0x2t
        0x2ft
        -0x79t
        -0x1t
        0x6ft
        0x9t
        0x13t
        -0x78t
        0x37t
        -0x3bt
        0x1at
    .end array-data

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    nop

    .line 293
    :array_7
    .array-data 1
        -0x1t
        0x3at
        0x2ft
        -0x2et
        -0x28t
        -0x68t
        0x59t
        -0x4et
    .end array-data
.end method

.method public varargs p(Ljavax/net/ssl/SSLSocket;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, La5/h;->n(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p1

    .line 16
    :catch_0
    move-exception p1

    .line 17
    new-instance p2, Ljava/lang/AssertionError;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "Unexpectedly could not call: "

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-direct {p2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 37
    .line 38
    .line 39
    throw p2

    .line 40
    :cond_0
    iget-object p2, p0, La5/h;->d:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p2, Ljava/lang/String;

    .line 43
    .line 44
    const-string v0, " not supported for object "

    .line 45
    .line 46
    const-string v1, "Method "

    .line 47
    .line 48
    invoke-static {v1, p2, v0, p1}, Ln0/b;->B(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    return-object p1
.end method

.method public varargs q(Ljavax/net/ssl/SSLSocket;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, La5/h;->n(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 13
    .line 14
    .line 15
    :catch_0
    return-void

    .line 16
    :catch_1
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    instance-of p2, p1, Ljava/lang/RuntimeException;

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    check-cast p1, Ljava/lang/RuntimeException;

    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    new-instance p2, Ljava/lang/AssertionError;

    .line 29
    .line 30
    const-string v0, "Unexpected exception"

    .line 31
    .line 32
    invoke-direct {p2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 36
    .line 37
    .line 38
    throw p2
.end method

.method public varargs r(Ljavax/net/ssl/SSLSocket;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, La5/h;->p(Ljavax/net/ssl/SSLSocket;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p1

    .line 6
    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    instance-of p2, p1, Ljava/lang/RuntimeException;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    check-cast p1, Ljava/lang/RuntimeException;

    .line 16
    .line 17
    throw p1

    .line 18
    :cond_0
    new-instance p2, Ljava/lang/AssertionError;

    .line 19
    .line 20
    const-string v0, "Unexpected exception"

    .line 21
    .line 22
    invoke-direct {p2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 26
    .line 27
    .line 28
    throw p2
.end method

.method public s(I)Z
    .locals 5

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    iget-object v1, p0, La5/h;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lf6/a;

    .line 6
    .line 7
    iget v2, v1, Lf6/a;->c:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-le v0, v2, :cond_0

    .line 11
    .line 12
    return v3

    .line 13
    :cond_0
    move v0, v3

    .line 14
    :goto_0
    const/4 v2, 0x5

    .line 15
    if-ge v0, v2, :cond_3

    .line 16
    .line 17
    add-int v2, v0, p1

    .line 18
    .line 19
    iget v4, v1, Lf6/a;->c:I

    .line 20
    .line 21
    if-ge v2, v4, :cond_3

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    if-ne v0, v4, :cond_1

    .line 25
    .line 26
    add-int/lit8 v2, p1, 0x2

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lf6/a;->d(I)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    return v3

    .line 35
    :cond_1
    invoke-virtual {v1, v2}, Lf6/a;->d(I)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    return v3

    .line 42
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    const/4 p1, 0x1

    .line 46
    return p1
.end method

.method public t(IIII)Z
    .locals 0

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    add-int/2addr p1, p3

    .line 4
    add-int/lit8 p3, p3, 0x4

    .line 5
    .line 6
    and-int/lit8 p3, p3, 0x7

    .line 7
    .line 8
    rsub-int/lit8 p3, p3, 0x4

    .line 9
    .line 10
    add-int/2addr p2, p3

    .line 11
    :cond_0
    if-gez p2, :cond_1

    .line 12
    .line 13
    add-int/2addr p2, p4

    .line 14
    add-int/lit8 p4, p4, 0x4

    .line 15
    .line 16
    and-int/lit8 p3, p4, 0x7

    .line 17
    .line 18
    rsub-int/lit8 p3, p3, 0x4

    .line 19
    .line 20
    add-int/2addr p1, p3

    .line 21
    :cond_1
    iget-object p3, p0, La5/h;->d:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p3, Lf6/b;

    .line 24
    .line 25
    invoke-virtual {p3, p2, p1}, Lf6/b;->f(II)V

    .line 26
    .line 27
    .line 28
    iget-object p3, p0, La5/h;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p3, Lf6/b;

    .line 31
    .line 32
    invoke-virtual {p3, p2, p1}, Lf6/b;->b(II)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1
.end method

.method public u(IIII)I
    .locals 5

    .line 1
    add-int/lit8 v0, p1, -0x2

    .line 2
    .line 3
    add-int/lit8 v1, p2, -0x2

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, p3, p4}, La5/h;->t(IIII)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    shl-int/lit8 v2, v2, 0x1

    .line 10
    .line 11
    add-int/lit8 v3, p2, -0x1

    .line 12
    .line 13
    invoke-virtual {p0, v0, v3, p3, p4}, La5/h;->t(IIII)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    or-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    :cond_0
    shl-int/lit8 v0, v2, 0x1

    .line 22
    .line 23
    add-int/lit8 v2, p1, -0x1

    .line 24
    .line 25
    invoke-virtual {p0, v2, v1, p3, p4}, La5/h;->t(IIII)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    or-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    :cond_1
    shl-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    invoke-virtual {p0, v2, v3, p3, p4}, La5/h;->t(IIII)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    or-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    :cond_2
    shl-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    invoke-virtual {p0, v2, p2, p3, p4}, La5/h;->t(IIII)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    or-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    :cond_3
    shl-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    invoke-virtual {p0, p1, v1, p3, p4}, La5/h;->t(IIII)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    or-int/lit8 v0, v0, 0x1

    .line 62
    .line 63
    :cond_4
    shl-int/lit8 v0, v0, 0x1

    .line 64
    .line 65
    invoke-virtual {p0, p1, v3, p3, p4}, La5/h;->t(IIII)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_5

    .line 70
    .line 71
    or-int/lit8 v0, v0, 0x1

    .line 72
    .line 73
    :cond_5
    shl-int/lit8 v0, v0, 0x1

    .line 74
    .line 75
    invoke-virtual {p0, p1, p2, p3, p4}, La5/h;->t(IIII)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_6

    .line 80
    .line 81
    or-int/lit8 p1, v0, 0x1

    .line 82
    .line 83
    return p1

    .line 84
    :cond_6
    return v0
.end method

.method public v(Ld2/q;IZ)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, La5/h;->e:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Lj2/a;

    .line 10
    .line 11
    new-instance v4, Landroid/content/ComponentName;

    .line 12
    .line 13
    iget-object v5, v1, La5/h;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v5, Landroid/content/Context;

    .line 16
    .line 17
    const-class v6, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    .line 18
    .line 19
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    .line 21
    .line 22
    const-string v6, "jobscheduler"

    .line 23
    .line 24
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    check-cast v6, Landroid/app/job/JobScheduler;

    .line 29
    .line 30
    new-instance v7, Ljava/util/zip/Adler32;

    .line 31
    .line 32
    invoke-direct {v7}, Ljava/util/zip/Adler32;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    const-string v8, "UTF-8"

    .line 40
    .line 41
    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    invoke-virtual {v5, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v7, v5}, Ljava/util/zip/Adler32;->update([B)V

    .line 50
    .line 51
    .line 52
    move-object v5, v0

    .line 53
    check-cast v5, Ld2/j;

    .line 54
    .line 55
    iget-object v9, v5, Ld2/j;->a:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    invoke-virtual {v9, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    invoke-virtual {v7, v8}, Ljava/util/zip/Adler32;->update([B)V

    .line 66
    .line 67
    .line 68
    const/4 v8, 0x4

    .line 69
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    iget-object v9, v5, Ld2/j;->c:La2/b;

    .line 74
    .line 75
    invoke-static {v9}, Ln2/a;->a(La2/b;)I

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    invoke-virtual {v7, v8}, Ljava/util/zip/Adler32;->update([B)V

    .line 88
    .line 89
    .line 90
    iget-object v8, v5, Ld2/j;->b:[B

    .line 91
    .line 92
    if-eqz v8, :cond_0

    .line 93
    .line 94
    invoke-virtual {v7, v8}, Ljava/util/zip/Adler32;->update([B)V

    .line 95
    .line 96
    .line 97
    :cond_0
    invoke-virtual {v7}, Ljava/util/zip/Adler32;->getValue()J

    .line 98
    .line 99
    .line 100
    move-result-wide v7

    .line 101
    long-to-int v7, v7

    .line 102
    const-string v8, "JobInfoScheduler"

    .line 103
    .line 104
    const-string v9, "attemptNumber"

    .line 105
    .line 106
    if-nez p3, :cond_2

    .line 107
    .line 108
    invoke-virtual {v6}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v11

    .line 120
    if-eqz v11, :cond_2

    .line 121
    .line 122
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    check-cast v11, Landroid/app/job/JobInfo;

    .line 127
    .line 128
    invoke-virtual {v11}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    .line 129
    .line 130
    .line 131
    move-result-object v12

    .line 132
    invoke-virtual {v12, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v12

    .line 136
    invoke-virtual {v11}, Landroid/app/job/JobInfo;->getId()I

    .line 137
    .line 138
    .line 139
    move-result v11

    .line 140
    if-ne v11, v7, :cond_1

    .line 141
    .line 142
    if-lt v12, v2, :cond_2

    .line 143
    .line 144
    const-string v2, "Upload for context %s is already scheduled. Returning..."

    .line 145
    .line 146
    invoke-static {v0, v8, v2}, Le3/d;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_2
    iget-object v10, v1, La5/h;->d:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v10, Lk2/d;

    .line 153
    .line 154
    check-cast v10, Lk2/h;

    .line 155
    .line 156
    invoke-virtual {v10}, Lk2/h;->b()Landroid/database/sqlite/SQLiteDatabase;

    .line 157
    .line 158
    .line 159
    move-result-object v10

    .line 160
    iget-object v11, v5, Ld2/j;->a:Ljava/lang/String;

    .line 161
    .line 162
    iget-object v12, v5, Ld2/j;->c:La2/b;

    .line 163
    .line 164
    invoke-static {v12}, Ln2/a;->a(La2/b;)I

    .line 165
    .line 166
    .line 167
    move-result v13

    .line 168
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v13

    .line 172
    filled-new-array {v11, v13}, [Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v13

    .line 176
    const-string v14, "SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?"

    .line 177
    .line 178
    invoke-virtual {v10, v14, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 179
    .line 180
    .line 181
    move-result-object v10

    .line 182
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 183
    .line 184
    .line 185
    move-result v13

    .line 186
    const/4 v14, 0x0

    .line 187
    if-eqz v13, :cond_3

    .line 188
    .line 189
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getLong(I)J

    .line 190
    .line 191
    .line 192
    move-result-wide v15

    .line 193
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 194
    .line 195
    .line 196
    move-result-object v13

    .line 197
    goto :goto_0

    .line 198
    :cond_3
    const-wide/16 v15, 0x0

    .line 199
    .line 200
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 201
    .line 202
    .line 203
    move-result-object v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 208
    .line 209
    .line 210
    move-result-wide v14

    .line 211
    new-instance v10, Landroid/app/job/JobInfo$Builder;

    .line 212
    .line 213
    invoke-direct {v10, v7, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 214
    .line 215
    .line 216
    move/from16 v16, v7

    .line 217
    .line 218
    move-object v4, v8

    .line 219
    invoke-virtual {v3, v12, v14, v15, v2}, Lj2/a;->a(La2/b;JI)J

    .line 220
    .line 221
    .line 222
    move-result-wide v7

    .line 223
    invoke-virtual {v10, v7, v8}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 224
    .line 225
    .line 226
    iget-object v7, v3, Lj2/a;->b:Ljava/util/HashMap;

    .line 227
    .line 228
    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v7

    .line 232
    check-cast v7, Lj2/b;

    .line 233
    .line 234
    iget-object v7, v7, Lj2/b;->c:Ljava/util/Set;

    .line 235
    .line 236
    sget-object v8, Lj2/c;->b:Lj2/c;

    .line 237
    .line 238
    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v8

    .line 242
    const/4 v1, 0x1

    .line 243
    if-eqz v8, :cond_4

    .line 244
    .line 245
    const/4 v8, 0x2

    .line 246
    invoke-virtual {v10, v8}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 247
    .line 248
    .line 249
    goto :goto_1

    .line 250
    :cond_4
    invoke-virtual {v10, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 251
    .line 252
    .line 253
    :goto_1
    sget-object v8, Lj2/c;->d:Lj2/c;

    .line 254
    .line 255
    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v8

    .line 259
    if-eqz v8, :cond_5

    .line 260
    .line 261
    invoke-virtual {v10, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 262
    .line 263
    .line 264
    :cond_5
    sget-object v8, Lj2/c;->c:Lj2/c;

    .line 265
    .line 266
    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v7

    .line 270
    if-eqz v7, :cond_6

    .line 271
    .line 272
    invoke-virtual {v10, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 273
    .line 274
    .line 275
    :cond_6
    new-instance v1, Landroid/os/PersistableBundle;

    .line 276
    .line 277
    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v9, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 281
    .line 282
    .line 283
    const-string v7, "backendName"

    .line 284
    .line 285
    invoke-virtual {v1, v7, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    const-string v7, "priority"

    .line 289
    .line 290
    invoke-static {v12}, Ln2/a;->a(La2/b;)I

    .line 291
    .line 292
    .line 293
    move-result v8

    .line 294
    invoke-virtual {v1, v7, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 295
    .line 296
    .line 297
    iget-object v5, v5, Ld2/j;->b:[B

    .line 298
    .line 299
    if-eqz v5, :cond_7

    .line 300
    .line 301
    const-string v7, "extras"

    .line 302
    .line 303
    const/4 v8, 0x0

    .line 304
    invoke-static {v5, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    invoke-virtual {v1, v7, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    :cond_7
    invoke-virtual {v10, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 312
    .line 313
    .line 314
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    invoke-virtual {v3, v12, v14, v15, v2}, Lj2/a;->a(La2/b;JI)J

    .line 319
    .line 320
    .line 321
    move-result-wide v7

    .line 322
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    filled-new-array {v0, v1, v3, v13, v2}, [Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-static {v4}, Le3/d;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    const/4 v2, 0x3

    .line 339
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 340
    .line 341
    .line 342
    move-result v2

    .line 343
    if-eqz v2, :cond_8

    .line 344
    .line 345
    const-string v2, "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d"

    .line 346
    .line 347
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    .line 353
    .line 354
    :cond_8
    invoke-virtual {v10}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-virtual {v6, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 359
    .line 360
    .line 361
    return-void

    .line 362
    :catchall_0
    move-exception v0

    .line 363
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 364
    .line 365
    .line 366
    throw v0
.end method
