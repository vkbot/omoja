.class public final Lq/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lh/j;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 12
    iput p1, p0, Lq/a;->a:I

    iput-object p2, p0, Lq/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lq/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lh/j;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lq/a;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lq/a;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lq/a;->b:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILh/h;)Lj/d0;
    .locals 11

    .line 1
    iget v0, p0, Lq/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/io/InputStream;

    .line 7
    .line 8
    instance-of v0, p1, Lq/x;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast p1, Lq/x;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    move v1, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Lq/x;

    .line 18
    .line 19
    iget-object v1, p0, Lq/a;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Lk/g;

    .line 22
    .line 23
    invoke-direct {v0, p1, v1}, Lq/x;-><init>(Ljava/io/InputStream;Lk/g;)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    move v1, p1

    .line 28
    move-object p1, v0

    .line 29
    :goto_0
    sget-object v2, Lc0/e;->d:Ljava/util/ArrayDeque;

    .line 30
    .line 31
    monitor-enter v2

    .line 32
    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lc0/e;

    .line 37
    .line 38
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    new-instance v0, Lc0/e;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/io/InputStream;-><init>()V

    .line 44
    .line 45
    .line 46
    :cond_1
    move-object v3, v0

    .line 47
    iput-object p1, v3, Lc0/e;->b:Lq/x;

    .line 48
    .line 49
    new-instance v0, Lc0/m;

    .line 50
    .line 51
    invoke-direct {v0, v3}, Lc0/m;-><init>(Lc0/e;)V

    .line 52
    .line 53
    .line 54
    new-instance v9, Ll/d;

    .line 55
    .line 56
    const/16 v4, 0x8

    .line 57
    .line 58
    invoke-direct {v9, v4, p1, v3}, Ll/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    const/4 v10, 0x0

    .line 62
    :try_start_1
    iget-object v4, p0, Lq/a;->b:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v4, Lq/q;

    .line 65
    .line 66
    new-instance v5, La5/h;

    .line 67
    .line 68
    iget-object v6, v4, Lq/q;->d:Ljava/util/ArrayList;

    .line 69
    .line 70
    iget-object v7, v4, Lq/q;->c:Lk/g;

    .line 71
    .line 72
    invoke-direct {v5, v0, v6, v7}, La5/h;-><init>(Lc0/m;Ljava/util/ArrayList;Lk/g;)V

    .line 73
    .line 74
    .line 75
    move v6, p2

    .line 76
    move v7, p3

    .line 77
    move-object v8, p4

    .line 78
    invoke-virtual/range {v4 .. v9}, Lq/q;->a(La5/h;IILh/h;Lq/p;)Lq/e;

    .line 79
    .line 80
    .line 81
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    iput-object v10, v3, Lc0/e;->c:Ljava/io/IOException;

    .line 83
    .line 84
    iput-object v10, v3, Lc0/e;->b:Lq/x;

    .line 85
    .line 86
    monitor-enter v2

    .line 87
    :try_start_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    if-eqz v1, :cond_2

    .line 92
    .line 93
    invoke-virtual {p1}, Lq/x;->c()V

    .line 94
    .line 95
    .line 96
    :cond_2
    return-object p2

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    move-object p1, v0

    .line 99
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    throw p1

    .line 101
    :catchall_1
    move-exception v0

    .line 102
    move-object p2, v0

    .line 103
    iput-object v10, v3, Lc0/e;->c:Ljava/io/IOException;

    .line 104
    .line 105
    iput-object v10, v3, Lc0/e;->b:Lq/x;

    .line 106
    .line 107
    sget-object p3, Lc0/e;->d:Ljava/util/ArrayDeque;

    .line 108
    .line 109
    monitor-enter p3

    .line 110
    :try_start_4
    invoke-virtual {p3, v3}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 114
    if-eqz v1, :cond_3

    .line 115
    .line 116
    invoke-virtual {p1}, Lq/x;->c()V

    .line 117
    .line 118
    .line 119
    :cond_3
    throw p2

    .line 120
    :catchall_2
    move-exception v0

    .line 121
    move-object p1, v0

    .line 122
    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 123
    throw p1

    .line 124
    :catchall_3
    move-exception v0

    .line 125
    move-object p1, v0

    .line 126
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 127
    throw p1

    .line 128
    :pswitch_0
    move v6, p2

    .line 129
    move v7, p3

    .line 130
    move-object v8, p4

    .line 131
    check-cast p1, Landroid/net/Uri;

    .line 132
    .line 133
    iget-object p2, p0, Lq/a;->b:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast p2, Ls/c;

    .line 136
    .line 137
    invoke-virtual {p2, p1, v8}, Ls/c;->c(Landroid/net/Uri;Lh/h;)Lj/d0;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    if-nez p1, :cond_4

    .line 142
    .line 143
    const/4 p1, 0x0

    .line 144
    goto :goto_1

    .line 145
    :cond_4
    check-cast p1, Ls/b;

    .line 146
    .line 147
    invoke-virtual {p1}, Ls/b;->get()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 152
    .line 153
    iget-object p2, p0, Lq/a;->c:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast p2, Lk/b;

    .line 156
    .line 157
    invoke-static {p2, p1, v6, v7}, Lq/s;->a(Lk/b;Landroid/graphics/drawable/Drawable;II)Lq/e;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    :goto_1
    return-object p1

    .line 162
    :pswitch_1
    move v6, p2

    .line 163
    move v7, p3

    .line 164
    move-object v8, p4

    .line 165
    iget-object p2, p0, Lq/a;->b:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast p2, Lh/j;

    .line 168
    .line 169
    invoke-interface {p2, p1, v6, v7, v8}, Lh/j;->a(Ljava/lang/Object;IILh/h;)Lj/d0;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    iget-object p2, p0, Lq/a;->c:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast p2, Landroid/content/res/Resources;

    .line 176
    .line 177
    if-nez p1, :cond_5

    .line 178
    .line 179
    const/4 p1, 0x0

    .line 180
    goto :goto_2

    .line 181
    :cond_5
    new-instance p3, Lq/e;

    .line 182
    .line 183
    invoke-direct {p3, p2, p1}, Lq/e;-><init>(Landroid/content/res/Resources;Lj/d0;)V

    .line 184
    .line 185
    .line 186
    move-object p1, p3

    .line 187
    :goto_2
    return-object p1

    .line 188
    nop

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;Lh/h;)Z
    .locals 1

    .line 1
    iget v0, p0, Lq/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/io/InputStream;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    return p1

    .line 10
    :pswitch_0
    check-cast p1, Landroid/net/Uri;

    .line 11
    .line 12
    const-string p2, "android.resource"

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :pswitch_1
    iget-object v0, p0, Lq/a;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lh/j;

    .line 26
    .line 27
    invoke-interface {v0, p1, p2}, Lh/j;->b(Ljava/lang/Object;Lh/h;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    return p1

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
