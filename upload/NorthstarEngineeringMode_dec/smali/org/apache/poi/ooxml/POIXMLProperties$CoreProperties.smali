.class public Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ooxml/POIXMLProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoreProperties"
.end annotation


# instance fields
.field private final part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;


# direct methods
.method private constructor <init>(Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;Lorg/apache/poi/ooxml/POIXMLProperties$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;-><init>(Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;)V

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getCategoryProperty()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getContentStatus()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getContentStatusProperty()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getContentTypeProperty()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getCreatedProperty()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    return-object p0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getCreatorProperty()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getDescriptionProperty()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getIdentifierProperty()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getKeywordsProperty()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getLastModifiedByUser()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getLastModifiedByProperty()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getLastPrinted()Ljava/util/Date;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getLastPrintedProperty()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    return-object p0
.end method

.method public getModified()Ljava/util/Date;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getModifiedProperty()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    return-object p0
.end method

.method public getRevision()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getRevisionProperty()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getSubjectProperty()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getTitleProperty()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getUnderlyingProperties()Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getVersionProperty()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setCategoryProperty(Ljava/lang/String;)V

    return-void
.end method

.method public setContentStatus(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setContentStatusProperty(Ljava/lang/String;)V

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setContentTypeProperty(Ljava/lang/String;)V

    return-void
.end method

.method public setCreated(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setCreatedProperty(Ljava/lang/String;)V

    return-void
.end method

.method public setCreated(Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setCreatedProperty(Ljava/util/Optional;)V

    return-void
.end method

.method public setCreator(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setCreatorProperty(Ljava/lang/String;)V

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setDescriptionProperty(Ljava/lang/String;)V

    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setIdentifierProperty(Ljava/lang/String;)V

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setKeywordsProperty(Ljava/lang/String;)V

    return-void
.end method

.method public setLastModifiedByUser(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setLastModifiedByProperty(Ljava/lang/String;)V

    return-void
.end method

.method public setLastPrinted(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setLastPrintedProperty(Ljava/lang/String;)V

    return-void
.end method

.method public setLastPrinted(Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setLastPrintedProperty(Ljava/util/Optional;)V

    return-void
.end method

.method public setModified(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setModifiedProperty(Ljava/lang/String;)V

    return-void
.end method

.method public setModified(Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setModifiedProperty(Ljava/util/Optional;)V

    return-void
.end method

.method public setRevision(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setRevisionProperty(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setSubjectProperty(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setSubjectProperty(Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setTitleProperty(Ljava/lang/String;)V

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->part:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setVersionProperty(Ljava/lang/String;)V

    return-void
.end method
