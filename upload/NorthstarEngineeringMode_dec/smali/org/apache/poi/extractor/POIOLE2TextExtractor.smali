.class public interface abstract Lorg/apache/poi/extractor/POIOLE2TextExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/extractor/POITextExtractor;


# virtual methods
.method public getDocSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;
    .locals 0

    invoke-interface {p0}, Lorg/apache/poi/extractor/POIOLE2TextExtractor;->getDocument()Lorg/apache/poi/POIDocument;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDocument()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p0}, Lorg/apache/poi/extractor/POIOLE2TextExtractor;->getDocument()Lorg/apache/poi/POIDocument;

    move-result-object p0

    return-object p0
.end method

.method public abstract getDocument()Lorg/apache/poi/POIDocument;
.end method

.method public getMetadataTextExtractor()Lorg/apache/poi/extractor/POITextExtractor;
    .locals 1

    new-instance v0, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;

    invoke-direct {v0, p0}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;-><init>(Lorg/apache/poi/extractor/POIOLE2TextExtractor;)V

    return-object v0
.end method

.method public getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .locals 0

    invoke-interface {p0}, Lorg/apache/poi/extractor/POIOLE2TextExtractor;->getDocument()Lorg/apache/poi/POIDocument;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p0

    return-object p0
.end method

.method public getSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;
    .locals 0

    invoke-interface {p0}, Lorg/apache/poi/extractor/POIOLE2TextExtractor;->getDocument()Lorg/apache/poi/POIDocument;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;

    move-result-object p0

    return-object p0
.end method
