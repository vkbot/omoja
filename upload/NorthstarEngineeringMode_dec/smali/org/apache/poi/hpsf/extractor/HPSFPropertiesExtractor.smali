.class public Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/extractor/POIOLE2TextExtractor;


# instance fields
.field private doCloseFilesystem:Z

.field private final document:Lorg/apache/poi/POIDocument;


# direct methods
.method public constructor <init>(Lorg/apache/poi/POIDocument;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->doCloseFilesystem:Z

    iput-object p1, p0, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->document:Lorg/apache/poi/POIDocument;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/extractor/POIOLE2TextExtractor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->doCloseFilesystem:Z

    .line 2
    invoke-interface {p1}, Lorg/apache/poi/extractor/POIOLE2TextExtractor;->getDocument()Lorg/apache/poi/POIDocument;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->document:Lorg/apache/poi/POIDocument;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->doCloseFilesystem:Z

    .line 5
    new-instance v0, Lorg/apache/poi/hpsf/HPSFPropertiesOnlyDocument;

    invoke-direct {v0, p1}, Lorg/apache/poi/hpsf/HPSFPropertiesOnlyDocument;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->document:Lorg/apache/poi/POIDocument;

    return-void
.end method

.method private static getPropertiesText(Lorg/apache/poi/hpsf/PropertySet;)Ljava/lang/String;
    .locals 8

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertySetIDMap()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    invoke-virtual {v4}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    if-nez v1, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_2
    invoke-virtual {v4}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->getPropertyValueText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPropertyValueText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "(not set)"

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic getDocument()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->getDocument()Lorg/apache/poi/POIDocument;

    move-result-object p0

    return-object p0
.end method

.method public getDocument()Lorg/apache/poi/POIDocument;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->document:Lorg/apache/poi/POIDocument;

    return-object p0
.end method

.method public getDocumentSummaryInformationText()Ljava/lang/String;
    .locals 4

    iget-object p0, p0, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->document:Lorg/apache/poi/POIDocument;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->getPropertiesText(Lorg/apache/poi/hpsf/PropertySet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getCustomProperties()Lorg/apache/poi/hpsf/CustomProperties;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/CustomProperties;->nameSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/apache/poi/hpsf/CustomProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->getPropertyValueText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getFilesystem()Ljava/io/Closeable;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->getFilesystem()Lorg/apache/poi/POIDocument;

    move-result-object p0

    return-object p0
.end method

.method public getFilesystem()Lorg/apache/poi/POIDocument;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->document:Lorg/apache/poi/POIDocument;

    return-object p0
.end method

.method public getMetadataTextExtractor()Lorg/apache/poi/extractor/POITextExtractor;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You already have the Metadata Text Extractor, not recursing!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSummaryInformationText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->document:Lorg/apache/poi/POIDocument;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->getPropertiesText(Lorg/apache/poi/hpsf/PropertySet;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->getSummaryInformationText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->getDocumentSummaryInformationText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public isCloseFilesystem()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->doCloseFilesystem:Z

    return p0
.end method

.method public setCloseFilesystem(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->doCloseFilesystem:Z

    return-void
.end method
