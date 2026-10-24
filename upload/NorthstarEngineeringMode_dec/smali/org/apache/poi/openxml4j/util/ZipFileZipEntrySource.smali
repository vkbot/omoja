.class public Lorg/apache/poi/openxml4j/util/ZipFileZipEntrySource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/openxml4j/util/ZipEntrySource;


# instance fields
.field private zipArchive:Lorg/apache/commons/compress/archivers/zip/a1;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/a1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/openxml4j/util/ZipFileZipEntrySource;->zipArchive:Lorg/apache/commons/compress/archivers/zip/a1;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipFileZipEntrySource;->zipArchive:Lorg/apache/commons/compress/archivers/zip/a1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/a1;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipFileZipEntrySource;->zipArchive:Lorg/apache/commons/compress/archivers/zip/a1;

    return-void
.end method

.method public getEntries()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "+",
            "Lorg/apache/commons/compress/archivers/zip/o0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/openxml4j/util/ZipFileZipEntrySource;->zipArchive:Lorg/apache/commons/compress/archivers/zip/a1;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/a1;->getEntries()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Zip File is closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getEntry(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/o0;
    .locals 4

    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lorg/apache/poi/openxml4j/util/ZipFileZipEntrySource;->zipArchive:Lorg/apache/commons/compress/archivers/zip/a1;

    invoke-virtual {v2, p1}, Lorg/apache/commons/compress/archivers/zip/a1;->getEntry(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/o0;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/openxml4j/util/ZipFileZipEntrySource;->zipArchive:Lorg/apache/commons/compress/archivers/zip/a1;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/a1;->getEntries()Ljava/util/Enumeration;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/o0;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInputStream(Lorg/apache/commons/compress/archivers/zip/o0;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/util/ZipFileZipEntrySource;->zipArchive:Lorg/apache/commons/compress/archivers/zip/a1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/a1;->getInputStream(Lorg/apache/commons/compress/archivers/zip/o0;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Zip File is closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isClosed()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/util/ZipFileZipEntrySource;->zipArchive:Lorg/apache/commons/compress/archivers/zip/a1;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
