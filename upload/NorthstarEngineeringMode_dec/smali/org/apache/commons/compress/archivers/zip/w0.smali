.class public final synthetic Lorg/apache/commons/compress/archivers/zip/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/nio/file/Path;

.field public final synthetic c:Ljava/nio/file/Path;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(JLjava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/w0;->a:J

    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/w0;->b:Ljava/nio/file/Path;

    iput-object p4, p0, Lorg/apache/commons/compress/archivers/zip/w0;->c:Ljava/nio/file/Path;

    iput-object p5, p0, Lorg/apache/commons/compress/archivers/zip/w0;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 6

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/w0;->a:J

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/w0;->b:Ljava/nio/file/Path;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/w0;->c:Ljava/nio/file/Path;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/w0;->d:Ljava/lang/String;

    move v5, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/zip/a1;->b(JLjava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/String;I)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method
