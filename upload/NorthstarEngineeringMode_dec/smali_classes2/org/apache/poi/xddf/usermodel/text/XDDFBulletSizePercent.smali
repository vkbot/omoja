.class public Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSizePercent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSize;


# instance fields
.field private percent:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;

.field private scale:Ljava/lang/Double;


# direct methods
.method public constructor <init>(D)V
    .locals 2

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSizePercent;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;Ljava/lang/Double;)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSizePercent;->setPercent(D)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;Ljava/lang/Double;)V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSizePercent;->percent:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;

    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    mul-double/2addr v0, p1

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSizePercent;->scale:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public getPercent()D
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSizePercent;->percent:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;->xgetVal()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextBulletSizePercent;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextBulletSizePercent;)I

    move-result v0

    int-to-double v0, v0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSizePercent;->scale:Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v2, v0

    return-wide v2
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSizePercent;->percent:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;

    return-object p0
.end method

.method public setPercent(D)V
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSizePercent;->percent:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;->setVal(Ljava/lang/String;)V

    return-void
.end method
