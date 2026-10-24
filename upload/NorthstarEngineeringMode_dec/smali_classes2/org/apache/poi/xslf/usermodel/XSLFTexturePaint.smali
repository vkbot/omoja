.class public Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final blip:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

.field private final blipFill:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

.field private final parentPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

.field private final phClr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

.field private final shape:Lorg/apache/poi/xslf/usermodel/XSLFShape;

.field private final sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

.field private final theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFShape;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->shape:Lorg/apache/poi/xslf/usermodel/XSLFShape;

    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->blipFill:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    iput-object p3, p0, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->parentPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->blip:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    iput-object p4, p0, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->phClr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    iput-object p5, p0, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    iput-object p6, p0, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    return-void
.end method

.method private getPart()Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->blip:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->getEmbed()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->shape:Lorg/apache/poi/xslf/usermodel/XSLFShape;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getParent()Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->shape:Lorg/apache/poi/xslf/usermodel/XSLFShape;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getParent()Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/poi/xslf/usermodel/XSLFDiagram$XSLFDiagramGroupShape;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->shape:Lorg/apache/poi/xslf/usermodel/XSLFShape;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getParent()Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFDiagram$XSLFDiagramGroupShape;

    invoke-virtual {v1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFDiagram$XSLFDiagramGroupShape;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->parentPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v1, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->parentPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {p0, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    return-object p0
.end method

.method private static getRectVal(Ljava/util/function/Supplier;Ljava/util/function/Supplier;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;",
            ">;)I"
        }
    .end annotation

    .line 6
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static getRectVal(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;)Lorg/apache/poi/sl/usermodel/Insets2D;
    .locals 12

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v9, Lorg/apache/poi/sl/usermodel/Insets2D;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/m;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;I)V

    new-instance v2, Lorg/apache/poi/xslf/usermodel/n;

    invoke-direct {v2, p0, v1}, Lorg/apache/poi/xslf/usermodel/n;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;I)V

    .line 2
    invoke-static {v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->getRectVal(Ljava/util/function/Supplier;Ljava/util/function/Supplier;)I

    move-result v0

    int-to-double v2, v0

    new-instance v0, Lorg/apache/poi/xslf/usermodel/o;

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xslf/usermodel/o;-><init>(ILorg/apache/xmlbeans/XmlObject;)V

    new-instance v1, Lorg/apache/poi/xslf/usermodel/m;

    const/4 v4, 0x1

    invoke-direct {v1, p0, v4}, Lorg/apache/poi/xslf/usermodel/m;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;I)V

    .line 3
    invoke-static {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->getRectVal(Ljava/util/function/Supplier;Ljava/util/function/Supplier;)I

    move-result v0

    int-to-double v5, v0

    new-instance v0, Lorg/apache/poi/xslf/usermodel/n;

    invoke-direct {v0, p0, v4}, Lorg/apache/poi/xslf/usermodel/n;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;I)V

    new-instance v1, Lorg/apache/poi/xslf/usermodel/o;

    invoke-direct {v1, v4, p0}, Lorg/apache/poi/xslf/usermodel/o;-><init>(ILorg/apache/xmlbeans/XmlObject;)V

    .line 4
    invoke-static {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->getRectVal(Ljava/util/function/Supplier;Ljava/util/function/Supplier;)I

    move-result v0

    int-to-double v7, v0

    new-instance v0, Lorg/apache/poi/xslf/usermodel/m;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/m;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;I)V

    new-instance v4, Lorg/apache/poi/xslf/usermodel/n;

    invoke-direct {v4, p0, v1}, Lorg/apache/poi/xslf/usermodel/n;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;I)V

    .line 5
    invoke-static {v0, v4}, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->getRectVal(Ljava/util/function/Supplier;Ljava/util/function/Supplier;)I

    move-result p0

    int-to-double v10, p0

    move-object v0, v9

    move-wide v1, v2

    move-wide v3, v5

    move-wide v5, v7

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/sl/usermodel/Insets2D;-><init>(DDDD)V

    move-object p0, v9

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getAlignment()Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->blipFill:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getTile()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->isSetAlgn()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->getAlgn()Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;

    move-result-object p0

    invoke-virtual {p0}, Li5/h0;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;->fromOoxmlId(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->blip:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->sizeOfAlphaModFixArray()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->blip:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->getAlphaModFixArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaModulateFixedEffect;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaModulateFixedEffect;->xgetAmt()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositivePercentage;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositivePercentage;)I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, 0x186a0

    :goto_0
    return p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->blip:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->isSetEmbed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->blip:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->getEmbed()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->getPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to read package part"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDuoTone()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/usermodel/ColorStyle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->blip:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->sizeOfDuotoneArray()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->blip:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->getDuotoneArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDuotoneEffect;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDuotoneEffect;->getSchemeClrArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v1

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    new-instance v5, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    iget-object v6, p0, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    iget-object v7, p0, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->phClr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    iget-object v8, p0, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-direct {v5, v4, v6, v7, v8}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    invoke-virtual {v5}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getColorStyle()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getFlipMode()Lorg/apache/poi/sl/usermodel/PaintStyle$FlipMode;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->blipFill:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getTile()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->getFlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTileFlipMode$Enum;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->getFlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTileFlipMode$Enum;

    move-result-object p0

    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    sget-object p0, Lorg/apache/poi/sl/usermodel/PaintStyle$FlipMode;->NONE:Lorg/apache/poi/sl/usermodel/PaintStyle$FlipMode;

    return-object p0

    :cond_2
    sget-object p0, Lorg/apache/poi/sl/usermodel/PaintStyle$FlipMode;->XY:Lorg/apache/poi/sl/usermodel/PaintStyle$FlipMode;

    return-object p0

    :cond_3
    sget-object p0, Lorg/apache/poi/sl/usermodel/PaintStyle$FlipMode;->Y:Lorg/apache/poi/sl/usermodel/PaintStyle$FlipMode;

    return-object p0

    :cond_4
    sget-object p0, Lorg/apache/poi/sl/usermodel/PaintStyle$FlipMode;->X:Lorg/apache/poi/sl/usermodel/PaintStyle$FlipMode;

    return-object p0
.end method

.method public getImageData()Ljava/io/InputStream;
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->getPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to read image data"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getInsets()Lorg/apache/poi/sl/usermodel/Insets2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->blipFill:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getSrcRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->getRectVal(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;)Lorg/apache/poi/sl/usermodel/Insets2D;

    move-result-object p0

    return-object p0
.end method

.method public getOffset()Ljava/awt/geom/Point2D;
    .locals 6

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->blipFill:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getTile()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/awt/geom/Point2D$Double;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->isSetTx()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->xgetTx()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v4

    goto :goto_0

    :cond_1
    move-wide v4, v2

    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->isSetTy()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->xgetTy()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v2

    :cond_2
    invoke-direct {v0, v4, v5, v2, v3}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method public getScale()Ljava/awt/geom/Dimension2D;
    .locals 8

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->blipFill:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getTile()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/apache/poi/util/Dimension2DDouble;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->isSetSx()Z

    move-result v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->xgetSx()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)I

    move-result v1

    int-to-double v6, v1

    div-double/2addr v6, v4

    goto :goto_0

    :cond_1
    move-wide v6, v2

    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->isSetSy()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->xgetSy()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)I

    move-result p0

    int-to-double v1, p0

    div-double v2, v1, v4

    :cond_2
    invoke-direct {v0, v6, v7, v2, v3}, Lorg/apache/poi/util/Dimension2DDouble;-><init>(DD)V

    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method public getShape()Lorg/apache/poi/sl/usermodel/Shape;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->shape:Lorg/apache/poi/xslf/usermodel/XSLFShape;

    return-object p0
.end method

.method public getStretch()Lorg/apache/poi/sl/usermodel/Insets2D;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->blipFill:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->isSetStretch()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->blipFill:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getStretch()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;->getFillRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->getRectVal(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;)Lorg/apache/poi/sl/usermodel/Insets2D;

    move-result-object p0

    return-object p0
.end method

.method public isRotatedWithShape()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->blipFill:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->isSetRotWithShape()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;->blipFill:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getRotWithShape()Z

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
