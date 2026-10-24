.class Lorg/apache/poi/ss/extractor/EmbeddedExtractor$PdfExtractor;
.super Lorg/apache/poi/ss/extractor/EmbeddedExtractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/extractor/EmbeddedExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PdfExtractor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;-><init>()V

    return-void
.end method


# virtual methods
.method public canExtract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object p0

    .line 2
    sget-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->PDF:Lorg/apache/poi/hpsf/ClassIDPredefined;

    invoke-virtual {v0, p0}, Lorg/apache/poi/hpsf/ClassIDPredefined;->equals(Lorg/apache/poi/hpsf/ClassID;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "CONTENTS"

    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntryCaseInsensitive(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public canExtract(Lorg/apache/poi/ss/usermodel/Picture;)Z
    .locals 0

    .line 3
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Picture;->getPictureData()Lorg/apache/poi/ss/usermodel/PictureData;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/PictureData;->getPictureType()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public extract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/ss/extractor/EmbeddedData;
    .locals 4

    .line 1
    sget p0, Lorg/apache/commons/io/output/j;->c:I

    .line 2
    invoke-static {}, Landroidx/activity/result/a;->l()Lorg/apache/commons/io/output/j;

    move-result-object p0

    :try_start_0
    const-string v0, "CONTENTS"

    .line 3
    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-static {v0, p0}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 5
    new-instance v1, Lorg/apache/poi/ss/extractor/EmbeddedData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".pdf"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lorg/apache/commons/io/output/a;->toByteArrayImpl()[B

    move-result-object v2

    const-string v3, "application/pdf"

    .line 7
    invoke-direct {v1, p1, v2, v3}, Lorg/apache/poi/ss/extractor/EmbeddedData;-><init>(Ljava/lang/String;[BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    .line 8
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/io/output/a;->close()V

    return-object v1

    :catchall_1
    move-exception p1

    .line 9
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v1

    if-eqz v0, :cond_1

    .line 10
    :try_start_4
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 11
    :goto_2
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    .line 12
    :try_start_7
    invoke-virtual {p0}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v0
.end method

.method public extract(Lorg/apache/poi/ss/usermodel/Picture;)Lorg/apache/poi/ss/extractor/EmbeddedData;
    .locals 5

    .line 25
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Picture;->getPictureData()Lorg/apache/poi/ss/usermodel/PictureData;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 26
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/PictureData;->getPictureType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/PictureData;->getData()[B

    move-result-object p0

    .line 28
    sget-object v1, Lorg/apache/poi/util/LocaleUtil;->CHARSET_1252:Ljava/nio/charset/Charset;

    const-string v2, "%PDF-"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v3, v2}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->access$000([BI[B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    return-object v0

    :cond_1
    const-string v4, "%%EOF"

    .line 29
    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {p0, v2, v1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->access$000([BI[B)I

    move-result v1

    if-ne v1, v3, :cond_2

    return-object v0

    :cond_2
    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x6

    .line 30
    invoke-static {}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->access$100()I

    move-result v0

    invoke-static {p0, v2, v1, v0}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p0

    .line 31
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Shape;->getShapeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".pdf"

    .line 32
    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 33
    invoke-static {p1, v0}, La4/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 34
    :cond_3
    new-instance v0, Lorg/apache/poi/ss/extractor/EmbeddedData;

    const-string v1, "application/pdf"

    invoke-direct {v0, p1, p0, v1}, Lorg/apache/poi/ss/extractor/EmbeddedData;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    :cond_4
    :goto_0
    return-object v0
.end method
