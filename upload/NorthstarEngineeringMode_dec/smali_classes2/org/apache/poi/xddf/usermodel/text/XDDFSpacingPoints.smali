.class public Lorg/apache/poi/xddf/usermodel/text/XDDFSpacingPoints;
.super Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;
.source "SourceFile"


# instance fields
.field private points:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;


# direct methods
.method public constructor <init>(D)V
    .locals 2

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacingPoints;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;)V

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;->spacing:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    .line 2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->isSetSpcPct()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;->spacing:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    .line 3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->unsetSpcPct()V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;->spacing:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    iget-object v1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacingPoints;->points:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;

    .line 4
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->setSpcPts(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;)V

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacingPoints;->setPoints(D)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 6
    invoke-direct {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;)V

    iput-object p2, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacingPoints;->points:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;

    return-void
.end method


# virtual methods
.method public getPoints()D
    .locals 4

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacingPoints;->points:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;->getVal()I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getType()Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing$Kind;
    .locals 0

    sget-object p0, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing$Kind;->POINTS:Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing$Kind;

    return-object p0
.end method

.method public setPoints(D)V
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacingPoints;->points:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;->setVal(I)V

    return-void
.end method
