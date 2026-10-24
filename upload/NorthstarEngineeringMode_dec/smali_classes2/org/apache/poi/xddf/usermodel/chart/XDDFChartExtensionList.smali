.class public Lorg/apache/poi/xddf/usermodel/chart/XDDFChartExtensionList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private list:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;

    invoke-direct {p0, v0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartExtensionList;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartExtensionList;->list:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;

    return-void
.end method


# virtual methods
.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartExtensionList;->list:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;

    return-object p0
.end method
