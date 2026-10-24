.class final Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xddf/usermodel/chart/XDDFCategoryDataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory;->fromDataSource(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;)Lorg/apache/poi/xddf/usermodel/chart/XDDFCategoryDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field private final category:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

.field private final formatCode:Ljava/lang/String;

.field final synthetic val$categoryDS:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$1;->val$categoryDS:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;->getNumRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;->getNumCache()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$1;->category:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;->isSetFormatCode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;->getFormatCode()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$1;->formatCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDataRangeReference()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$1;->val$categoryDS:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;->getNumRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;->getF()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFormatCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$1;->formatCode:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic getPointAt(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$1;->getPointAt(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPointAt(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$1;->category:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    .line 2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;->sizeOfPtArray()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$1;->category:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    .line 3
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;->getPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumVal;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumVal;->getV()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot access 0-based index "

    const-string v2, " in point-array with "

    .line 5
    invoke-static {v1, p1, v2}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$1;->category:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    .line 6
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;->sizeOfPtArray()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " items"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPointCount()I
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$1;->category:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;->getPtCount()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->getVal()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public isCellRange()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isNumeric()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
