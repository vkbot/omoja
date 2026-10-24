.class public Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/openxml4j/util/ZipEntrySource;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static encryptTempFiles:Z = false

.field private static thresholdForTempFiles:I = -0x1


# instance fields
.field private streamToClose:Ljava/io/InputStream;

.field private final zipEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;->zipEntries:Ljava/util/Map;

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/zip/o0;

    move-result-object v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;->streamToClose:Ljava/io/InputStream;

    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;->zipEntries:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/o0;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;

    invoke-direct {v3, v0, p1}, Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;-><init>(Lorg/apache/commons/compress/archivers/zip/o0;Ljava/io/InputStream;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getThresholdBytesForTempFiles()I
    .locals 1

    sget v0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;->thresholdForTempFiles:I

    return v0
.end method

.method public static setEncryptTempFiles(Z)V
    .locals 0

    sput-boolean p0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;->encryptTempFiles:Z

    return-void
.end method

.method public static setThresholdBytesForTempFiles(I)V
    .locals 0

    sput p0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;->thresholdForTempFiles:I

    return-void
.end method

.method public static shouldEncryptTempFiles()Z
    .locals 1

    sget-boolean v0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;->encryptTempFiles:Z

    return v0
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;->zipEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;->close()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;->zipEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;->streamToClose:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getEntries()Ljava/util/Enumeration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "+",
            "Lorg/apache/commons/compress/archivers/zip/o0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;->zipEntries:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getEntry(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/o0;
    .locals 2

    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;->zipEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/o0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;->zipEntries:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/zip/o0;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInputStream(Lorg/apache/commons/compress/archivers/zip/o0;)Ljava/io/InputStream;
    .locals 0

    check-cast p1, Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public isClosed()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;->zipEntries:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method
