.class public Lorg/apache/poi/xddf/usermodel/XDDFPositiveSize2D;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private size:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

.field private x:J

.field private y:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFPositiveSize2D;->x:J

    iput-wide p3, p0, Lorg/apache/poi/xddf/usermodel/XDDFPositiveSize2D;->y:J

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x and y must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFPositiveSize2D;->size:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    return-void
.end method


# virtual methods
.method public getX()J
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPositiveSize2D;->size:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPositiveSize2D;->x:J

    return-wide v0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->getCx()J

    move-result-wide v0

    return-wide v0
.end method

.method public getY()J
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPositiveSize2D;->size:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPositiveSize2D;->y:J

    return-wide v0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->getCy()J

    move-result-wide v0

    return-wide v0
.end method
