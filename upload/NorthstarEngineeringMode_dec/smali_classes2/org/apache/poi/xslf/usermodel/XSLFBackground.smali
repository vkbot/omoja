.class public Lorg/apache/poi/xslf/usermodel/XSLFBackground;
.super Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/Background;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;",
        "Lorg/apache/poi/sl/usermodel/Background<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-void
.end method


# virtual methods
.method public getAnchor()Ljava/awt/geom/Rectangle2D;
    .locals 10

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSlideShow()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getPageSize()Ljava/awt/Dimension;

    move-result-object p0

    new-instance v9, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {p0}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v5

    invoke-virtual {p0}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v7

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v9
.end method

.method public getBgPr(Z)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;->isSetBgPr()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;->isSetBgRef()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;->unsetBgRef()V

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;->addNewBgPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;->getBgPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    move-result-object p0

    return-object p0
.end method

.method public getShapeProperties()Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;->isSetBgPr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;->getBgPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;->isSetBgRef()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;->getBgRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getXfrm(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public setFillColor(Ljava/awt/Color;)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFBackground;->getBgPr(Z)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->isSetBlipFill()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->unsetBlipFill()V

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->isSetGradFill()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->unsetGradFill()V

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->isSetGrpFill()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->unsetGrpFill()V

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->isSetPattFill()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->unsetPattFill()V

    :cond_3
    if-nez p1, :cond_5

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->isSetSolidFill()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->unsetSolidFill()V

    :cond_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->isSetNoFill()Z

    move-result p0

    if-nez p0, :cond_8

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->isSetNoFill()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->unsetNoFill()V

    :cond_6
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->isSetSolidFill()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v0

    :goto_0
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object p0

    invoke-direct {v1, v0, v2, v3, p0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    invoke-virtual {v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->setColor(Ljava/awt/Color;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V
    .locals 0

    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string p1, "Can\'t set a placeholder for a background"

    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
