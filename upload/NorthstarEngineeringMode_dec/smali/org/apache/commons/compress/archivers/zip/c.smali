.class public final Lorg/apache/commons/compress/archivers/zip/c;
.super Lh4/a;
.source "SourceFile"


# virtual methods
.method public final c(I)J
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x8

    if-gt p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lh4/a;->a(I)J

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Trying to read "

    const-string v1, " bits, at most 8 are allowed"

    invoke-static {v0, p1, v1}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
