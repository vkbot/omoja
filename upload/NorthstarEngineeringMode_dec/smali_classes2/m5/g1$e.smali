.class public final Lm5/g1$e;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm5/g1$e$a;
    }
.end annotation


# static fields
.field public static final synthetic b1:I


# instance fields
.field public final Z:Ljava/io/OutputStreamWriter;

.field public final c:Lm5/z0;

.field public r:Z

.field public final x:Lm5/g1$e$a;

.field public final y:Lm5/g1$m;


# direct methods
.method public constructor <init>(Lm5/h;Li5/z1;)V
    .locals 5

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iget-object v0, p1, Lm5/h;->a:Lm5/z0;

    iput-object v0, p0, Lm5/g1$e;->c:Lm5/z0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm5/g1$e;->r:Z

    if-nez p2, :cond_0

    sget-object p2, Li5/z1;->r:Li5/z1;

    goto :goto_0

    :cond_0
    sget-object v1, Li5/z1;->r:Li5/z1;

    :goto_0
    new-instance v1, Lm5/g1$e$a;

    invoke-direct {v1, p0}, Lm5/g1$e$a;-><init>(Lm5/g1$e;)V

    iput-object v1, p0, Lm5/g1$e;->x:Lm5/g1$e$a;

    invoke-static {p1, v0}, Lm5/z0;->s(Lm5/h;Z)Lm5/z0$d;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    sget-object v3, Li5/t0;->b:Ljava/lang/Object;

    iget-object v0, v0, Lm5/z0$d;->i:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Lj5/b;->a:Ljava/util/HashMap;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    sget-object v3, Li5/z1$a;->D1:Li5/z1$a;

    iget-object v4, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object v0, v3

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {v0}, Lj5/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    move-object v0, v3

    :cond_4
    if-nez v0, :cond_5

    const-string v0, "UTF8"

    invoke-static {v0}, Lj5/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    sget-object v3, Lj5/b;->a:Ljava/util/HashMap;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_7

    move-object v2, v3

    goto :goto_2

    :cond_7
    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v2, v0

    :cond_8
    :goto_2
    if-eqz v2, :cond_9

    :try_start_0
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v3, p0, Lm5/g1$e;->Z:Ljava/io/OutputStreamWriter;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lm5/g1$m;

    invoke-direct {v1, v0, p2, p1}, Lm5/g1$m;-><init>(Ljava/lang/String;Li5/z1;Lm5/h;)V

    iput-object v1, p0, Lm5/g1$e;->y:Lm5/g1$m;

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown encoding: "

    invoke-static {p1, v0}, Landroidx/activity/result/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(I)I
    .locals 9

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    iget-object v0, p0, Lm5/g1$e;->x:Lm5/g1$e$a;

    iget-object v1, v0, Lm5/g1$e$a;->y:[B

    const/4 v2, 0x0

    if-nez v1, :cond_1

    :goto_0
    move v1, v2

    goto :goto_2

    :cond_1
    array-length v1, v1

    iget v3, v0, Lm5/g1$e$a;->c:I

    :goto_1
    sub-int/2addr v1, v3

    :goto_2
    if-ge v1, p1, :cond_8

    iget-object v1, p0, Lm5/g1$e;->Z:Ljava/io/OutputStreamWriter;

    :cond_2
    iget-object v3, p0, Lm5/g1$e;->y:Lm5/g1$m;

    invoke-virtual {v3}, Lm5/g1$m;->G()I

    move-result v4

    const/16 v5, 0x800

    if-ge v4, v5, :cond_3

    invoke-virtual {v3}, Lm5/g1;->v()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_3
    invoke-virtual {v3}, Lm5/g1$m;->G()I

    move-result v4

    if-lez v4, :cond_5

    iget-object v6, v3, Lm5/g1$m;->A:[C

    array-length v7, v6

    iget v8, v3, Lm5/g1$m;->y:I

    sub-int/2addr v7, v8

    iget v8, v3, Lm5/g1$m;->x:I

    if-eq v7, v8, :cond_4

    array-length v7, v6

    iput v7, v3, Lm5/g1$m;->y:I

    :cond_4
    :try_start_0
    invoke-virtual {v1, v6, v2, v4}, Ljava/io/Writer;->write([CII)V

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget v1, v3, Lm5/g1$m;->x:I

    add-int/2addr v1, v4

    iput v1, v3, Lm5/g1$m;->x:I

    iput v2, v3, Lm5/g1$m;->y:I

    goto :goto_3

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    :goto_3
    if-ge v4, v5, :cond_6

    goto :goto_4

    :cond_6
    iget-object v1, v0, Lm5/g1$e$a;->y:[B

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    array-length v1, v1

    iget v3, v0, Lm5/g1$e$a;->c:I

    goto :goto_1

    :cond_8
    :goto_4
    iget-object p0, v0, Lm5/g1$e$a;->y:[B

    if-nez p0, :cond_9

    goto :goto_5

    :cond_9
    array-length p0, p0

    iget p1, v0, Lm5/g1$e$a;->c:I

    sub-int v2, p0, p1

    :goto_5
    return v2
.end method

.method public final available()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lm5/g1$e;->c:Lm5/z0;

    new-instance v1, Lg1/z;

    const/16 v2, 0xc

    invoke-direct {v1, v2, p0}, Lg1/z;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v1}, Lm5/g1;->a(Lm5/z0;Lm5/g1$j;)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm5/g1$e;->r:Z

    return-void
.end method

.method public final read()I
    .locals 2

    iget-boolean v0, p0, Lm5/g1$e;->r:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lm5/g1$e;->c:Lm5/z0;

    .line 1
    iget-boolean v1, v0, Lm5/z0;->a:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lm5/z0;->l()V

    :try_start_0
    iget-object v0, p0, Lm5/g1$e;->x:Lm5/g1$e$a;

    .line 3
    invoke-virtual {v0}, Lm5/g1$e$a;->read()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lm5/g1$e;->c:Lm5/z0;

    .line 4
    invoke-virtual {p0}, Lm5/z0;->m()V

    return v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lm5/g1$e;->c:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    .line 5
    throw v0

    .line 6
    :cond_0
    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lm5/g1$e;->c:Lm5/z0;

    .line 7
    invoke-virtual {v1}, Lm5/z0;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lm5/g1$e;->x:Lm5/g1$e$a;

    .line 8
    invoke-virtual {v1}, Lm5/g1$e$a;->read()I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object p0, p0, Lm5/g1$e;->c:Lm5/z0;

    .line 9
    invoke-virtual {p0}, Lm5/z0;->m()V

    monitor-exit v0

    return v1

    :catchall_1
    move-exception p0

    goto :goto_0

    :catchall_2
    move-exception v1

    iget-object p0, p0, Lm5/g1$e;->c:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    .line 10
    throw v1

    .line 11
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    .line 12
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Stream closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final read([BII)I
    .locals 1

    iget-boolean v0, p0, Lm5/g1$e;->r:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    if-ltz p2, :cond_0

    .line 13
    array-length v0, p1

    if-gt p2, v0, :cond_0

    .line 14
    new-instance v0, Lm5/h1;

    invoke-direct {v0, p0, p1, p2, p3}, Lm5/h1;-><init>(Lm5/g1$e;[BII)V

    iget-object p0, p0, Lm5/g1$e;->c:Lm5/z0;

    invoke-static {p0, v0}, Lm5/g1;->a(Lm5/z0;Lm5/g1$j;)I

    move-result p0

    return p0

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Offset is not within buf"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "buf to read into is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Stream closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
