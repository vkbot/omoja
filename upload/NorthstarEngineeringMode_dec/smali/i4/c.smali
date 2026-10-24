.class public final Li4/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-char v0, Ljava/io/File;->separatorChar:C

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Li4/c;->a:[B

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    sget-object v0, Li4/d;->r:Li4/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Li4/d;->c:Li4/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/g;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/g;-><init>(I)V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Li4/c;->b:Ljava/lang/ThreadLocal;

    const/16 v0, 0x2000

    new-array v0, v0, [B

    sput-object v0, Li4/c;->c:[B

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/h;

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/h;-><init>(I)V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static b(Ljava/io/InputStream;)[B
    .locals 5

    sget v0, Lorg/apache/commons/io/output/j;->c:I

    invoke-static {}, Landroidx/activity/result/a;->l()Lorg/apache/commons/io/output/j;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/apache/commons/io/output/i;

    new-instance v2, Landroidx/constraintlayout/core/state/b;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroidx/constraintlayout/core/state/b;-><init>(I)V

    new-instance v3, Ls0/e;

    const/16 v4, 0x9

    invoke-direct {v3, v4, v0}, Ls0/e;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/io/output/i;-><init>(Landroidx/constraintlayout/core/state/b;Ls0/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0x2000

    :try_start_1
    new-array v2, v2, [B

    const-string v3, "inputStream"

    invoke-static {p0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v4, v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lorg/apache/commons/io/output/i;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->toByteArrayImpl()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Lorg/apache/commons/io/output/i;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->close()V

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Lorg/apache/commons/io/output/i;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    :try_start_4
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
.end method
