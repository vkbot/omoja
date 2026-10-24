.class public Lorg/apache/poi/xddf/usermodel/text/XDDFSpacingPercent;
.super Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;
.source "SourceFile"


# instance fields
.field private percent:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;

.field private scale:Ljava/lang/Double;


# direct methods
.method public constructor <init>(D)V
    .locals 3

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacingPercent;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;Ljava/lang/Double;)V

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;->spacing:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    .line 2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->isSetSpcPts()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;->spacing:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    .line 3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->unsetSpcPts()V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;->spacing:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    iget-object v1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacingPercent;->percent:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;

    .line 4
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->setSpcPct(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;)V

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacingPercent;->setPercent(D)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;Ljava/lang/Double;)V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 6
    invoke-direct {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;)V

    iput-object p2, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacingPercent;->percent:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;

    const-wide p1, 0x3f50624dd2f1a9fcL    # 0.001

    if-nez p3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    mul-double/2addr p1, v0

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacingPercent;->scale:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public getPercent()D
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacingPercent;->percent:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;->xgetVal()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextSpacingPercentOrPercentString;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextSpacingPercentOrPercentString;)I

    move-result v0

    int-to-double v0, v0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacingPercent;->scale:Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v2, v0

    return-wide v2
.end method

.method public getType()Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing$Kind;
    .locals 0

    sget-object p0, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing$Kind;->PERCENT:Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing$Kind;

    return-object p0
.end method

.method public setPercent(D)V
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacingPercent;->percent:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;->setVal(Ljava/lang/Object;)V

    return-void
.end method
