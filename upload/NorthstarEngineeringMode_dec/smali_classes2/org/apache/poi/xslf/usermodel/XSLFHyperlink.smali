.class public Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/Hyperlink;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/sl/usermodel/Hyperlink<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# instance fields
.field private final _link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

.field private final _sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    return-void
.end method

.method private linkToExternal(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->isSetId()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->removeRelationship(Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->HYPERLINK:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addExternalRelationship(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->setId(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->isSetAction()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->unsetAction()V

    :cond_1
    return-void
.end method

.method private linkToRelativeSlide(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->isSetId()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->removeRelationship(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    const-string v1, ""

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->setId(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    const-string v0, "ppaction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "ppaction://hlinkshowjump?jump="

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->setAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public copy(Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;)V
    .locals 4

    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink$1;->$SwitchMap$org$apache$poi$common$usermodel$HyperlinkType:[I

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->getType()Lorg/apache/poi/common/usermodel/HyperlinkType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-virtual {v1, v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->SLIDE:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->addRelation(Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->setId(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    iget-object v1, p1, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->setAction(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->linkToRelativeSlide(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->linkToExternal(Ljava/lang/String;)V

    :cond_4
    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->setLabel(Ljava/lang/String;)V

    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_3
    :goto_1
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getAction()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getTooltip()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Lorg/apache/poi/common/usermodel/HyperlinkType;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    const-string v2, "ppaction://hlinksldjump"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "ppaction://hlinkshowjump"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->getAddress()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    const-string p0, "mailto:"

    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lorg/apache/poi/common/usermodel/HyperlinkType;->EMAIL:Lorg/apache/poi/common/usermodel/HyperlinkType;

    return-object p0

    :cond_3
    sget-object p0, Lorg/apache/poi/common/usermodel/HyperlinkType;->URL:Lorg/apache/poi/common/usermodel/HyperlinkType;

    return-object p0

    :cond_4
    :goto_1
    sget-object p0, Lorg/apache/poi/common/usermodel/HyperlinkType;->DOCUMENT:Lorg/apache/poi/common/usermodel/HyperlinkType;

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    return-object p0
.end method

.method public linkToEmail(Ljava/lang/String;)V
    .locals 1

    const-string v0, "mailto:"

    invoke-static {v0, p1}, Landroidx/activity/result/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->linkToExternal(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->setLabel(Ljava/lang/String;)V

    return-void
.end method

.method public linkToFirstSlide()V
    .locals 1

    const-string v0, "firstslide"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->linkToRelativeSlide(Ljava/lang/String;)V

    return-void
.end method

.method public linkToLastSlide()V
    .locals 1

    const-string v0, "lastslide"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->linkToRelativeSlide(Ljava/lang/String;)V

    return-void
.end method

.method public linkToNextSlide()V
    .locals 1

    const-string v0, "nextslide"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->linkToRelativeSlide(Ljava/lang/String;)V

    return-void
.end method

.method public linkToPreviousSlide()V
    .locals 1

    const-string v0, "previousslide"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->linkToRelativeSlide(Ljava/lang/String;)V

    return-void
.end method

.method public linkToSlide(Lorg/apache/poi/sl/usermodel/Slide;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Slide<",
            "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
            "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->isSetId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->removeRelationship(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->SLIDE:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->addRelation(Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->setId(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    const-string p1, "ppaction://hlinksldjump"

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->setAction(Ljava/lang/String;)V

    return-void
.end method

.method public linkToUrl(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->linkToExternal(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->setLabel(Ljava/lang/String;)V

    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->linkToUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->setTooltip(Ljava/lang/String;)V

    return-void
.end method
