.class public Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final MAX_ENTRY_SIZE_MSG:Ljava/lang/String; = "Zip bomb detected! The file would exceed the max size of the expanded data in the zip-file.\nThis may indicates that the file is used to inflate memory usage and thus could pose a security risk.\nYou can adjust this limit via ZipSecureFile.setMaxEntrySize() if you need to work with files which are very large.\nUncompressed size: %d, Raw/compressed size: %d\nLimits: MAX_ENTRY_SIZE: %d, Entry: %s"

.field private static final MIN_INFLATE_RATIO_MSG:Ljava/lang/String; = "Zip bomb detected! The file would exceed the max. ratio of compressed file size to the size of the expanded data.\nThis may indicate that the file is used to inflate memory usage and thus could pose a security risk.\nYou can adjust this limit via ZipSecureFile.setMinInflateRatio() if you need to work with files which exceed this limit.\nUncompressed size: %d, Raw/compressed size: %d, ratio: %f\nLimits: MIN_INFLATE_RATIO: %f, Entry: %s"


# instance fields
.field private entry:Lorg/apache/commons/compress/archivers/zip/o0;

.field private entryCount:J

.field private guardState:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;->guardState:Z

    instance-of p0, p1, Lh4/f;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InputStream of class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not implementing InputStreamStatistics."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkThreshold()V
    .locals 9

    iget-boolean v0, p0, Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;->guardState:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Lh4/f;

    invoke-interface {v0}, Lh4/f;->b()J

    move-result-wide v1

    :try_start_0
    invoke-interface {v0}, Lh4/f;->a()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v3, 0x0

    :goto_0
    iget-object p0, p0, Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;->entry:Lorg/apache/commons/compress/archivers/zip/o0;

    if-nez p0, :cond_1

    const-string p0, "not set"

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_1
    sget-wide v5, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MAX_ENTRY_SIZE:J

    cmp-long v0, v1, v5

    if-gtz v0, :cond_4

    sget-wide v5, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->GRACE_ENTRY_SIZE:J

    cmp-long v0, v1, v5

    if-gtz v0, :cond_2

    return-void

    :cond_2
    long-to-double v5, v3

    long-to-double v7, v1

    div-double/2addr v5, v7

    sget-wide v7, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MIN_INFLATE_RATIO:D

    cmpl-double v0, v5, v7

    if-ltz v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/io/IOException;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    sget-wide v4, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MIN_INFLATE_RATIO:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Zip bomb detected! The file would exceed the max. ratio of compressed file size to the size of the expanded data.\nThis may indicate that the file is used to inflate memory usage and thus could pose a security risk.\nYou can adjust this limit via ZipSecureFile.setMinInflateRatio() if you need to work with files which exceed this limit.\nUncompressed size: %d, Raw/compressed size: %d, ratio: %f\nLimits: MIN_INFLATE_RATIO: %f, Entry: %s"

    invoke-static {v7, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-wide v3, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MAX_ENTRY_SIZE:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Zip bomb detected! The file would exceed the max size of the expanded data in the zip-file.\nThis may indicates that the file is used to inflate memory usage and thus could pose a security risk.\nYou can adjust this limit via ZipSecureFile.setMaxEntrySize() if you need to work with files which are very large.\nUncompressed size: %d, Raw/compressed size: %d\nLimits: MAX_ENTRY_SIZE: %d, Entry: %s"

    invoke-static {v5, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getNextEntry()Lorg/apache/commons/compress/archivers/zip/o0;
    .locals 5

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    instance-of v0, v0, Lorg/apache/commons/compress/archivers/zip/q0;

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/q0;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/q0;->i()Lorg/apache/commons/compress/archivers/zip/o0;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;->entry:Lorg/apache/commons/compress/archivers/zip/o0;

    iget-boolean v1, p0, Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;->guardState:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;->entryCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;->entryCount:J

    sget-wide v3, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MAX_FILE_COUNT:J

    cmp-long p0, v1, v3

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "The file appears to be potentially malicious. This file embeds more internal file entries than expected.\nThis may indicates that the file could pose a security risk.\nYou can adjust this limit via ZipSecureFile.setMaxFileCount() if you need to work with files which are very large.\nLimits: MAX_FILE_COUNT: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-wide v3, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MAX_FILE_COUNT:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    return-object v0

    :catch_1
    const/4 p0, 0x0

    return-object p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unexpected record signature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Cannot find zip signature within the file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    throw p0

    :cond_3
    :goto_2
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/NotOfficeXmlFileException;

    const-string v1, "No valid entries or contents found, this is not a valid OOXML (Office Open XML) file"

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/openxml4j/exceptions/NotOfficeXmlFileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getNextEntry() is only allowed for stream based zip processing."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public read()I
    .locals 2

    .line 1
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;->checkThreshold()V

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-le p1, p2, :cond_0

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;->checkThreshold()V

    :cond_0
    return p1
.end method

.method public setEntry(Lorg/apache/commons/compress/archivers/zip/o0;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;->entry:Lorg/apache/commons/compress/archivers/zip/o0;

    return-void
.end method

.method public setGuardState(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;->guardState:Z

    return-void
.end method

.method public skip(J)J
    .locals 2

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0, p1, p2}, Lorg/apache/poi/util/IOUtils;->skipFully(Ljava/io/InputStream;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;->checkThreshold()V

    :cond_0
    return-wide p1
.end method
