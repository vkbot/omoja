.class public final Li/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lcom/bumptech/glide/load/data/e;


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Comparable;

.field public final d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Comparable;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iput p1, p0, Li/b;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Li/b;->c:Ljava/lang/Comparable;

    .line 4
    .line 5
    iput-object p3, p0, Li/b;->d:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static d(Landroid/content/Context;Landroid/net/Uri;Li/a;)Li/b;
    .registers 6

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/bumptech/glide/b;->e:Lk/g;

    .line 6
    .line 7
    new-instance v1, Li/c;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v2, v2, Lcom/bumptech/glide/b;->d:Lcom/bumptech/glide/e;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/bumptech/glide/e;->a()Lcom/bumptech/glide/j;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/bumptech/glide/j;->e()Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-direct {v1, v2, p2, v0, p0}, Li/c;-><init>(Ljava/util/ArrayList;Li/a;Lk/g;Landroid/content/ContentResolver;)V

    .line 28
    .line 29
    .line 30
    new-instance p0, Li/b;

    .line 31
    .line 32
    const/4 p2, 0x0

    .line 33
    invoke-direct {p0, p2, p1, v1}, Li/b;-><init>(ILjava/lang/Comparable;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-object p0
.end method

.method private final f()V
    .registers 1

    .line 1
    return-void
.end method

.method private final g()V
    .registers 1

    .line 1
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .registers 2

    .line 1
    iget v0, p0, Li/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_12

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li/b;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ln/c0;

    .line 9
    .line 10
    invoke-virtual {v0}, Ln/c0;->b()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :pswitch_e
    const-class v0, Ljava/io/InputStream;

    .line 16
    .line 17
    return-object v0

    .line 18
    nop

    .line 19
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
    .end packed-switch
.end method

.method public final b()V
    .registers 3

    .line 1
    iget v0, p0, Li/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_28

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li/b;->e:Ljava/lang/Object;

    .line 7
    .line 8
    if-eqz v0, :cond_1d

    .line 9
    .line 10
    :try_start_9
    iget-object v1, p0, Li/b;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ln/c0;

    .line 13
    .line 14
    iget v1, v1, Ln/c0;->b:I

    .line 15
    .line 16
    packed-switch v1, :pswitch_data_2e

    .line 17
    .line 18
    .line 19
    check-cast v0, Ljava/io/InputStream;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 22
    .line 23
    .line 24
    goto :goto_1d

    .line 25
    :pswitch_18
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1d} :catch_1d

    .line 28
    .line 29
    .line 30
    :catch_1d
    :cond_1d
    :goto_1d
    return-void

    .line 31
    :pswitch_1e
    iget-object v0, p0, Li/b;->e:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Ljava/io/InputStream;

    .line 34
    .line 35
    if-eqz v0, :cond_27

    .line 36
    .line 37
    :try_start_24
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_27

    .line 38
    .line 39
    .line 40
    :catch_27
    :cond_27
    return-void

    .line 41
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1e
    .end packed-switch

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    :pswitch_data_2e
    .packed-switch 0x8
        :pswitch_18
    .end packed-switch
.end method

.method public final c()I
    .registers 2

    .line 1
    iget v0, p0, Li/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_a

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    return v0

    .line 8
    :pswitch_7
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    nop

    .line 11
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method public final cancel()V
    .registers 2

    .line 1
    iget v0, p0, Li/b;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public final e(Lcom/bumptech/glide/h;Lcom/bumptech/glide/load/data/d;)V
    .registers 5

    .line 1
    iget p1, p0, Li/b;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_54

    .line 4
    .line 5
    .line 6
    :try_start_5
    iget-object p1, p0, Li/b;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Ln/c0;

    .line 9
    .line 10
    iget-object v0, p0, Li/b;->c:Ljava/lang/Comparable;

    .line 11
    .line 12
    check-cast v0, Ljava/io/File;

    .line 13
    .line 14
    iget p1, p1, Ln/c0;->b:I

    .line 15
    .line 16
    packed-switch p1, :pswitch_data_5a

    .line 17
    .line 18
    .line 19
    new-instance p1, Ljava/io/FileInputStream;

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 22
    .line 23
    .line 24
    goto :goto_1e

    .line 25
    :pswitch_18
    const/high16 p1, 0x10000000

    .line 26
    .line 27
    invoke-static {v0, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :goto_1e
    iput-object p1, p0, Li/b;->e:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/d;->f(Ljava/lang/Object;)V
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_23} :catch_24

    .line 34
    .line 35
    .line 36
    goto :goto_36

    .line 37
    :catch_24
    move-exception p1

    .line 38
    const/4 v0, 0x3

    .line 39
    const-string v1, "FileLoader"

    .line 40
    .line 41
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_33

    .line 46
    .line 47
    const-string v0, "Failed to open file"

    .line 48
    .line 49
    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .line 51
    .line 52
    :cond_33
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/d;->d(Ljava/lang/Exception;)V

    .line 53
    .line 54
    .line 55
    :goto_36
    return-void

    .line 56
    :pswitch_37
    :try_start_37
    invoke-virtual {p0}, Li/b;->h()Ljava/io/InputStream;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Li/b;->e:Ljava/lang/Object;

    .line 61
    .line 62
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/d;->f(Ljava/lang/Object;)V
    :try_end_40
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_40} :catch_41

    .line 63
    .line 64
    .line 65
    goto :goto_53

    .line 66
    :catch_41
    move-exception p1

    .line 67
    const/4 v0, 0x3

    .line 68
    const-string v1, "MediaStoreThumbFetcher"

    .line 69
    .line 70
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_50

    .line 75
    .line 76
    const-string v0, "Failed to find thumbnail file"

    .line 77
    .line 78
    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .line 80
    .line 81
    :cond_50
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/d;->d(Ljava/lang/Exception;)V

    .line 82
    .line 83
    .line 84
    :goto_53
    return-void

    .line 85
    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_37
    .end packed-switch

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    :pswitch_data_5a
    .packed-switch 0x8
        :pswitch_18
    .end packed-switch
.end method

.method public h()Ljava/io/InputStream;
    .registers 13

    .line 1
    iget-object v0, p0, Li/b;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Li/c;

    .line 4
    .line 5
    iget-object v1, v0, Li/c;->c:Landroid/content/ContentResolver;

    .line 6
    .line 7
    iget-object v2, p0, Li/b;->c:Ljava/lang/Comparable;

    .line 8
    .line 9
    check-cast v2, Landroid/net/Uri;

    .line 10
    .line 11
    const-string v3, "ThumbStreamOpener"

    .line 12
    .line 13
    const-string v4, "Failed to query for thumbnail for Uri: "

    .line 14
    .line 15
    const/4 v5, 0x3

    .line 16
    const/4 v6, 0x0

    .line 17
    :try_start_10
    iget-object v7, v0, Li/c;->a:Li/a;

    .line 18
    .line 19
    invoke-virtual {v7, v2}, Li/a;->a(Landroid/net/Uri;)Landroid/database/Cursor;

    .line 20
    .line 21
    .line 22
    move-result-object v7
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_16} :catch_37
    .catchall {:try_start_10 .. :try_end_16} :catchall_34

    .line 23
    if-eqz v7, :cond_2d

    .line 24
    .line 25
    :try_start_18
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    if-eqz v8, :cond_2d

    .line 30
    .line 31
    const/4 v8, 0x0

    .line 32
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4
    :try_end_23
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_23} :catch_2b
    .catchall {:try_start_18 .. :try_end_23} :catchall_27

    .line 36
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 37
    .line 38
    .line 39
    goto :goto_51

    .line 40
    :catchall_27
    move-exception v0

    .line 41
    move-object v6, v7

    .line 42
    goto/16 :goto_e1

    .line 43
    .line 44
    :catch_2b
    move-exception v8

    .line 45
    goto :goto_39

    .line 46
    :cond_2d
    if-eqz v7, :cond_32

    .line 47
    .line 48
    :goto_2f
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 49
    .line 50
    .line 51
    :cond_32
    move-object v4, v6

    .line 52
    goto :goto_51

    .line 53
    :catchall_34
    move-exception v0

    .line 54
    goto/16 :goto_e1

    .line 55
    .line 56
    :catch_37
    move-exception v8

    .line 57
    move-object v7, v6

    .line 58
    :goto_39
    :try_start_39
    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    if-eqz v9, :cond_4e

    .line 63
    .line 64
    new-instance v9, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-static {v3, v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4e
    .catchall {:try_start_39 .. :try_end_4e} :catchall_27

    .line 77
    .line 78
    .line 79
    :cond_4e
    if-eqz v7, :cond_32

    .line 80
    .line 81
    goto :goto_2f

    .line 82
    :goto_51
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-eqz v7, :cond_59

    .line 87
    .line 88
    :cond_57
    move-object v4, v6

    .line 89
    goto :goto_9a

    .line 90
    :cond_59
    new-instance v7, Ljava/io/File;

    .line 91
    .line 92
    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_57

    .line 100
    .line 101
    const-wide/16 v8, 0x0

    .line 102
    .line 103
    invoke-virtual {v7}, Ljava/io/File;->length()J

    .line 104
    .line 105
    .line 106
    move-result-wide v10

    .line 107
    cmp-long v4, v8, v10

    .line 108
    .line 109
    if-gez v4, :cond_57

    .line 110
    .line 111
    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    :try_start_72
    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 116
    .line 117
    .line 118
    move-result-object v4
    :try_end_76
    .catch Ljava/lang/NullPointerException; {:try_start_72 .. :try_end_76} :catch_77

    .line 119
    goto :goto_9a

    .line 120
    :catch_77
    move-exception v0

    .line 121
    new-instance v1, Ljava/io/FileNotFoundException;

    .line 122
    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string v5, "NPE opening uri: "

    .line 126
    .line 127
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v2, " -> "

    .line 134
    .line 135
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Ljava/io/FileNotFoundException;

    .line 153
    .line 154
    throw v0

    .line 155
    :goto_9a
    const/4 v7, -0x1

    .line 156
    if-eqz v4, :cond_d7

    .line 157
    .line 158
    const-string v8, "Failed to open uri: "

    .line 159
    .line 160
    :try_start_9f
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    iget-object v1, v0, Li/c;->d:Ljava/util/ArrayList;

    .line 165
    .line 166
    iget-object v0, v0, Li/c;->b:Lk/g;

    .line 167
    .line 168
    invoke-static {v1, v6, v0}, Lo4/b;->t(Ljava/util/List;Ljava/io/InputStream;Lk/g;)I

    .line 169
    .line 170
    .line 171
    move-result v0
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_ab} :catch_b5
    .catch Ljava/lang/NullPointerException; {:try_start_9f .. :try_end_ab} :catch_b3
    .catchall {:try_start_9f .. :try_end_ab} :catchall_b1

    .line 172
    if-eqz v6, :cond_d8

    .line 173
    .line 174
    :try_start_ad
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_d8

    .line 175
    .line 176
    .line 177
    goto :goto_d8

    .line 178
    :catchall_b1
    move-exception v0

    .line 179
    goto :goto_d1

    .line 180
    :catch_b3
    move-exception v0

    .line 181
    goto :goto_b6

    .line 182
    :catch_b5
    move-exception v0

    .line 183
    :goto_b6
    :try_start_b6
    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_cb

    .line 188
    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-static {v3, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cb
    .catchall {:try_start_b6 .. :try_end_cb} :catchall_b1

    .line 202
    .line 203
    .line 204
    :cond_cb
    if-eqz v6, :cond_d7

    .line 205
    .line 206
    :try_start_cd
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d0} :catch_d7

    .line 207
    .line 208
    .line 209
    goto :goto_d7

    .line 210
    :goto_d1
    if-eqz v6, :cond_d6

    .line 211
    .line 212
    :try_start_d3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_d6

    .line 213
    .line 214
    .line 215
    :catch_d6
    :cond_d6
    throw v0

    .line 216
    :catch_d7
    :cond_d7
    :goto_d7
    move v0, v7

    .line 217
    :catch_d8
    :cond_d8
    :goto_d8
    if-eq v0, v7, :cond_e0

    .line 218
    .line 219
    new-instance v1, Lcom/bumptech/glide/load/data/j;

    .line 220
    .line 221
    invoke-direct {v1, v4, v0}, Lcom/bumptech/glide/load/data/j;-><init>(Ljava/io/InputStream;I)V

    .line 222
    .line 223
    .line 224
    move-object v4, v1

    .line 225
    :cond_e0
    return-object v4

    .line 226
    :goto_e1
    if-eqz v6, :cond_e6

    .line 227
    .line 228
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 229
    .line 230
    .line 231
    :cond_e6
    throw v0
.end method
