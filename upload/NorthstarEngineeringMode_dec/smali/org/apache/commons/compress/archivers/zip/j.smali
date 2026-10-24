.class public final Lorg/apache/commons/compress/archivers/zip/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/j$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final b:[Lorg/apache/commons/compress/archivers/zip/v0;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/j;->a:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/b;->c1:Lorg/apache/commons/compress/archivers/zip/d1;

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/g;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/commons/compress/archivers/zip/g;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/h0;->d1:Lorg/apache/commons/compress/archivers/zip/d1;

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/i;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Lorg/apache/commons/compress/archivers/zip/i;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/i0;->y:Lorg/apache/commons/compress/archivers/zip/d1;

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/g;

    const/4 v5, 0x2

    invoke-direct {v2, v5}, Lorg/apache/commons/compress/archivers/zip/g;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/n;->c:Lorg/apache/commons/compress/archivers/zip/d1;

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/h;

    invoke-direct {v2, v5}, Lorg/apache/commons/compress/archivers/zip/h;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/v;->y:Lorg/apache/commons/compress/archivers/zip/d1;

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/i;

    invoke-direct {v2, v5}, Lorg/apache/commons/compress/archivers/zip/i;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/u;->y:Lorg/apache/commons/compress/archivers/zip/d1;

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/g;

    const/4 v5, 0x3

    invoke-direct {v2, v5}, Lorg/apache/commons/compress/archivers/zip/g;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/j0;->b1:Lorg/apache/commons/compress/archivers/zip/d1;

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/h;

    invoke-direct {v2, v5}, Lorg/apache/commons/compress/archivers/zip/h;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/b0;->y:Lorg/apache/commons/compress/archivers/zip/d1;

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/i;

    invoke-direct {v2, v5}, Lorg/apache/commons/compress/archivers/zip/i;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/c0;->y:Lorg/apache/commons/compress/archivers/zip/d1;

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/g;

    const/4 v5, 0x4

    invoke-direct {v2, v5}, Lorg/apache/commons/compress/archivers/zip/g;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/d0;->y:Lorg/apache/commons/compress/archivers/zip/d1;

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/h;

    invoke-direct {v2, v5}, Lorg/apache/commons/compress/archivers/zip/h;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/e0;->y:Lorg/apache/commons/compress/archivers/zip/d1;

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/h;

    invoke-direct {v2, v3}, Lorg/apache/commons/compress/archivers/zip/h;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/f0;->Z:Lorg/apache/commons/compress/archivers/zip/d1;

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/i;

    invoke-direct {v2, v3}, Lorg/apache/commons/compress/archivers/zip/i;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/g0;->y:Lorg/apache/commons/compress/archivers/zip/d1;

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/g;

    invoke-direct {v2, v4}, Lorg/apache/commons/compress/archivers/zip/g;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/r;->y:Lorg/apache/commons/compress/archivers/zip/d1;

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/h;

    invoke-direct {v2, v4}, Lorg/apache/commons/compress/archivers/zip/h;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v3, [Lorg/apache/commons/compress/archivers/zip/v0;

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/j;->b:[Lorg/apache/commons/compress/archivers/zip/v0;

    return-void
.end method

.method public static a(Lorg/apache/commons/compress/archivers/zip/v0;[BIIZ)V
    .locals 0

    if-eqz p4, :cond_0

    :try_start_0
    invoke-interface {p0, p2, p3, p1}, Lorg/apache/commons/compress/archivers/zip/v0;->f(II[B)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-interface {p0, p2, p3, p1}, Lorg/apache/commons/compress/archivers/zip/v0;->e(II[B)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :goto_1
    new-instance p2, Ljava/util/zip/ZipException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Failed to parse corrupt ZIP extra field of type "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/apache/commons/compress/archivers/zip/v0;->c()Lorg/apache/commons/compress/archivers/zip/d1;

    move-result-object p0

    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/d1;->c:I

    invoke-static {p0, p3}, Landroidx/activity/result/a;->b(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/util/zip/ZipException;

    throw p0
.end method

.method public static b([BZLorg/apache/commons/compress/archivers/zip/f;)[Lorg/apache/commons/compress/archivers/zip/v0;
    .locals 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    add-int/lit8 v2, v1, -0x4

    if-gt v4, v2, :cond_1

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/d1;

    invoke-direct {v2, p0, v4}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>([BI)V

    new-instance v3, Lorg/apache/commons/compress/archivers/zip/d1;

    add-int/lit8 v5, v4, 0x2

    invoke-direct {v3, p0, v5}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>([BI)V

    iget v12, v3, Lorg/apache/commons/compress/archivers/zip/d1;->c:I

    add-int/lit8 v9, v4, 0x4

    add-int v3, v9, v12

    if-le v3, v1, :cond_0

    sub-int v5, v1, v4

    move-object v3, p2

    move-object v6, p0

    move v7, v12

    move v8, p1

    invoke-interface/range {v3 .. v8}, Lorg/apache/commons/compress/archivers/zip/w;->b(II[BIZ)Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-interface {p2, v2}, Lorg/apache/commons/compress/archivers/zip/f;->c(Lorg/apache/commons/compress/archivers/zip/d1;)Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object v2

    const-string v3, "createExtraField must not return null"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Lorg/apache/commons/compress/archivers/zip/v0;

    move-object v6, p2

    move-object v8, p0

    move v10, v12

    move v11, p1

    invoke-interface/range {v6 .. v11}, Lorg/apache/commons/compress/archivers/zip/f;->a(Lorg/apache/commons/compress/archivers/zip/v0;[BIIZ)Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object v2

    const-string v3, "fill must not return null"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lorg/apache/commons/compress/archivers/zip/v0;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v12, v12, 0x4

    add-int/2addr v4, v12

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/util/zip/ZipException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/util/zip/ZipException;

    throw p0

    :cond_1
    :goto_1
    sget-object p0, Lorg/apache/commons/compress/archivers/zip/j;->b:[Lorg/apache/commons/compress/archivers/zip/v0;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/commons/compress/archivers/zip/v0;

    return-object p0
.end method
