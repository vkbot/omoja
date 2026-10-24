.class public Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private guide:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;->guide:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;

    return-void
.end method


# virtual methods
.method public getFormula()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;->guide:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;->getFmla()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;->guide:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;->guide:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;

    return-object p0
.end method

.method public setFormula(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;->guide:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;->setFmla(Ljava/lang/String;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;->guide:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;->setName(Ljava/lang/String;)V

    return-void
.end method
