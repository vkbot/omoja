.class public Lorg/apache/poi/ss/extractor/EmbeddedExtractor$Ole10Extractor;
.super Lorg/apache/poi/ss/extractor/EmbeddedExtractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/extractor/EmbeddedExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ole10Extractor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;-><init>()V

    return-void
.end method


# virtual methods
.method public canExtract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Z
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/hpsf/ClassIDPredefined;->lookup(Lorg/apache/poi/hpsf/ClassID;)Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-result-object p0

    sget-object p1, Lorg/apache/poi/hpsf/ClassIDPredefined;->OLE_V1_PACKAGE:Lorg/apache/poi/hpsf/ClassIDPredefined;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public extract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/ss/extractor/EmbeddedData;
    .locals 2

    :try_start_0
    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->createFromEmbeddedOleObject(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/poifs/filesystem/Ole10Native;

    move-result-object p0

    new-instance p1, Lorg/apache/poi/ss/extractor/EmbeddedData;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getDataBuffer()[B

    move-result-object p0

    const-string v1, "binary/octet-stream"

    invoke-direct {p1, v0, p0, v1}, Lorg/apache/poi/ss/extractor/EmbeddedData;-><init>(Ljava/lang/String;[BLjava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/poi/poifs/filesystem/Ole10NativeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
