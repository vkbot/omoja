.class public abstract Ly/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method

.method public static d([Ljava/lang/Object;ILy/k;)Ljava/lang/Object;
    .locals 10

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const/16 v0, 0x190

    goto :goto_0

    :cond_0
    const/16 v0, 0x2bc

    :goto_0
    and-int/lit8 p1, p1, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    array-length v3, p0

    const/4 v4, 0x0

    const v5, 0x7fffffff

    move v6, v2

    :goto_2
    if-ge v6, v3, :cond_5

    aget-object v7, p0, v6

    iget v8, p2, Ly/k;->a:I

    packed-switch v8, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    move-object v9, v7

    check-cast v9, Ld0/i;

    iget v9, v9, Ld0/i;->c:I

    goto :goto_4

    :goto_3
    move-object v9, v7

    check-cast v9, Lx/e;

    iget v9, v9, Lx/e;->b:I

    :goto_4
    sub-int/2addr v9, v0

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    packed-switch v8, :pswitch_data_1

    goto :goto_5

    :pswitch_1
    move-object v8, v7

    check-cast v8, Ld0/i;

    iget-boolean v8, v8, Ld0/i;->d:Z

    goto :goto_6

    :goto_5
    move-object v8, v7

    check-cast v8, Lx/e;

    iget-boolean v8, v8, Lx/e;->c:Z

    :goto_6
    if-ne v8, p1, :cond_2

    move v8, v2

    goto :goto_7

    :cond_2
    move v8, v1

    :goto_7
    add-int/2addr v9, v8

    if-eqz v4, :cond_3

    if-le v5, v9, :cond_4

    :cond_3
    move-object v4, v7

    move v5, v9

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Lx/d;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
.end method

.method public abstract b(Landroid/content/Context;[Ld0/i;I)Landroid/graphics/Typeface;
.end method

.method public c(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 0

    invoke-static {p1}, Ly/m;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const/4 p4, 0x0

    if-nez p1, :cond_0

    return-object p4

    :cond_0
    :try_start_0
    invoke-static {p1, p2, p3}, Ly/m;->b(Ljava/io/File;Landroid/content/res/Resources;I)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p4

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    throw p2

    :catch_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p4
.end method

.method public e(I[Ld0/i;)Ld0/i;
    .locals 2

    new-instance v0, Ly/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly/k;-><init>(I)V

    invoke-static {p2, p1, v0}, Ly/l;->d([Ljava/lang/Object;ILy/k;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld0/i;

    return-object p1
.end method
