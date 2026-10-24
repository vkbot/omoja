.class public Lorg/apache/poi/xddf/usermodel/XDDFPoint2D;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private point:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

.field private x:J

.field private y:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFPoint2D;->x:J

    iput-wide p3, p0, Lorg/apache/poi/xddf/usermodel/XDDFPoint2D;->y:J

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFPoint2D;->point:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    return-void
.end method


# virtual methods
.method public getX()J
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPoint2D;->point:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPoint2D;->x:J

    return-wide v0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->xgetX()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getY()J
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPoint2D;->point:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPoint2D;->y:J

    return-wide v0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->xgetY()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;)J

    move-result-wide v0

    return-wide v0
.end method
