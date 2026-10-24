.class public Lorg/apache/poi/xslf/draw/geom/XSLFGuide;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/GuideIf;


# instance fields
.field final guide:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/draw/geom/XSLFGuide;->guide:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;

    return-void
.end method


# virtual methods
.method public getFmla()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFGuide;->guide:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;->getFmla()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFGuide;->guide:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setFmla(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFGuide;->guide:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;->setFmla(Ljava/lang/String;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFGuide;->guide:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;->setName(Ljava/lang/String;)V

    return-void
.end method
