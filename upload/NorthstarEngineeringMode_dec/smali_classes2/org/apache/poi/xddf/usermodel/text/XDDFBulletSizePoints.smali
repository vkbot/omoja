.class public Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSizePoints;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSize;


# instance fields
.field private points:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;


# direct methods
.method public constructor <init>(D)V
    .locals 1

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;

    invoke-direct {p0, v0}, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSizePoints;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSizePoints;->setPoints(D)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSizePoints;->points:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;

    return-void
.end method


# virtual methods
.method public getPoints()D
    .locals 4

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSizePoints;->points:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;->getVal()I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSizePoints;->points:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;

    return-object p0
.end method

.method public setPoints(D)V
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSizePoints;->points:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toIntExact(J)I

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;->setVal(I)V

    return-void
.end method
