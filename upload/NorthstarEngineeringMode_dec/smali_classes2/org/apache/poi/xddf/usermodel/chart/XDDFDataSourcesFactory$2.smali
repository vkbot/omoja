.class final Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$2;
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
.field private final category:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;

.field final synthetic val$categoryDS:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$2;->val$categoryDS:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;->getStrRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;->getStrCache()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$2;->category:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;

    return-void
.end method


# virtual methods
.method public getDataRangeReference()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$2;->val$categoryDS:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;->getStrRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;->getF()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFormatCode()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getPointAt(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$2;->getPointAt(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPointAt(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$2;->category:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;

    .line 2
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;->getPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrVal;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrVal;->getV()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPointCount()I
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$2;->category:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;->getPtCount()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

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
