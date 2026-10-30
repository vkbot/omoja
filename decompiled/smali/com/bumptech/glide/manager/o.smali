.class public final Lcom/bumptech/glide/manager/o;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lc0/i;
.implements Ln/s;


# instance fields
.field public final synthetic b:I

.field public c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 9
    const/4 v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/manager/o;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/bumptech/glide/manager/o;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/bumptech/glide/manager/o;->c:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Ld2/k;
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/o;->c:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Ld2/k;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v2, Ld2/m;->a:Lz3/f;

    .line 11
    .line 12
    invoke-static {v2}, Lf2/a;->a(Lf2/b;)Lt8/a;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iput-object v2, v1, Ld2/k;->b:Lt8/a;

    .line 17
    .line 18
    new-instance v2, Le5/c;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-direct {v2, v3, v0}, Le5/c;-><init>(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object v2, v1, Ld2/k;->c:Le5/c;

    .line 25
    .line 26
    new-instance v0, Lr5/c;

    .line 27
    .line 28
    const/16 v3, 0xa

    .line 29
    .line 30
    invoke-direct {v0, v3, v2}, Lr5/c;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Landroid/support/v4/media/h;

    .line 34
    .line 35
    const/4 v4, 0x7

    .line 36
    const/4 v5, 0x0

    .line 37
    invoke-direct {v3, v2, v0, v5, v4}, Landroid/support/v4/media/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    .line 38
    .line 39
    .line 40
    invoke-static {v3}, Lf2/a;->a(Lf2/b;)Lt8/a;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, v1, Ld2/k;->d:Lt8/a;

    .line 45
    .line 46
    iget-object v0, v1, Ld2/k;->c:Le5/c;

    .line 47
    .line 48
    new-instance v2, Lf5/m;

    .line 49
    .line 50
    const/16 v3, 0xc

    .line 51
    .line 52
    invoke-direct {v2, v0, v3}, Lf5/m;-><init>(Lt8/a;I)V

    .line 53
    .line 54
    .line 55
    iput-object v2, v1, Ld2/k;->e:Lf5/m;

    .line 56
    .line 57
    new-instance v2, Lf5/m;

    .line 58
    .line 59
    const/16 v3, 0xb

    .line 60
    .line 61
    invoke-direct {v2, v0, v3}, Lf5/m;-><init>(Lt8/a;I)V

    .line 62
    .line 63
    .line 64
    invoke-static {v2}, Lf2/a;->a(Lf2/b;)Lt8/a;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v2, v1, Ld2/k;->e:Lf5/m;

    .line 69
    .line 70
    new-instance v3, Lf5/j0;

    .line 71
    .line 72
    const/4 v4, 0x1

    .line 73
    invoke-direct {v3, v2, v0, v4}, Lf5/j0;-><init>(Lt8/a;Lt8/a;I)V

    .line 74
    .line 75
    .line 76
    invoke-static {v3}, Lf2/a;->a(Lf2/b;)Lt8/a;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    iput-object v8, v1, Ld2/k;->f:Lt8/a;

    .line 81
    .line 82
    new-instance v0, Lc5/e;

    .line 83
    .line 84
    const/16 v2, 0xb

    .line 85
    .line 86
    invoke-direct {v0, v2}, Lc5/e;-><init>(I)V

    .line 87
    .line 88
    .line 89
    iget-object v2, v1, Ld2/k;->c:Le5/c;

    .line 90
    .line 91
    new-instance v9, La5/h;

    .line 92
    .line 93
    const/16 v3, 0x9

    .line 94
    .line 95
    invoke-direct {v9, v2, v8, v0, v3}, La5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 96
    .line 97
    .line 98
    iget-object v6, v1, Ld2/k;->b:Lt8/a;

    .line 99
    .line 100
    iget-object v7, v1, Ld2/k;->d:Lt8/a;

    .line 101
    .line 102
    new-instance v5, Le0/s3;

    .line 103
    .line 104
    const/4 v11, 0x3

    .line 105
    move-object v10, v8

    .line 106
    move-object v14, v9

    .line 107
    move-object v9, v8

    .line 108
    move-object v8, v14

    .line 109
    invoke-direct/range {v5 .. v11}, Le0/s3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 110
    .line 111
    .line 112
    move-object v0, v9

    .line 113
    move-object v9, v8

    .line 114
    move-object v8, v0

    .line 115
    move-object v0, v5

    .line 116
    new-instance v5, Lc2/k;

    .line 117
    .line 118
    const/4 v13, 0x2

    .line 119
    move-object v11, v8

    .line 120
    move-object v12, v8

    .line 121
    move-object v10, v6

    .line 122
    move-object v6, v2

    .line 123
    invoke-direct/range {v5 .. v13}, Lc2/k;-><init>(Lt8/a;Lt8/a;Lt8/a;Lt8/a;Lt8/a;Lt8/a;Lt8/a;I)V

    .line 124
    .line 125
    .line 126
    move-object v2, v5

    .line 127
    move-object v6, v10

    .line 128
    new-instance v5, Lb1/m;

    .line 129
    .line 130
    move-object v7, v6

    .line 131
    const/16 v6, 0x8

    .line 132
    .line 133
    move-object v10, v8

    .line 134
    invoke-direct/range {v5 .. v10}, Lb1/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    new-instance v3, La5/h;

    .line 138
    .line 139
    const/4 v4, 0x2

    .line 140
    invoke-direct {v3, v0, v2, v5, v4}, La5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 141
    .line 142
    .line 143
    invoke-static {v3}, Lf2/a;->a(Lf2/b;)Lt8/a;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iput-object v0, v1, Ld2/k;->g:Lt8/a;

    .line 148
    .line 149
    return-object v1

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 151
    .line 152
    const-class v1, Landroid/content/Context;

    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v1, " must be set"

    .line 167
    .line 168
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/o;->c:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "connectivity"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 10
    .line 11
    return-object v0
.end method

.method public j(Ln/z;)Ln/r;
    .locals 4

    .line 1
    iget v0, p0, Lcom/bumptech/glide/manager/o;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Ln/m;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/bumptech/glide/manager/o;->c:Landroid/content/Context;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-direct {p1, v0, v1}, Ln/m;-><init>(Landroid/content/Context;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Ln/m;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/bumptech/glide/manager/o;->c:Landroid/content/Context;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-direct {p1, v0, v1}, Ln/m;-><init>(Landroid/content/Context;I)V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    :pswitch_1
    new-instance v0, Ln/b;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/bumptech/glide/manager/o;->c:Landroid/content/Context;

    .line 27
    .line 28
    const-class v2, Ljava/lang/Integer;

    .line 29
    .line 30
    const-class v3, Ljava/io/InputStream;

    .line 31
    .line 32
    invoke-virtual {p1, v2, v3}, Ln/z;->b(Ljava/lang/Class;Ljava/lang/Class;)Ln/r;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {v0, v1, p1}, Ln/b;-><init>(Landroid/content/Context;Ln/r;)V

    .line 37
    .line 38
    .line 39
    return-object v0

    .line 40
    :pswitch_2
    new-instance v0, Ln/b;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/bumptech/glide/manager/o;->c:Landroid/content/Context;

    .line 43
    .line 44
    const-class v2, Ljava/lang/Integer;

    .line 45
    .line 46
    const-class v3, Landroid/content/res/AssetFileDescriptor;

    .line 47
    .line 48
    invoke-virtual {p1, v2, v3}, Ln/z;->b(Ljava/lang/Class;Ljava/lang/Class;)Ln/r;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {v0, v1, p1}, Ln/b;-><init>(Landroid/content/Context;Ln/r;)V

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :pswitch_3
    new-instance p1, Ln/m;

    .line 57
    .line 58
    iget-object v0, p0, Lcom/bumptech/glide/manager/o;->c:Landroid/content/Context;

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-direct {p1, v0, v1}, Ln/m;-><init>(Landroid/content/Context;I)V

    .line 62
    .line 63
    .line 64
    return-object p1

    .line 65
    :pswitch_4
    new-instance p1, Ln/b;

    .line 66
    .line 67
    iget-object v0, p0, Lcom/bumptech/glide/manager/o;->c:Landroid/content/Context;

    .line 68
    .line 69
    invoke-direct {p1, v0, p0}, Ln/b;-><init>(Landroid/content/Context;Lcom/bumptech/glide/manager/o;)V

    .line 70
    .line 71
    .line 72
    return-object p1

    .line 73
    :pswitch_5
    new-instance p1, Ln/b;

    .line 74
    .line 75
    iget-object v0, p0, Lcom/bumptech/glide/manager/o;->c:Landroid/content/Context;

    .line 76
    .line 77
    invoke-direct {p1, v0, p0}, Ln/b;-><init>(Landroid/content/Context;Lcom/bumptech/glide/manager/o;)V

    .line 78
    .line 79
    .line 80
    return-object p1

    .line 81
    :pswitch_6
    new-instance p1, Ln/b;

    .line 82
    .line 83
    iget-object v0, p0, Lcom/bumptech/glide/manager/o;->c:Landroid/content/Context;

    .line 84
    .line 85
    invoke-direct {p1, v0, p0}, Ln/b;-><init>(Landroid/content/Context;Lcom/bumptech/glide/manager/o;)V

    .line 86
    .line 87
    .line 88
    return-object p1

    .line 89
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
