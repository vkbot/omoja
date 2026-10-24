.class Lorg/apache/poi/ss/extractor/EmbeddedExtractor$BiffExtractor;
.super Lorg/apache/poi/ss/extractor/EmbeddedExtractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/extractor/EmbeddedExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BiffExtractor"
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

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$BiffExtractor;->canExtractExcel(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$BiffExtractor;->canExtractWord(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Z

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

.method public canExtractExcel(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Z
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/hpsf/ClassIDPredefined;->lookup(Lorg/apache/poi/hpsf/ClassID;)Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->EXCEL_V7:Lorg/apache/poi/hpsf/ClassIDPredefined;

    if-eq v0, p0, :cond_1

    sget-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->EXCEL_V8:Lorg/apache/poi/hpsf/ClassIDPredefined;

    if-eq v0, p0, :cond_1

    const-string p0, "Workbook"

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

.method public canExtractWord(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Z
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/hpsf/ClassIDPredefined;->lookup(Lorg/apache/poi/hpsf/ClassID;)Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->WORD_V7:Lorg/apache/poi/hpsf/ClassIDPredefined;

    if-eq v0, p0, :cond_1

    sget-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->WORD_V8:Lorg/apache/poi/hpsf/ClassIDPredefined;

    if-eq v0, p0, :cond_1

    const-string p0, "WordDocument"

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

.method public extract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/ss/extractor/EmbeddedData;
    .locals 2

    invoke-super {p0, p1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->extract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/ss/extractor/EmbeddedData;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$BiffExtractor;->canExtractExcel(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".xls"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/ss/extractor/EmbeddedData;->setFilename(Ljava/lang/String;)V

    const-string p0, "application/vnd.ms-excel"

    invoke-virtual {v0, p0}, Lorg/apache/poi/ss/extractor/EmbeddedData;->setContentType(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$BiffExtractor;->canExtractWord(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".doc"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/ss/extractor/EmbeddedData;->setFilename(Ljava/lang/String;)V

    const-string p0, "application/msword"

    invoke-virtual {v0, p0}, Lorg/apache/poi/ss/extractor/EmbeddedData;->setContentType(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0
.end method
