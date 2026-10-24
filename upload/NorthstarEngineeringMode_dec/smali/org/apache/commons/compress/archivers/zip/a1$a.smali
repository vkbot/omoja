.class public final Lorg/apache/commons/compress/archivers/zip/a1$a;
.super Lorg/apache/commons/compress/archivers/zip/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/archivers/zip/a1;->getInputStream(Lorg/apache/commons/compress/archivers/zip/o0;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic x:Ljava/util/zip/Inflater;

.field public final synthetic y:Lorg/apache/commons/compress/archivers/zip/a1;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/a1;Ljava/io/SequenceInputStream;Ljava/util/zip/Inflater;Ljava/util/zip/Inflater;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/a1$a;->y:Lorg/apache/commons/compress/archivers/zip/a1;

    iput-object p4, p0, Lorg/apache/commons/compress/archivers/zip/a1$a;->x:Ljava/util/zip/Inflater;

    invoke-direct {p0, p2, p3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a1$a;->x:Ljava/util/zip/Inflater;

    :try_start_0
    invoke-super {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    throw p0
.end method
