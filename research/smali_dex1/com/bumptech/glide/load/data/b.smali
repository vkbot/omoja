.class public abstract Lcom/bumptech/glide/load/data/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lcom/bumptech/glide/load/data/e;


# instance fields
.field public final synthetic b:I

.field public c:Ljava/lang/Object;

.field public final d:Ljava/lang/Comparable;

.field public final e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Comparable;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iput p1, p0, Lcom/bumptech/glide/load/data/b;->b:I

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bumptech/glide/load/data/b;->e:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/bumptech/glide/load/data/b;->d:Ljava/lang/Comparable;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final d()V
    .registers 1

    .line 1
    return-void
.end method

.method private final f()V
    .registers 1

    .line 1
    return-void
.end method


# virtual methods
.method public final b()V
    .registers 2

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/data/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_16

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/load/data/b;->c:Ljava/lang/Object;

    .line 7
    .line 8
    if-eqz v0, :cond_c

    .line 9
    .line 10
    :try_start_9
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/data/b;->g(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_c

    .line 11
    .line 12
    .line 13
    :catch_c
    :cond_c
    return-void

    .line 14
    :pswitch_d
    iget-object v0, p0, Lcom/bumptech/glide/load/data/b;->c:Ljava/lang/Object;

    .line 15
    .line 16
    if-nez v0, :cond_12

    .line 17
    .line 18
    goto :goto_15

    .line 19
    :cond_12
    :try_start_12
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/data/b;->g(Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_15

    .line 20
    .line 21
    .line 22
    :catch_15
    :goto_15
    return-void

    .line 23
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public final c()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/data/b;->b:I

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
    iget v0, p0, Lcom/bumptech/glide/load/data/b;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public final e(Lcom/bumptech/glide/h;Lcom/bumptech/glide/load/data/d;)V
    .registers 5

    .line 1
    iget p1, p0, Lcom/bumptech/glide/load/data/b;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_50

    .line 4
    .line 5
    .line 6
    :try_start_5
    iget-object p1, p0, Lcom/bumptech/glide/load/data/b;->d:Ljava/lang/Comparable;

    .line 7
    .line 8
    check-cast p1, Landroid/net/Uri;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/bumptech/glide/load/data/b;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroid/content/ContentResolver;

    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/load/data/b;->i(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/bumptech/glide/load/data/b;->c:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/d;->f(Ljava/lang/Object;)V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_16} :catch_17

    .line 21
    .line 22
    .line 23
    goto :goto_29

    .line 24
    :catch_17
    move-exception p1

    .line 25
    const/4 v0, 0x3

    .line 26
    const-string v1, "LocalUriFetcher"

    .line 27
    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_26

    .line 33
    .line 34
    const-string v0, "Failed to open Uri"

    .line 35
    .line 36
    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    .line 38
    .line 39
    :cond_26
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/d;->d(Ljava/lang/Exception;)V

    .line 40
    .line 41
    .line 42
    :goto_29
    return-void

    .line 43
    :pswitch_2a
    :try_start_2a
    iget-object p1, p0, Lcom/bumptech/glide/load/data/b;->e:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Landroid/content/res/AssetManager;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/bumptech/glide/load/data/b;->d:Ljava/lang/Comparable;

    .line 48
    .line 49
    check-cast v0, Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/load/data/b;->h(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/bumptech/glide/load/data/b;->c:Ljava/lang/Object;

    .line 56
    .line 57
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/d;->f(Ljava/lang/Object;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_3b} :catch_3c

    .line 58
    .line 59
    .line 60
    goto :goto_4e

    .line 61
    :catch_3c
    move-exception p1

    .line 62
    const/4 v0, 0x3

    .line 63
    const-string v1, "AssetPathFetcher"

    .line 64
    .line 65
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_4b

    .line 70
    .line 71
    const-string v0, "Failed to load data from asset manager"

    .line 72
    .line 73
    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .line 75
    .line 76
    :cond_4b
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/d;->d(Ljava/lang/Exception;)V

    .line 77
    .line 78
    .line 79
    :goto_4e
    return-void

    .line 80
    nop

    .line 81
    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_2a
    .end packed-switch
.end method

.method public abstract g(Ljava/lang/Object;)V
.end method

.method public abstract h(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract i(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/Object;
.end method
