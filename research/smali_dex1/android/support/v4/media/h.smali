.class public final Landroid/support/v4/media/h;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lf2/b;
.implements Lx7/m;
.implements Lx7/a;
.implements Le5/b;
.implements Lx7/f;
.implements Lcom/bumptech/glide/load/data/d;


# static fields
.field public static e:Landroid/support/v4/media/h;


# instance fields
.field public final synthetic b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 5

    .line 1
    iput p1, p0, Landroid/support/v4/media/h;->b:I

    .line 2
    .line 3
    sparse-switch p1, :sswitch_data_6a

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 15
    .line 16
    new-instance p1, Landroid/os/Handler;

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lb4/k;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-direct {v1, v2, p0}, Lb4/k;-><init>(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 32
    .line 33
    return-void

    .line 34
    :sswitch_21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance p1, Lk/d;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-direct {p1, v0}, Lk/d;-><init>(Lk/i;)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 44
    .line 45
    new-instance p1, Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 51
    .line 52
    return-void

    .line 53
    :sswitch_34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    new-instance p1, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 62
    .line 63
    return-void

    .line 64
    :sswitch_3f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 68
    .line 69
    const/4 v0, 0x1

    .line 70
    invoke-direct {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 74
    .line 75
    new-instance v0, Ljava/util/concurrent/FutureTask;

    .line 76
    .line 77
    new-instance v1, Ld7/b;

    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    invoke-direct {v1, v2, p1}, Ld7/b;-><init>(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 87
    .line 88
    return-void

    .line 89
    :sswitch_58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    .line 91
    .line 92
    new-instance p1, Landroid/graphics/Rect;

    .line 93
    .line 94
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object p1, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 98
    .line 99
    new-instance p1, Landroid/graphics/Rect;

    .line 100
    .line 101
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object p1, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 105
    .line 106
    return-void

    .line 107
    :sswitch_data_6a
    .sparse-switch
        0x3 -> :sswitch_58
        0x5 -> :sswitch_3f
        0x9 -> :sswitch_34
        0x19 -> :sswitch_21
    .end sparse-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 150
    iput p1, p0, Landroid/support/v4/media/h;->b:I

    iput-object p2, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    iput-object p3, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILkotlin/jvm/functions/Function1;)V
    .registers 3

    iput p1, p0, Landroid/support/v4/media/h;->b:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch p1, :pswitch_data_22

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 147
    new-instance p1, Li9/t;

    invoke-direct {p1}, Li9/t;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    return-void

    .line 148
    :pswitch_15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 149
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    return-void

    :pswitch_data_22
    .packed-switch 0x14
        :pswitch_15
    .end packed-switch
.end method

.method public constructor <init>(ILkotlin/jvm/functions/Function2;)V
    .registers 3

    iput p1, p0, Landroid/support/v4/media/h;->b:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch p1, :pswitch_data_22

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 155
    new-instance p1, Li9/t;

    invoke-direct {p1}, Li9/t;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    return-void

    .line 156
    :pswitch_15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 157
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    return-void

    :pswitch_data_22
    .packed-switch 0x15
        :pswitch_15
    .end packed-switch
.end method

.method public synthetic constructor <init>(IZ)V
    .registers 3

    .line 107
    iput p1, p0, Landroid/support/v4/media/h;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Landroid/support/v4/media/h;->b:I

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 153
    iput-object p1, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf6/b;)V
    .registers 3

    const/16 v0, 0x1b

    iput v0, p0, Landroid/support/v4/media/h;->b:I

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 138
    new-instance v0, Lg6/a;

    invoke-direct {v0, p1}, Lg6/a;-><init>(Lf6/b;)V

    iput-object v0, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg7/b;)V
    .registers 13

    const/16 v0, 0xb

    iput v0, p0, Landroid/support/v4/media/h;->b:I

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    const/16 v0, 0x20

    .line 112
    new-array v1, v0, [B

    .line 113
    iget-object p1, p1, Lg7/b;->a:[B

    .line 114
    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    .line 115
    new-instance v2, Lg7/a;

    invoke-direct {v2}, Lg7/a;-><init>()V

    iget-object v3, v2, Lg7/a;->o:[I

    iget-object v4, v2, Lg7/a;->p:[I

    iget-object v5, v2, Lg7/a;->m:[I

    iget-object v6, v2, Lg7/a;->l:[I

    const/4 v7, 0x0

    .line 116
    :try_start_22
    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([II)V

    const/16 v8, 0x9

    .line 117
    aput v8, v6, v7

    .line 118
    invoke-static {v5, v7}, Ljava/util/Arrays;->fill([II)V

    const/4 v8, 0x1

    .line 119
    aput v8, v5, v7

    .line 120
    invoke-static {v3, v7}, Ljava/util/Arrays;->fill([II)V

    .line 121
    iget-object v9, v2, Lg7/a;->n:[I

    array-length v10, v6

    invoke-static {v6, v7, v9, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    invoke-static {v4, v7}, Ljava/util/Arrays;->fill([II)V

    .line 123
    aput v8, v4, v7

    .line 124
    invoke-virtual {v2, p1}, Lg7/a;->d([B)V

    .line 125
    invoke-virtual {v2, v4, v3}, Lg7/a;->f([I[I)V

    .line 126
    invoke-virtual {v2, v5, v5, v4}, Lg7/a;->e([I[I[I)V

    :goto_46
    if-ge v7, v0, :cond_6c

    mul-int/lit8 p1, v7, 0x8

    .line 127
    rem-int/lit8 v3, p1, 0x1a

    .line 128
    div-int/lit8 p1, p1, 0x1a

    const/16 v4, 0x12

    if-gt v3, v4, :cond_5b

    .line 129
    aget p1, v5, p1

    shr-int/2addr p1, v3

    int-to-byte p1, p1

    aput-byte p1, v1, v7

    goto :goto_69

    :catchall_59
    move-exception p1

    goto :goto_77

    .line 130
    :cond_5b
    aget v4, v5, p1

    shr-int/2addr v4, v3

    add-int/lit8 p1, p1, 0x1

    aget p1, v5, p1

    rsub-int/lit8 v3, v3, 0x1a

    shl-int/2addr p1, v3

    or-int/2addr p1, v4

    int-to-byte p1, p1

    aput-byte p1, v1, v7
    :try_end_69
    .catchall {:try_start_22 .. :try_end_69} :catchall_59

    :goto_69
    add-int/lit8 v7, v7, 0x1

    goto :goto_46

    .line 131
    :cond_6c
    invoke-virtual {v2}, Lg7/a;->c()V

    .line 132
    new-instance p1, Lg7/b;

    invoke-direct {p1, v1}, Lg7/b;-><init>([B)V

    .line 133
    iput-object p1, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    return-void

    .line 134
    :goto_77
    invoke-virtual {v2}, Lg7/a;->c()V

    .line 135
    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 5

    .line 108
    iput p4, p0, Landroid/support/v4/media/h;->b:I

    iput-object p2, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V
    .registers 5

    .line 109
    iput p4, p0, Landroid/support/v4/media/h;->b:I

    iput-object p1, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lt4/n;Lb5/b;)V
    .registers 6

    const/16 v0, 0xe

    iput v0, p0, Landroid/support/v4/media/h;->b:I

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Lf5/b0;

    .line 141
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, v0, Lf5/b0;->a:Ljava/lang/Object;

    .line 143
    new-instance v1, Landroidx/fragment/app/h;

    const/16 v2, 0xb

    invoke-direct {v1, v2, v0}, Landroidx/fragment/app/h;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Lt4/n;->a(Lk5/a;)V

    .line 144
    iput-object v0, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 145
    iput-object p2, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    return-void
.end method

.method public static j()Landroid/support/v4/media/h;
    .registers 2

    .line 1
    sget-object v0, Landroid/support/v4/media/h;->e:Landroid/support/v4/media/h;

    .line 2
    .line 3
    if-nez v0, :cond_c

    .line 4
    .line 5
    new-instance v0, Landroid/support/v4/media/h;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1}, Landroid/support/v4/media/h;-><init>(I)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Landroid/support/v4/media/h;->e:Landroid/support/v4/media/h;

    .line 12
    .line 13
    :cond_c
    sget-object v0, Landroid/support/v4/media/h;->e:Landroid/support/v4/media/h;

    .line 14
    .line 15
    return-object v0
.end method

.method public static n(Lz5/o;FF)Lz5/o;
    .registers 5

    .line 1
    iget v0, p0, Lz5/o;->a:F

    .line 2
    .line 3
    iget p0, p0, Lz5/o;->b:F

    .line 4
    .line 5
    cmpg-float p1, v0, p1

    .line 6
    .line 7
    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    .line 9
    if-gez p1, :cond_c

    .line 10
    .line 11
    sub-float/2addr v0, v1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    add-float/2addr v0, v1

    .line 14
    :goto_d
    cmpg-float p1, p0, p2

    .line 15
    .line 16
    if-gez p1, :cond_13

    .line 17
    .line 18
    sub-float/2addr p0, v1

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    add-float/2addr p0, v1

    .line 21
    :goto_14
    new-instance p1, Lz5/o;

    .line 22
    .line 23
    invoke-direct {p1, v0, p0}, Lz5/o;-><init>(FF)V

    .line 24
    .line 25
    .line 26
    return-object p1
.end method

.method public static r(Lj7/b;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    fill-array-data v1, :array_34

    .line 10
    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    new-array v3, v2, [B

    .line 15
    .line 16
    fill-array-data v3, :array_3c

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-wide v3, p0, Lj7/b;->c:J

    .line 24
    .line 25
    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const/4 v0, 0x6

    .line 30
    new-array v0, v0, [B

    .line 31
    .line 32
    fill-array-data v0, :array_44

    .line 33
    .line 34
    .line 35
    new-array v1, v2, [B

    .line 36
    .line 37
    fill-array-data v1, :array_4c

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :array_34
    .array-data 1
        0x45t
        0x7at
        -0x57t
        0x30t
        -0x79t
    .end array-data

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    nop

    .line 61
    :array_3c
    .array-data 1
        0x30t
        0x14t
        -0x23t
        0x59t
        -0x15t
        -0x3ft
        0x25t
        0x5et
    .end array-data

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    :array_44
    .array-data 1
        0x33t
        0x73t
        0x59t
        -0x16t
        -0x35t
        -0x63t
    .end array-data

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    nop

    .line 77
    :array_4c
    .array-data 1
        0x40t
        0x7t
        0x38t
        -0x62t
        -0x42t
        -0x12t
        0x37t
        -0x6ft
    .end array-data
.end method

.method public static v(Lz5/o;Lz5/o;I)Lz5/o;
    .registers 5

    .line 1
    iget v0, p1, Lz5/o;->a:F

    .line 2
    .line 3
    iget v1, p0, Lz5/o;->a:F

    .line 4
    .line 5
    sub-float/2addr v0, v1

    .line 6
    add-int/lit8 p2, p2, 0x1

    .line 7
    .line 8
    int-to-float p2, p2

    .line 9
    div-float/2addr v0, p2

    .line 10
    iget p1, p1, Lz5/o;->b:F

    .line 11
    .line 12
    iget p0, p0, Lz5/o;->b:F

    .line 13
    .line 14
    sub-float/2addr p1, p0

    .line 15
    div-float/2addr p1, p2

    .line 16
    new-instance p2, Lz5/o;

    .line 17
    .line 18
    add-float/2addr v1, v0

    .line 19
    add-float/2addr p0, p1

    .line 20
    invoke-direct {p2, v1, p0}, Lz5/o;-><init>(FF)V

    .line 21
    .line 22
    .line 23
    return-object p2
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    iget v0, p0, Landroid/support/v4/media/h;->b:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_1e

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lx7/f;

    .line 9
    .line 10
    invoke-interface {v0}, Lx7/f;->a()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :sswitch_d
    iget-object v0, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lx7/f;

    .line 17
    .line 18
    invoke-interface {v0}, Lx7/f;->a()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :sswitch_15
    iget-object v0, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lx7/a;

    .line 25
    .line 26
    invoke-interface {v0}, Lx7/a;->a()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :sswitch_data_1e
    .sparse-switch
        0xc -> :sswitch_15
        0x10 -> :sswitch_d
    .end sparse-switch
.end method

.method public b(Lz7/a;)V
    .registers 3

    .line 1
    iget v0, p0, Landroid/support/v4/media/h;->b:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_36

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lx7/m;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lx7/m;->b(Lz7/a;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :sswitch_d
    iget-object v0, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lx7/m;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lx7/m;->b(Lz7/a;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :sswitch_15
    iget-object v0, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Li8/h;

    .line 25
    .line 26
    invoke-static {v0, p1}, Lc8/a;->d(Ljava/util/concurrent/atomic/AtomicReference;Lz7/a;)Z

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :sswitch_1d
    iget-object v0, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Li8/q;

    .line 33
    .line 34
    invoke-static {v0, p1}, Lc8/a;->d(Ljava/util/concurrent/atomic/AtomicReference;Lz7/a;)Z

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :sswitch_25
    iget-object v0, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lc8/d;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lc8/d;->d(Lz7/a;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :sswitch_2d
    iget-object v0, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Li8/h;

    .line 49
    .line 50
    invoke-static {v0, p1}, Lc8/a;->c(Ljava/util/concurrent/atomic/AtomicReference;Lz7/a;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :sswitch_data_36
    .sparse-switch
        0xa -> :sswitch_2d
        0xc -> :sswitch_25
        0x10 -> :sswitch_1d
        0x11 -> :sswitch_15
        0x1c -> :sswitch_d
    .end sparse-switch
.end method

.method public c(Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget v0, p0, Landroid/support/v4/media/h;->b:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_40

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lx7/m;

    .line 9
    .line 10
    :try_start_9
    iget-object v1, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lk8/a;

    .line 13
    .line 14
    iget-object v1, v1, Lk8/a;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Lb8/b;

    .line 17
    .line 18
    invoke-interface {v1, p1}, Lb8/b;->accept(Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_18

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, p1}, Lx7/m;->c(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_1f

    .line 25
    :catchall_18
    move-exception p1

    .line 26
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, p1}, Lx7/m;->onError(Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    :goto_1f
    return-void

    .line 33
    :sswitch_20
    iget-object v0, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Lx7/m;

    .line 36
    .line 37
    invoke-interface {v0, p1}, Lx7/m;->c(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :sswitch_28
    iget-object v0, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Lx7/f;

    .line 44
    .line 45
    invoke-interface {v0, p1}, Lx7/f;->c(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :sswitch_30
    iget-object v0, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Lx7/f;

    .line 52
    .line 53
    invoke-interface {v0, p1}, Lx7/f;->c(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :sswitch_38
    iget-object v0, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, Lx7/m;

    .line 60
    .line 61
    invoke-interface {v0, p1}, Lx7/m;->c(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :sswitch_data_40
    .sparse-switch
        0xa -> :sswitch_38
        0x10 -> :sswitch_30
        0x11 -> :sswitch_28
        0x1c -> :sswitch_20
    .end sparse-switch
.end method

.method public d(Ljava/lang/Exception;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lj/g0;

    .line 4
    .line 5
    iget-object v1, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ln/q;

    .line 8
    .line 9
    iget-object v0, v0, Lj/g0;->g:Ln/q;

    .line 10
    .line 11
    if-eqz v0, :cond_23

    .line 12
    .line 13
    if-ne v0, v1, :cond_23

    .line 14
    .line 15
    iget-object v0, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lj/g0;

    .line 18
    .line 19
    iget-object v1, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Ln/q;

    .line 22
    .line 23
    iget-object v2, v0, Lj/g0;->c:Lj/k;

    .line 24
    .line 25
    iget-object v0, v0, Lj/g0;->h:Lj/e;

    .line 26
    .line 27
    iget-object v1, v1, Ln/q;->c:Lcom/bumptech/glide/load/data/e;

    .line 28
    .line 29
    invoke-interface {v1}, Lcom/bumptech/glide/load/data/e;->c()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-virtual {v2, v0, p1, v1, v3}, Lj/k;->b(Lh/e;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;I)V

    .line 34
    .line 35
    .line 36
    :cond_23
    return-void
.end method

.method public e(Ljava/lang/String;)Lcom/google/android/datatransport/cct/CctBackendFactory;
    .registers 15

    .line 1
    const-string v0, "."

    .line 2
    .line 3
    const-string v1, "Could not instantiate "

    .line 4
    .line 5
    iget-object v2, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Ljava/util/Map;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const-string v4, "BackendRegistry"

    .line 11
    .line 12
    if-nez v2, :cond_98

    .line 13
    .line 14
    iget-object v2, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Landroid/content/Context;

    .line 17
    .line 18
    :try_start_11
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    if-nez v5, :cond_1e

    .line 23
    .line 24
    const-string v2, "Context has no PackageManager."

    .line 25
    .line 26
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :goto_1c
    move-object v2, v3

    .line 30
    goto :goto_3c

    .line 31
    :cond_1e
    new-instance v6, Landroid/content/ComponentName;

    .line 32
    .line 33
    const-class v7, Lcom/google/android/datatransport/runtime/backends/TransportBackendDiscovery;

    .line 34
    .line 35
    invoke-direct {v6, v2, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .line 37
    .line 38
    const/16 v2, 0x80

    .line 39
    .line 40
    invoke-virtual {v5, v6, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-nez v2, :cond_33

    .line 45
    .line 46
    const-string v2, "TransportBackendDiscovery has no service info."

    .line 47
    .line 48
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    goto :goto_1c

    .line 52
    :cond_33
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_35} :catch_36

    .line 53
    .line 54
    goto :goto_3c

    .line 55
    :catch_36
    const-string v2, "Application info not found."

    .line 56
    .line 57
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    goto :goto_1c

    .line 61
    :goto_3c
    if-nez v2, :cond_46

    .line 62
    .line 63
    const-string v2, "Could not retrieve metadata, returning empty list of transport backends."

    .line 64
    .line 65
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 69
    .line 70
    goto :goto_96

    .line 71
    :cond_46
    new-instance v5, Ljava/util/HashMap;

    .line 72
    .line 73
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    :cond_53
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-eqz v7, :cond_95

    .line 89
    .line 90
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    check-cast v7, Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v2, v7}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    instance-of v9, v8, Ljava/lang/String;

    .line 101
    .line 102
    if-eqz v9, :cond_53

    .line 103
    .line 104
    const-string v9, "backend:"

    .line 105
    .line 106
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    if-eqz v9, :cond_53

    .line 111
    .line 112
    check-cast v8, Ljava/lang/String;

    .line 113
    .line 114
    const-string v9, ","

    .line 115
    .line 116
    const/4 v10, -0x1

    .line 117
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    array-length v9, v8

    .line 122
    const/4 v10, 0x0

    .line 123
    :goto_7a
    if-ge v10, v9, :cond_53

    .line 124
    .line 125
    aget-object v11, v8, v10

    .line 126
    .line 127
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v11

    .line 131
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 132
    .line 133
    .line 134
    move-result v12

    .line 135
    if-eqz v12, :cond_89

    .line 136
    .line 137
    goto :goto_92

    .line 138
    :cond_89
    const/16 v12, 0x8

    .line 139
    .line 140
    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v12

    .line 144
    invoke-virtual {v5, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    :goto_92
    add-int/lit8 v10, v10, 0x1

    .line 148
    .line 149
    goto :goto_7a

    .line 150
    :cond_95
    move-object v2, v5

    .line 151
    :goto_96
    iput-object v2, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 152
    .line 153
    :cond_98
    iget-object v2, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v2, Ljava/util/Map;

    .line 156
    .line 157
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Ljava/lang/String;

    .line 162
    .line 163
    if-nez p1, :cond_a5

    .line 164
    .line 165
    return-object v3

    .line 166
    :cond_a5
    :try_start_a5
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    const-class v5, Lcom/google/android/datatransport/cct/CctBackendFactory;

    .line 171
    .line 172
    invoke-virtual {v2, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    check-cast v2, Lcom/google/android/datatransport/cct/CctBackendFactory;
    :try_end_b9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a5 .. :try_end_b9} :catch_c2
    .catch Ljava/lang/IllegalAccessException; {:try_start_a5 .. :try_end_b9} :catch_c0
    .catch Ljava/lang/InstantiationException; {:try_start_a5 .. :try_end_b9} :catch_be
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a5 .. :try_end_b9} :catch_bc
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a5 .. :try_end_b9} :catch_ba

    .line 185
    .line 186
    return-object v2

    .line 187
    :catch_ba
    move-exception v0

    .line 188
    goto :goto_c4

    .line 189
    :catch_bc
    move-exception v0

    .line 190
    goto :goto_cc

    .line 191
    :catch_be
    move-exception v2

    .line 192
    goto :goto_d4

    .line 193
    :catch_c0
    move-exception v2

    .line 194
    goto :goto_e7

    .line 195
    :catch_c2
    move-exception v0

    .line 196
    goto :goto_fa

    .line 197
    :goto_c4
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-static {v4, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    .line 203
    .line 204
    goto :goto_110

    .line 205
    :goto_cc
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-static {v4, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    .line 211
    .line 212
    goto :goto_110

    .line 213
    :goto_d4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-static {v4, p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    .line 230
    .line 231
    goto :goto_110

    .line 232
    :goto_e7
    new-instance v5, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-static {v4, p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    .line 249
    .line 250
    goto :goto_110

    .line 251
    :goto_fa
    new-instance v1, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    const-string v2, "Class "

    .line 254
    .line 255
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string p1, " is not found."

    .line 262
    .line 263
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    invoke-static {v4, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    .line 272
    .line 273
    :goto_110
    return-object v3
.end method

.method public f(Ljava/lang/Object;)V
    .registers 9

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lj/g0;

    .line 4
    .line 5
    iget-object v1, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ln/q;

    .line 8
    .line 9
    iget-object v0, v0, Lj/g0;->g:Ln/q;

    .line 10
    .line 11
    if-eqz v0, :cond_43

    .line 12
    .line 13
    if-ne v0, v1, :cond_43

    .line 14
    .line 15
    iget-object v0, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lj/g0;

    .line 18
    .line 19
    iget-object v1, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Ln/q;

    .line 22
    .line 23
    iget-object v2, v0, Lj/g0;->b:Lj/h;

    .line 24
    .line 25
    iget-object v2, v2, Lj/h;->p:Lj/m;

    .line 26
    .line 27
    if-eqz p1, :cond_31

    .line 28
    .line 29
    iget-object v3, v1, Ln/q;->c:Lcom/bumptech/glide/load/data/e;

    .line 30
    .line 31
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/e;->c()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {v2, v3}, Lj/m;->a(I)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_31

    .line 40
    .line 41
    iput-object p1, v0, Lj/g0;->f:Ljava/lang/Object;

    .line 42
    .line 43
    iget-object p1, v0, Lj/g0;->c:Lj/k;

    .line 44
    .line 45
    const/4 v0, 0x2

    .line 46
    invoke-virtual {p1, v0}, Lj/k;->l(I)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_31
    move-object v2, v1

    .line 51
    iget-object v1, v0, Lj/g0;->c:Lj/k;

    .line 52
    .line 53
    move-object v3, v2

    .line 54
    iget-object v2, v3, Ln/q;->a:Lh/e;

    .line 55
    .line 56
    iget-object v4, v3, Ln/q;->c:Lcom/bumptech/glide/load/data/e;

    .line 57
    .line 58
    invoke-interface {v4}, Lcom/bumptech/glide/load/data/e;->c()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    iget-object v6, v0, Lj/g0;->h:Lj/e;

    .line 63
    .line 64
    move-object v3, p1

    .line 65
    invoke-virtual/range {v1 .. v6}, Lj/k;->a(Lh/e;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;ILh/e;)V

    .line 66
    .line 67
    .line 68
    :cond_43
    return-void
.end method

.method public g(Lkotlin/reflect/KClass;)Le9/b;
    .registers 6

    .line 1
    iget v0, p0, Landroid/support/v4/media/h;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_58

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-nez v2, :cond_2a

    .line 19
    .line 20
    new-instance v2, Li9/k;

    .line 21
    .line 22
    iget-object v3, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 25
    .line 26
    invoke-interface {v3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Le9/b;

    .line 31
    .line 32
    invoke-direct {v2, p1}, Li9/k;-><init>(Le9/b;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-nez p1, :cond_29

    .line 40
    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    move-object v2, p1

    .line 43
    :cond_2a
    :goto_2a
    check-cast v2, Li9/k;

    .line 44
    .line 45
    iget-object p1, v2, Li9/k;->a:Le9/b;

    .line 46
    .line 47
    return-object p1

    .line 48
    :pswitch_2f
    iget-object v0, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Li9/t;

    .line 51
    .line 52
    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v0, v1}, Li9/q;->a(Li9/t;Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    check-cast v0, Li9/v0;

    .line 64
    .line 65
    iget-object v1, v0, Li9/v0;->a:Ljava/lang/ref/SoftReference;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_49

    .line 72
    .line 73
    goto :goto_53

    .line 74
    :cond_49
    new-instance v1, Li9/r;

    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    invoke-direct {v1, v2, p0, p1}, Li9/r;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Li9/v0;->a(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    :goto_53
    check-cast v1, Li9/k;

    .line 85
    .line 86
    iget-object p1, v1, Li9/k;->a:Le9/b;

    .line 87
    .line 88
    return-object p1

    .line 89
    :pswitch_data_58
    .packed-switch 0x12
        :pswitch_2f
    .end packed-switch
.end method

.method public get()Ljava/lang/Object;
    .registers 5

    .line 1
    iget v0, p0, Landroid/support/v4/media/h;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_66

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lg5/a;

    .line 9
    .line 10
    invoke-virtual {v0}, Lg5/a;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ln7/d;

    .line 15
    .line 16
    iget-object v1, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lr5/c;

    .line 19
    .line 20
    invoke-virtual {v1}, Lr5/c;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ln7/v0;

    .line 25
    .line 26
    new-instance v2, Lu7/g;

    .line 27
    .line 28
    invoke-direct {v2, v1}, Lu7/g;-><init>(Ln7/v0;)V

    .line 29
    .line 30
    .line 31
    filled-new-array {v2}, [Lu7/g;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_3d

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Lu7/g;

    .line 54
    .line 55
    new-instance v3, Ln7/f;

    .line 56
    .line 57
    invoke-direct {v3, v0, v2}, Ln7/f;-><init>(Ln7/d;Lu7/g;)V

    .line 58
    .line 59
    .line 60
    move-object v0, v3

    .line 61
    goto :goto_2a

    .line 62
    :cond_3d
    sget-object v1, Ln7/c;->h:Ln7/c;

    .line 63
    .line 64
    sget-object v2, Lu7/e;->c:La9/w;

    .line 65
    .line 66
    sget-object v3, Lu7/b;->b:Lu7/b;

    .line 67
    .line 68
    invoke-virtual {v1, v2, v3}, Ln7/c;->c(La9/w;Ljava/lang/Object;)Ln7/c;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    new-instance v2, Ly5/j;

    .line 73
    .line 74
    invoke-direct {v2, v0, v1}, Ly5/j;-><init>(Ln7/d;Ln7/c;)V

    .line 75
    .line 76
    .line 77
    return-object v2

    .line 78
    :pswitch_4d
    iget-object v0, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, Le5/c;

    .line 81
    .line 82
    iget-object v0, v0, Le5/c;->c:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v0, Landroid/content/Context;

    .line 85
    .line 86
    iget-object v1, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v1, Lr5/c;

    .line 89
    .line 90
    invoke-virtual {v1}, Lr5/c;->get()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    new-instance v2, Le2/d;

    .line 95
    .line 96
    check-cast v1, La5/h;

    .line 97
    .line 98
    invoke-direct {v2, v0, v1}, Le2/d;-><init>(Landroid/content/Context;La5/h;)V

    .line 99
    .line 100
    .line 101
    return-object v2

    .line 102
    nop

    .line 103
    :pswitch_data_66
    .packed-switch 0x7
        :pswitch_4d
    .end packed-switch
.end method

.method public h(Lk/i;)Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lk/d;

    .line 10
    .line 11
    if-nez v1, :cond_15

    .line 12
    .line 13
    new-instance v1, Lk/d;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Lk/d;-><init>(Lk/i;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    goto :goto_18

    .line 22
    :cond_15
    invoke-interface {p1}, Lk/i;->a()V

    .line 23
    .line 24
    .line 25
    :goto_18
    iget-object p1, v1, Lk/d;->d:Lk/d;

    .line 26
    .line 27
    iget-object v0, v1, Lk/d;->c:Lk/d;

    .line 28
    .line 29
    iput-object v0, p1, Lk/d;->c:Lk/d;

    .line 30
    .line 31
    iget-object v0, v1, Lk/d;->c:Lk/d;

    .line 32
    .line 33
    iput-object p1, v0, Lk/d;->d:Lk/d;

    .line 34
    .line 35
    iget-object p1, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, Lk/d;

    .line 38
    .line 39
    iput-object p1, v1, Lk/d;->d:Lk/d;

    .line 40
    .line 41
    iget-object p1, p1, Lk/d;->c:Lk/d;

    .line 42
    .line 43
    iput-object p1, v1, Lk/d;->c:Lk/d;

    .line 44
    .line 45
    iput-object v1, p1, Lk/d;->d:Lk/d;

    .line 46
    .line 47
    iget-object p1, v1, Lk/d;->d:Lk/d;

    .line 48
    .line 49
    iput-object v1, p1, Lk/d;->c:Lk/d;

    .line 50
    .line 51
    iget-object p1, v1, Lk/d;->b:Ljava/util/ArrayList;

    .line 52
    .line 53
    if-eqz p1, :cond_3b

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    goto :goto_3c

    .line 60
    :cond_3b
    const/4 p1, 0x0

    .line 61
    :goto_3c
    if-lez p1, :cond_47

    .line 62
    .line 63
    iget-object v0, v1, Lk/d;->b:Ljava/util/ArrayList;

    .line 64
    .line 65
    add-int/lit8 p1, p1, -0x1

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    return-object p1

    .line 72
    :cond_47
    const/4 p1, 0x0

    .line 73
    return-object p1
.end method

.method public i(Lkotlin/reflect/KClass;Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 9

    .line 1
    iget v0, p0, Landroid/support/v4/media/h;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0xa

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_100

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    if-nez v4, :cond_23

    .line 22
    .line 23
    new-instance v4, Li9/c1;

    .line 24
    .line 25
    invoke-direct {v4}, Li9/c1;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_22

    .line 33
    .line 34
    goto :goto_23

    .line 35
    :cond_22
    move-object v4, v0

    .line 36
    :cond_23
    :goto_23
    check-cast v4, Li9/c1;

    .line 37
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    :goto_32
    if-ge v1, v2, :cond_45

    .line 52
    .line 53
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    check-cast v3, Lkotlin/reflect/KType;

    .line 60
    .line 61
    new-instance v5, Li9/m0;

    .line 62
    .line 63
    invoke-direct {v5, v3}, Li9/m0;-><init>(Lkotlin/reflect/KType;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_32

    .line 70
    :cond_45
    iget-object v1, v4, Li9/c1;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    .line 72
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    if-nez v2, :cond_76

    .line 77
    .line 78
    :try_start_4d
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 79
    .line 80
    iget-object v2, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 83
    .line 84
    invoke-interface {v2, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Le9/b;

    .line 89
    .line 90
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1
    :try_end_5d
    .catchall {:try_start_4d .. :try_end_5d} :catchall_5e

    .line 94
    goto :goto_69

    .line 95
    :catchall_5e
    move-exception p1

    .line 96
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 97
    .line 98
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    :goto_69
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    if-nez p2, :cond_75

    .line 115
    .line 116
    move-object v2, p1

    .line 117
    goto :goto_76

    .line 118
    :cond_75
    move-object v2, p2

    .line 119
    :cond_76
    :goto_76
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    check-cast v2, Lkotlin/Result;

    .line 123
    .line 124
    invoke-virtual {v2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    return-object p1

    .line 129
    :pswitch_80
    iget-object v0, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v0, Li9/t;

    .line 132
    .line 133
    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-static {v0, v3}, Li9/q;->a(Li9/t;Ljava/lang/Class;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    check-cast v0, Li9/v0;

    .line 145
    .line 146
    iget-object v3, v0, Li9/v0;->a:Ljava/lang/ref/SoftReference;

    .line 147
    .line 148
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    if-eqz v3, :cond_9a

    .line 153
    .line 154
    goto :goto_a3

    .line 155
    :cond_9a
    new-instance v3, Li9/s;

    .line 156
    .line 157
    invoke-direct {v3, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v3}, Li9/v0;->a(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    :goto_a3
    check-cast v3, Li9/c1;

    .line 165
    .line 166
    new-instance v0, Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    :goto_b2
    if-ge v1, v2, :cond_c5

    .line 180
    .line 181
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    add-int/lit8 v1, v1, 0x1

    .line 186
    .line 187
    check-cast v4, Lkotlin/reflect/KType;

    .line 188
    .line 189
    new-instance v5, Li9/m0;

    .line 190
    .line 191
    invoke-direct {v5, v4}, Li9/m0;-><init>(Lkotlin/reflect/KType;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    goto :goto_b2

    .line 198
    :cond_c5
    iget-object v1, v3, Li9/c1;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 199
    .line 200
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    if-nez v2, :cond_f6

    .line 205
    .line 206
    :try_start_cd
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 207
    .line 208
    iget-object v2, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 211
    .line 212
    invoke-interface {v2, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    check-cast p1, Le9/b;

    .line 217
    .line 218
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object p1
    :try_end_dd
    .catchall {:try_start_cd .. :try_end_dd} :catchall_de

    .line 222
    goto :goto_e9

    .line 223
    :catchall_de
    move-exception p1

    .line 224
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 225
    .line 226
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    :goto_e9
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    if-nez p2, :cond_f5

    .line 243
    .line 244
    move-object v2, p1

    .line 245
    goto :goto_f6

    .line 246
    :cond_f5
    move-object v2, p2

    .line 247
    :cond_f6
    :goto_f6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    .line 249
    .line 250
    check-cast v2, Lkotlin/Result;

    .line 251
    .line 252
    invoke-virtual {v2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    return-object p1

    .line 257
    :pswitch_data_100
    .packed-switch 0x13
        :pswitch_80
    .end packed-switch
.end method

.method public declared-synchronized k(JLjava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-static {p3}, Lj7/b;->a(Ljava/lang/String;)Lj7/b;

    .line 3
    .line 4
    .line 5
    move-result-object p3

    .line 6
    iget-wide v0, p3, Lj7/b;->c:J

    .line 7
    .line 8
    cmp-long v2, v0, p1

    .line 9
    .line 10
    const/4 v3, 0x7

    .line 11
    const/16 v4, 0x8

    .line 12
    .line 13
    if-gtz v2, :cond_f

    .line 14
    .line 15
    goto :goto_17

    .line 16
    :cond_f
    const-wide/32 v5, 0x249f0

    .line 17
    .line 18
    .line 19
    add-long/2addr v5, p1

    .line 20
    cmp-long v0, v0, v5

    .line 21
    .line 22
    if-lez v0, :cond_2a

    .line 23
    .line 24
    :goto_17
    new-array p1, v3, [B

    .line 25
    .line 26
    fill-array-data p1, :array_be

    .line 27
    .line 28
    .line 29
    new-array p2, v4, [B

    .line 30
    .line 31
    fill-array-data p2, :array_c6

    .line 32
    .line 33
    .line 34
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    goto/16 :goto_b3

    .line 39
    .line 40
    :catchall_27
    move-exception p1

    .line 41
    goto/16 :goto_bb

    .line 42
    .line 43
    :cond_2a
    iget-object v0, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Ln/p;

    .line 46
    .line 47
    iget-object v1, p3, Lj7/b;->a:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v0, v0, Ln/p;->c:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Landroid/content/SharedPreferences;

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_54

    .line 59
    .line 60
    new-instance p1, Lorg/json/JSONObject;

    .line 61
    .line 62
    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/4 p2, 0x6

    .line 66
    new-array p2, p2, [B

    .line 67
    .line 68
    fill-array-data p2, :array_ce

    .line 69
    .line 70
    .line 71
    new-array v0, v4, [B

    .line 72
    .line 73
    fill-array-data v0, :array_d6

    .line 74
    .line 75
    .line 76
    invoke-static {p2, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    goto :goto_b3

    .line 85
    :cond_54
    iget-object v0, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v0, Ln/p;

    .line 88
    .line 89
    iget-object v1, p3, Lj7/b;->a:Ljava/lang/String;

    .line 90
    .line 91
    new-array v2, v3, [B

    .line 92
    .line 93
    fill-array-data v2, :array_de

    .line 94
    .line 95
    .line 96
    new-array v5, v4, [B

    .line 97
    .line 98
    fill-array-data v5, :array_e6

    .line 99
    .line 100
    .line 101
    invoke-static {v2, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-static {p3, v2}, Landroid/support/v4/media/h;->r(Lj7/b;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v0, p1, p2, v1, v2}, Ln/p;->g(JLjava/lang/String;Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-nez p1, :cond_83

    .line 114
    .line 115
    const/16 p1, 0xd

    .line 116
    .line 117
    new-array p1, p1, [B

    .line 118
    .line 119
    fill-array-data p1, :array_ee

    .line 120
    .line 121
    .line 122
    new-array p2, v4, [B

    .line 123
    .line 124
    fill-array-data p2, :array_fa

    .line 125
    .line 126
    .line 127
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1
    :try_end_82
    .catchall {:try_start_1 .. :try_end_82} :catchall_27

    .line 131
    goto :goto_b3

    .line 132
    :cond_83
    :try_start_83
    iget-object p1, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast p1, Ly0/a;

    .line 135
    .line 136
    invoke-virtual {p1, p3}, Ly0/a;->b(Lj7/b;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_8b} :catch_8c
    .catchall {:try_start_83 .. :try_end_8b} :catchall_27

    .line 140
    goto :goto_9a

    .line 141
    :catch_8c
    :try_start_8c
    new-array p1, v3, [B

    .line 142
    .line 143
    fill-array-data p1, :array_102

    .line 144
    .line 145
    .line 146
    new-array p2, v4, [B

    .line 147
    .line 148
    fill-array-data p2, :array_10a

    .line 149
    .line 150
    .line 151
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    :goto_9a
    iget-object p2, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast p2, Ln/p;

    .line 158
    .line 159
    iget-object v0, p3, Lj7/b;->a:Ljava/lang/String;

    .line 160
    .line 161
    invoke-static {p3, p1}, Landroid/support/v4/media/h;->r(Lj7/b;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    iget-object p2, p2, Ln/p;->c:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast p2, Landroid/content/SharedPreferences;

    .line 168
    .line 169
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 178
    .line 179
    .line 180
    :goto_b3
    iget-object p2, p3, Lj7/b;->a:Ljava/lang/String;

    .line 181
    .line 182
    invoke-static {p2, p1}, Lj7/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1
    :try_end_b9
    .catchall {:try_start_8c .. :try_end_b9} :catchall_27

    .line 186
    monitor-exit p0

    .line 187
    return-object p1

    .line 188
    :goto_bb
    :try_start_bb
    monitor-exit p0
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_27

    .line 189
    throw p1

    .line 190
    nop

    .line 191
    :array_be
    .array-data 1
        -0x63t
        0x27t
        -0x36t
        -0x55t
        -0x12t
        0x4t
        -0x73t
    .end array-data

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
        -0x8t
        0x5ft
        -0x46t
        -0x3et
        -0x64t
        0x61t
        -0x17t
        0x69t
    .end array-data

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    :array_ce
    .array-data 1
        0x3ct
        0x26t
        0x6at
        -0x52t
        0xbt
        0x27t
    .end array-data

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    nop

    .line 215
    :array_d6
    .array-data 1
        0x4ft
        0x52t
        0xbt
        -0x26t
        0x7et
        0x54t
        -0x1et
        0x4bt
    .end array-data

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    :array_de
    .array-data 1
        -0x35t
        -0x4et
        -0x3ct
        0x67t
        -0x76t
        0x48t
        -0x46t
    .end array-data

    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    :array_e6
    .array-data 1
        -0x42t
        -0x24t
        -0x51t
        0x9t
        -0x1bt
        0x3ft
        -0x2ct
        -0x6dt
    .end array-data

    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    :array_ee
    .array-data 1
        0x2ft
        0xdt
        -0x8t
        -0x7et
        -0xbt
        0x39t
        0x4ct
        0x59t
        0x39t
        0xbt
        -0x1bt
        -0x61t
        -0x1at
    .end array-data

    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    nop

    .line 251
    :array_fa
    .array-data 1
        0x5ct
        0x79t
        -0x69t
        -0x10t
        -0x6ct
        0x5et
        0x29t
        0x6t
    .end array-data

    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    :array_102
    .array-data 1
        0x3ft
        -0x75t
        0x62t
        -0x6et
        0x2t
        -0x11t
        -0x39t
    .end array-data

    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    :array_10a
    .array-data 1
        0x4at
        -0x1bt
        0x9t
        -0x4t
        0x6dt
        -0x68t
        -0x57t
        -0x1t
    .end array-data
.end method

.method public l(Lb4/d;)Z
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public m(Lz5/o;)Z
    .registers 6

    .line 1
    iget v0, p1, Lz5/o;->a:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v2, v0, v1

    .line 5
    .line 6
    if-ltz v2, :cond_21

    .line 7
    .line 8
    iget-object v2, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, Lf6/b;

    .line 11
    .line 12
    iget v3, v2, Lf6/b;->b:I

    .line 13
    .line 14
    int-to-float v3, v3

    .line 15
    cmpg-float v0, v0, v3

    .line 16
    .line 17
    if-gez v0, :cond_21

    .line 18
    .line 19
    iget p1, p1, Lz5/o;->b:F

    .line 20
    .line 21
    cmpl-float v0, p1, v1

    .line 22
    .line 23
    if-lez v0, :cond_21

    .line 24
    .line 25
    iget v0, v2, Lf6/b;->c:I

    .line 26
    .line 27
    int-to-float v0, v0

    .line 28
    cmpg-float p1, p1, v0

    .line 29
    .line 30
    if-gez p1, :cond_21

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    return p1

    .line 34
    :cond_21
    const/4 p1, 0x0

    .line 35
    return p1
.end method

.method public o(Ljava/util/ArrayList;)V
    .registers 12

    .line 1
    new-instance v0, Le0/s3;

    .line 2
    .line 3
    invoke-direct {v0}, Le0/s3;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :cond_b
    :goto_b
    const/4 v4, 0x0

    .line 13
    if-ge v3, v1, :cond_fe

    .line 14
    .line 15
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    add-int/lit8 v3, v3, 0x1

    .line 20
    .line 21
    check-cast v5, Ljava/lang/CharSequence;

    .line 22
    .line 23
    invoke-static {v5}, Lf7/a;->a(Ljava/lang/CharSequence;)Ljava/util/Optional;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    new-instance v6, Landroidx/emoji2/text/flatbuffer/a;

    .line 28
    .line 29
    const/4 v7, 0x2

    .line 30
    invoke-direct {v6, v7}, Landroidx/emoji2/text/flatbuffer/a;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Lf7/a;

    .line 38
    .line 39
    iget-object v6, v5, Lf7/a;->a:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v5, v5, Lf7/a;->b:Ljava/lang/String;

    .line 42
    .line 43
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 44
    .line 45
    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    const/4 v9, -0x1

    .line 57
    sparse-switch v8, :sswitch_data_118

    .line 58
    .line 59
    .line 60
    :goto_3b
    move v7, v9

    .line 61
    goto :goto_71

    .line 62
    :sswitch_3d
    const-string v7, "persistentkeepalive"

    .line 63
    .line 64
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-nez v6, :cond_46

    .line 69
    .line 70
    goto :goto_3b

    .line 71
    :cond_46
    const/4 v7, 0x4

    .line 72
    goto :goto_71

    .line 73
    :sswitch_48
    const-string v7, "endpoint"

    .line 74
    .line 75
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-nez v6, :cond_51

    .line 80
    .line 81
    goto :goto_3b

    .line 82
    :cond_51
    const/4 v7, 0x3

    .line 83
    goto :goto_71

    .line 84
    :sswitch_53
    const-string v8, "publickey"

    .line 85
    .line 86
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-nez v6, :cond_71

    .line 91
    .line 92
    goto :goto_3b

    .line 93
    :sswitch_5c
    const-string v7, "allowedips"

    .line 94
    .line 95
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-nez v6, :cond_65

    .line 100
    .line 101
    goto :goto_3b

    .line 102
    :cond_65
    const/4 v7, 0x1

    .line 103
    goto :goto_71

    .line 104
    :sswitch_67
    const-string v7, "presharedkey"

    .line 105
    .line 106
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-nez v6, :cond_70

    .line 111
    .line 112
    goto :goto_3b

    .line 113
    :cond_70
    move v7, v2

    .line 114
    :cond_71
    :goto_71
    packed-switch v7, :pswitch_data_12e

    .line 115
    .line 116
    .line 117
    new-instance p1, Lf7/b;

    .line 118
    .line 119
    invoke-direct {p1, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    throw p1

    .line 123
    :pswitch_7a
    :try_start_7a
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-ltz v5, :cond_98

    .line 128
    .line 129
    const v6, 0xffff

    .line 130
    .line 131
    .line 132
    if-gt v5, v6, :cond_98

    .line 133
    .line 134
    if-nez v5, :cond_8c

    .line 135
    .line 136
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    goto :goto_94

    .line 141
    :cond_8c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-static {v4}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    :goto_94
    iput-object v4, v0, Le0/s3;->e:Ljava/lang/Object;

    .line 150
    .line 151
    goto/16 :goto_b

    .line 152
    .line 153
    :cond_98
    new-instance p1, Lf7/b;

    .line 154
    .line 155
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    invoke-direct {p1, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 159
    .line 160
    .line 161
    throw p1
    :try_end_a1
    .catch Ljava/lang/NumberFormatException; {:try_start_7a .. :try_end_a1} :catch_a1

    .line 162
    :catch_a1
    move-exception p1

    .line 163
    new-instance v0, Lf7/b;

    .line 164
    .line 165
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 166
    .line 167
    .line 168
    throw v0

    .line 169
    :pswitch_a8
    :try_start_a8
    invoke-static {v5}, Lf7/e;->b(Ljava/lang/String;)Lf7/e;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-static {v4}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    iput-object v4, v0, Le0/s3;->d:Ljava/lang/Object;
    :try_end_b2
    .catch Lf7/i; {:try_start_a8 .. :try_end_b2} :catch_b4

    .line 178
    .line 179
    goto/16 :goto_b

    .line 180
    .line 181
    :catch_b4
    move-exception p1

    .line 182
    new-instance v0, Lf7/b;

    .line 183
    .line 184
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 185
    .line 186
    .line 187
    throw v0

    .line 188
    :pswitch_bb
    :try_start_bb
    invoke-static {v5}, Lg7/b;->c(Ljava/lang/String;)Lg7/b;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    iput-object v4, v0, Le0/s3;->g:Ljava/lang/Object;
    :try_end_c1
    .catch Lg7/c; {:try_start_bb .. :try_end_c1} :catch_c3

    .line 193
    .line 194
    goto/16 :goto_b

    .line 195
    .line 196
    :catch_c3
    move-exception p1

    .line 197
    new-instance v0, Lf7/b;

    .line 198
    .line 199
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 200
    .line 201
    .line 202
    throw v0

    .line 203
    :pswitch_ca
    :try_start_ca
    sget-object v4, Lf7/a;->d:Ljava/util/regex/Pattern;

    .line 204
    .line 205
    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    array-length v5, v4

    .line 210
    move v6, v2

    .line 211
    :goto_d2
    if-ge v6, v5, :cond_b

    .line 212
    .line 213
    aget-object v7, v4, v6

    .line 214
    .line 215
    invoke-static {v7}, Lf7/f;->a(Ljava/lang/String;)Lf7/f;

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    iget-object v8, v0, Le0/s3;->c:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v8, Ljava/util/LinkedHashSet;

    .line 222
    .line 223
    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_e1
    .catch Lf7/i; {:try_start_ca .. :try_end_e1} :catch_e4

    .line 224
    .line 225
    .line 226
    add-int/lit8 v6, v6, 0x1

    .line 227
    .line 228
    goto :goto_d2

    .line 229
    :catch_e4
    move-exception p1

    .line 230
    new-instance v0, Lf7/b;

    .line 231
    .line 232
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 233
    .line 234
    .line 235
    throw v0

    .line 236
    :pswitch_eb
    :try_start_eb
    invoke-static {v5}, Lg7/b;->c(Ljava/lang/String;)Lg7/b;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    invoke-static {v4}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    iput-object v4, v0, Le0/s3;->f:Ljava/lang/Object;
    :try_end_f5
    .catch Lg7/c; {:try_start_eb .. :try_end_f5} :catch_f7

    .line 245
    .line 246
    goto/16 :goto_b

    .line 247
    .line 248
    :catch_f7
    move-exception p1

    .line 249
    new-instance v0, Lf7/b;

    .line 250
    .line 251
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 252
    .line 253
    .line 254
    throw v0

    .line 255
    :cond_fe
    iget-object p1, v0, Le0/s3;->g:Ljava/lang/Object;

    .line 256
    .line 257
    check-cast p1, Lg7/b;

    .line 258
    .line 259
    if-eqz p1, :cond_111

    .line 260
    .line 261
    new-instance p1, Lf7/j;

    .line 262
    .line 263
    invoke-direct {p1, v0}, Lf7/j;-><init>(Le0/s3;)V

    .line 264
    .line 265
    .line 266
    iget-object v0, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 267
    .line 268
    check-cast v0, Ljava/util/ArrayList;

    .line 269
    .line 270
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    return-void

    .line 274
    :cond_111
    new-instance p1, Lf7/b;

    .line 275
    .line 276
    invoke-direct {p1, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 277
    .line 278
    .line 279
    throw p1

    .line 280
    nop

    .line 281
    :sswitch_data_118
    .sparse-switch
        -0x51bb0f69 -> :sswitch_67
        -0x4fabaa7c -> :sswitch_5c
        0x563e6756 -> :sswitch_53
        0x67c71d95 -> :sswitch_48
        0x79d4c3b1 -> :sswitch_3d
    .end sparse-switch

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
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_eb
        :pswitch_ca
        :pswitch_bb
        :pswitch_a8
        :pswitch_7a
    .end packed-switch
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4

    .line 1
    iget v0, p0, Landroid/support/v4/media/h;->b:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_6c

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lx7/m;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lx7/m;->onError(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :sswitch_d
    :try_start_d
    iget-object v0, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lk8/a;

    .line 17
    .line 18
    iget-object v0, v0, Lk8/a;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Le0/g;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Le0/g;->accept(Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_19

    .line 23
    .line 24
    .line 25
    goto :goto_27

    .line 26
    :catchall_19
    move-exception v0

    .line 27
    invoke-static {v0}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, La8/c;

    .line 31
    .line 32
    filled-new-array {p1, v0}, [Ljava/lang/Throwable;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {v1, p1}, La8/c;-><init>([Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    move-object p1, v1

    .line 40
    :goto_27
    iget-object v0, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Lx7/m;

    .line 43
    .line 44
    invoke-interface {v0, p1}, Lx7/m;->onError(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :sswitch_2f
    iget-object v0, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Lx7/f;

    .line 51
    .line 52
    invoke-interface {v0, p1}, Lx7/f;->onError(Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :sswitch_37
    iget-object v0, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lx7/f;

    .line 59
    .line 60
    invoke-interface {v0, p1}, Lx7/f;->onError(Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :sswitch_3f
    iget-object p1, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p1, Lx7/a;

    .line 67
    .line 68
    :try_start_43
    sget-object v0, Lc8/b;->b:Lc8/b;

    .line 69
    .line 70
    iget-object v1, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v1, Lc8/d;

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Lc8/d;->d(Lz7/a;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {p1}, Lx7/a;->a()V
    :try_end_4f
    .catch Ljava/lang/NullPointerException; {:try_start_43 .. :try_end_4f} :catch_62
    .catchall {:try_start_43 .. :try_end_4f} :catchall_50

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :catchall_50
    move-exception p1

    .line 82
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    invoke-static {p1}, La/a;->s(Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Ljava/lang/NullPointerException;

    .line 89
    .line 90
    const-string v1, "Actually not, but can\'t pass out an exception otherwise..."

    .line 91
    .line 92
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 96
    .line 97
    .line 98
    throw v0

    .line 99
    :catch_62
    move-exception p1

    .line 100
    throw p1

    .line 101
    :sswitch_64
    iget-object v0, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v0, Lx7/m;

    .line 104
    .line 105
    invoke-interface {v0, p1}, Lx7/m;->onError(Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :sswitch_data_6c
    .sparse-switch
        0xa -> :sswitch_64
        0xc -> :sswitch_3f
        0x10 -> :sswitch_37
        0x11 -> :sswitch_2f
        0x1c -> :sswitch_d
    .end sparse-switch
.end method

.method public p(Lb4/d;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-virtual {p0, p1}, Landroid/support/v4/media/h;->l(Lb4/d;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_d

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_b
    move-exception p1

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/4 p1, 0x0

    .line 15
    throw p1

    .line 16
    :goto_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_b

    .line 17
    throw p1
.end method

.method public q(Lk/i;Ljava/lang/Object;)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lk/d;

    .line 10
    .line 11
    if-nez v1, :cond_27

    .line 12
    .line 13
    new-instance v1, Lk/d;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Lk/d;-><init>(Lk/i;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, v1, Lk/d;->d:Lk/d;

    .line 19
    .line 20
    iget-object v2, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Lk/d;

    .line 23
    .line 24
    iget-object v3, v2, Lk/d;->d:Lk/d;

    .line 25
    .line 26
    iput-object v3, v1, Lk/d;->d:Lk/d;

    .line 27
    .line 28
    iput-object v2, v1, Lk/d;->c:Lk/d;

    .line 29
    .line 30
    iput-object v1, v2, Lk/d;->d:Lk/d;

    .line 31
    .line 32
    iget-object v2, v1, Lk/d;->d:Lk/d;

    .line 33
    .line 34
    iput-object v1, v2, Lk/d;->c:Lk/d;

    .line 35
    .line 36
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    goto :goto_2a

    .line 40
    :cond_27
    invoke-interface {p1}, Lk/i;->a()V

    .line 41
    .line 42
    .line 43
    :goto_2a
    iget-object p1, v1, Lk/d;->b:Ljava/util/ArrayList;

    .line 44
    .line 45
    if-nez p1, :cond_35

    .line 46
    .line 47
    new-instance p1, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, v1, Lk/d;->b:Ljava/util/ArrayList;

    .line 53
    .line 54
    :cond_35
    iget-object p1, v1, Lk/d;->b:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public s()Ljava/lang/Object;
    .registers 6

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lk/d;

    .line 4
    .line 5
    iget-object v1, v0, Lk/d;->d:Lk/d;

    .line 6
    .line 7
    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, v1, Lk/d;->a:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-nez v2, :cond_3f

    .line 15
    .line 16
    iget-object v2, v1, Lk/d;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    if-eqz v2, :cond_18

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    const/4 v2, 0x0

    .line 26
    :goto_19
    if-lez v2, :cond_23

    .line 27
    .line 28
    iget-object v4, v1, Lk/d;->b:Ljava/util/ArrayList;

    .line 29
    .line 30
    add-int/lit8 v2, v2, -0x1

    .line 31
    .line 32
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    :cond_23
    if-eqz v4, :cond_26

    .line 37
    .line 38
    return-object v4

    .line 39
    :cond_26
    iget-object v2, v1, Lk/d;->d:Lk/d;

    .line 40
    .line 41
    iget-object v4, v1, Lk/d;->c:Lk/d;

    .line 42
    .line 43
    iput-object v4, v2, Lk/d;->c:Lk/d;

    .line 44
    .line 45
    iget-object v4, v1, Lk/d;->c:Lk/d;

    .line 46
    .line 47
    iput-object v2, v4, Lk/d;->d:Lk/d;

    .line 48
    .line 49
    iget-object v2, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v2, Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    check-cast v3, Lk/i;

    .line 57
    .line 58
    invoke-interface {v3}, Lk/i;->a()V

    .line 59
    .line 60
    .line 61
    iget-object v1, v1, Lk/d;->d:Lk/d;

    .line 62
    .line 63
    goto :goto_6

    .line 64
    :cond_3f
    return-object v4
.end method

.method public t(Lb4/d;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-virtual {p0, p1}, Landroid/support/v4/media/h;->l(Lb4/d;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_d

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_b
    move-exception p1

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/4 p1, 0x0

    .line 15
    throw p1

    .line 16
    :goto_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_b

    .line 17
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 1
    iget v0, p0, Landroid/support/v4/media/h;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_5e

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "GroupedLinkedMap( "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lk/d;

    .line 21
    .line 22
    iget-object v2, v1, Lk/d;->c:Lk/d;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    move v4, v3

    .line 26
    :goto_19
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-nez v5, :cond_44

    .line 31
    .line 32
    const/16 v4, 0x7b

    .line 33
    .line 34
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v4, v2, Lk/d;->a:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const/16 v4, 0x3a

    .line 43
    .line 44
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v4, v2, Lk/d;->b:Ljava/util/ArrayList;

    .line 48
    .line 49
    if-eqz v4, :cond_37

    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    goto :goto_38

    .line 56
    :cond_37
    move v4, v3

    .line 57
    :goto_38
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v4, "}, "

    .line 61
    .line 62
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v2, v2, Lk/d;->c:Lk/d;

    .line 66
    .line 67
    const/4 v4, 0x1

    .line 68
    goto :goto_19

    .line 69
    :cond_44
    if-eqz v4, :cond_53

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    add-int/lit8 v1, v1, -0x2

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    :cond_53
    const-string v1, " )"

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    return-object v0

    .line 94
    nop

    .line 95
    :pswitch_data_5e
    .packed-switch 0x19
        :pswitch_a
    .end packed-switch
.end method

.method public u(Lb4/l;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/os/Handler;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/16 v1, 0xabe

    .line 17
    .line 18
    int-to-long v1, v1

    .line 19
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public w(Lz5/o;Lz5/o;)I
    .registers 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Lf6/b;

    .line 10
    .line 11
    iget v4, v0, Lz5/o;->a:F

    .line 12
    .line 13
    float-to-int v4, v4

    .line 14
    iget v0, v0, Lz5/o;->b:F

    .line 15
    .line 16
    float-to-int v0, v0

    .line 17
    iget v5, v2, Lz5/o;->a:F

    .line 18
    .line 19
    float-to-int v5, v5

    .line 20
    iget v2, v2, Lz5/o;->b:F

    .line 21
    .line 22
    float-to-int v2, v2

    .line 23
    sub-int v6, v2, v0

    .line 24
    .line 25
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    sub-int v7, v5, v4

    .line 30
    .line 31
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    const/4 v8, 0x0

    .line 36
    const/4 v9, 0x1

    .line 37
    if-le v6, v7, :cond_28

    .line 38
    .line 39
    move v6, v9

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    move v6, v8

    .line 42
    :goto_29
    if-eqz v6, :cond_35

    .line 43
    .line 44
    move/from16 v16, v4

    .line 45
    .line 46
    move v4, v0

    .line 47
    move/from16 v0, v16

    .line 48
    .line 49
    move/from16 v16, v5

    .line 50
    .line 51
    move v5, v2

    .line 52
    move/from16 v2, v16

    .line 53
    .line 54
    :cond_35
    sub-int v7, v5, v4

    .line 55
    .line 56
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    sub-int v10, v2, v0

    .line 61
    .line 62
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    .line 63
    .line 64
    .line 65
    move-result v10

    .line 66
    neg-int v11, v7

    .line 67
    div-int/lit8 v11, v11, 0x2

    .line 68
    .line 69
    const/4 v12, -0x1

    .line 70
    if-ge v0, v2, :cond_49

    .line 71
    .line 72
    move v13, v9

    .line 73
    goto :goto_4a

    .line 74
    :cond_49
    move v13, v12

    .line 75
    :goto_4a
    if-ge v4, v5, :cond_4d

    .line 76
    .line 77
    goto :goto_4e

    .line 78
    :cond_4d
    move v9, v12

    .line 79
    :goto_4e
    if-eqz v6, :cond_52

    .line 80
    .line 81
    move v12, v0

    .line 82
    goto :goto_53

    .line 83
    :cond_52
    move v12, v4

    .line 84
    :goto_53
    if-eqz v6, :cond_57

    .line 85
    .line 86
    move v14, v4

    .line 87
    goto :goto_58

    .line 88
    :cond_57
    move v14, v0

    .line 89
    :goto_58
    invoke-virtual {v3, v12, v14}, Lf6/b;->b(II)Z

    .line 90
    .line 91
    .line 92
    move-result v12

    .line 93
    :goto_5c
    if-eq v4, v5, :cond_7c

    .line 94
    .line 95
    if-eqz v6, :cond_62

    .line 96
    .line 97
    move v14, v0

    .line 98
    goto :goto_63

    .line 99
    :cond_62
    move v14, v4

    .line 100
    :goto_63
    if-eqz v6, :cond_67

    .line 101
    .line 102
    move v15, v4

    .line 103
    goto :goto_68

    .line 104
    :cond_67
    move v15, v0

    .line 105
    :goto_68
    invoke-virtual {v3, v14, v15}, Lf6/b;->b(II)Z

    .line 106
    .line 107
    .line 108
    move-result v14

    .line 109
    if-eq v14, v12, :cond_71

    .line 110
    .line 111
    add-int/lit8 v8, v8, 0x1

    .line 112
    .line 113
    move v12, v14

    .line 114
    :cond_71
    add-int/2addr v11, v10

    .line 115
    if-lez v11, :cond_7a

    .line 116
    .line 117
    if-eq v0, v2, :cond_79

    .line 118
    .line 119
    add-int/2addr v0, v13

    .line 120
    sub-int/2addr v11, v7

    .line 121
    goto :goto_7a

    .line 122
    :cond_79
    return v8

    .line 123
    :cond_7a
    :goto_7a
    add-int/2addr v4, v9

    .line 124
    goto :goto_5c

    .line 125
    :cond_7c
    return v8
.end method
