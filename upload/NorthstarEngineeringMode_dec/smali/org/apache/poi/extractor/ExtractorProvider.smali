.class public interface abstract Lorg/apache/poi/extractor/ExtractorProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract accepts(Lorg/apache/poi/poifs/filesystem/FileMagic;)Z
.end method

.method public abstract create(Ljava/io/File;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;
.end method

.method public abstract create(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;
.end method

.method public abstract create(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;
.end method

.method public identifyEmbeddedResources(Lorg/apache/poi/extractor/POIOLE2TextExtractor;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/extractor/POIOLE2TextExtractor;",
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/filesystem/Entry;",
            ">;",
            "Ljava/util/List<",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Error checking for Scratchpad embedded resources"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
