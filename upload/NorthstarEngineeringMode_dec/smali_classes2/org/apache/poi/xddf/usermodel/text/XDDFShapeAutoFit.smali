.class public Lorg/apache/poi/xddf/usermodel/text/XDDFShapeAutoFit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xddf/usermodel/text/XDDFAutoFit;


# instance fields
.field private autofit:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextShapeAutofit;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextShapeAutofit;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextShapeAutofit;

    invoke-direct {p0, v0}, Lorg/apache/poi/xddf/usermodel/text/XDDFShapeAutoFit;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextShapeAutofit;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextShapeAutofit;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFShapeAutoFit;->autofit:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextShapeAutofit;

    return-void
.end method


# virtual methods
.method public getFontScale()I
    .locals 0

    const p0, 0x186a0

    return p0
.end method

.method public getLineSpaceReduction()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextShapeAutofit;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFShapeAutoFit;->autofit:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextShapeAutofit;

    return-object p0
.end method
