.class public final synthetic Lorg/apache/commons/compress/archivers/zip/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 0

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getDiskNumberStart()J

    move-result-wide p0

    return-wide p0
.end method
