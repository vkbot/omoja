.class public final Lorg/apache/poi/openxml4j/opc/internal/ZipHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final FORWARD_SLASH:Ljava/lang/String; = "/"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCorePropertiesZipEntry(Lorg/apache/poi/openxml4j/opc/ZipPackage;)Lorg/apache/commons/compress/archivers/zip/o0;
    .locals 1

    const-string v0, "http://schemas.openxmlformats.org/package/2006/relationships/metadata/core-properties"

    invoke-virtual {p0, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/zip/o0;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getOPCNameFromZipItemName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "zipItemName cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getZipItemNameFromOPCName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    :goto_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "opcItemName cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getZipURIFromOPCName(Ljava/lang/String;)Ljava/net/URI;
    .locals 1

    if-eqz p0, :cond_1

    :goto_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "opcItemName"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static openZipFile(Ljava/io/File;)Lorg/apache/poi/openxml4j/util/ZipSecureFile;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/internal/ZipHelper;->verifyZipHeader(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 6
    :cond_0
    new-instance v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/util/ZipSecureFile;-><init>(Ljava/io/File;)V

    return-object v0

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    .line 8
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    .line 9
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "File is a directory"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_3
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v0, "File does not exist"

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static openZipFile(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/ZipSecureFile;
    .locals 1

    .line 11
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/internal/ZipHelper;->openZipFile(Ljava/io/File;)Lorg/apache/poi/openxml4j/util/ZipSecureFile;

    move-result-object p0

    return-object p0
.end method

.method public static openZipStream(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lorg/apache/poi/openxml4j/opc/internal/ZipHelper;->openZipStream(Ljava/io/InputStream;Z)Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;

    move-result-object p0

    return-object p0
.end method

.method public static openZipStream(Ljava/io/InputStream;Z)Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;
    .locals 4

    .line 2
    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->prepareToCheckMagic(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/internal/ZipHelper;->verifyZipHeader(Ljava/io/InputStream;)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lorg/apache/poi/openxml4j/opc/internal/NoCloseInputStream;

    invoke-direct {p1, p0}, Lorg/apache/poi/openxml4j/opc/internal/NoCloseInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, p1

    .line 5
    :goto_0
    new-instance p1, Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/q0;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 6
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/q0;-><init>(Ljava/io/InputStream;Ljava/lang/String;ZZ)V

    invoke-direct {p1, v0}, Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p1
.end method

.method private static verifyZipHeader(Ljava/io/InputStream;)V
    .locals 1

    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->prepareToCheckMagic(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf(Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/ZipHelper$1;->$SwitchMap$org$apache$poi$poifs$filesystem$FileMagic:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/NotOfficeXmlFileException;

    const-string v0, "The supplied data appears to be a raw XML file. Formats such as Office 2003 XML are not supported"

    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/exceptions/NotOfficeXmlFileException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/OLE2NotOfficeXmlFileException;

    const-string v0, "The supplied data appears to be in the OLE2 Format. You are calling the part of POI that deals with OOXML (Office Open XML) Documents. You need to call a different part of POI to process this data (eg HSSF instead of XSSF)"

    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/exceptions/OLE2NotOfficeXmlFileException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
