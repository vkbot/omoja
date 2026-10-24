.class public abstract Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Series"
.end annotation


# instance fields
.field protected categoryData:Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource<",
            "*>;"
        }
    .end annotation
.end field

.field protected valuesData:Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource<",
            "+",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource<",
            "*>;",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->replaceData(Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;)V

    return-void
.end method

.method private retrieveNumCache(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource<",
            "*>;)",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->isReference()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;->isSetNumRef()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;->getNumRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;->addNewNumRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;

    move-result-object p0

    .line 5
    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;->isSetNumCache()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;->getNumCache()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    move-result-object v0

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;->addNewNumCache()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    move-result-object v0

    .line 8
    :goto_1
    invoke-interface {p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getDataRangeReference()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;->setF(Ljava/lang/String;)V

    .line 9
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;->isSetNumLit()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 10
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;->unsetNumLit()V

    goto :goto_4

    .line 11
    :cond_2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;->isSetNumLit()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 12
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;->getNumLit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    move-result-object p0

    :goto_2
    move-object v0, p0

    goto :goto_3

    .line 13
    :cond_3
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;->addNewNumLit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    move-result-object p0

    goto :goto_2

    .line 14
    :goto_3
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;->isSetNumRef()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 15
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;->unsetNumRef()V

    :cond_4
    :goto_4
    return-object v0
.end method

.method private retrieveStrCache(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource<",
            "*>;)",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;"
        }
    .end annotation

    invoke-interface {p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->isReference()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;->isSetStrRef()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;->getStrRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;->addNewStrRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;->isSetStrCache()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;->getStrCache()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;->addNewStrCache()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;

    move-result-object v0

    :goto_1
    invoke-interface {p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getDataRangeReference()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;->setF(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;->isSetStrLit()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;->unsetStrLit()V

    goto :goto_4

    :cond_2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;->isSetStrLit()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;->getStrLit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;

    move-result-object p0

    :goto_2
    move-object v0, p0

    goto :goto_3

    :cond_3
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;->addNewStrLit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;

    move-result-object p0

    goto :goto_2

    :goto_3
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;->isSetStrRef()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;->unsetStrRef()V

    :cond_4
    :goto_4
    return-object v0
.end method


# virtual methods
.method public clearDataPoint(J)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->getDPtList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;->getIdx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->getVal()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public abstract getAxDS()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;
.end method

.method public getCategoryData()Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->categoryData:Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;

    return-object p0
.end method

.method public abstract getDPtList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;",
            ">;"
        }
    .end annotation
.end method

.method public getDataPoint(J)Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->getDPtList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;->getIdx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->getVal()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    new-instance p1, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-direct {p1, p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;)V

    return-object p1

    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;->getIdx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->getVal()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-lez v1, :cond_1

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;->addNewIdx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    new-instance p1, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;

    invoke-direct {p1, p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;)V

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;->addNewIdx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    new-instance p1, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;

    invoke-direct {p1, p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;)V

    return-object p1
.end method

.method public abstract getNumDS()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;
.end method

.method public abstract getSeriesText()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;
.end method

.method public abstract getShapeProperties()Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;
.end method

.method public getValuesData()Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource<",
            "+",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->valuesData:Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;

    return-object p0
.end method

.method public plot()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->categoryData:Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->isNumeric()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->getAxDS()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->categoryData:Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->retrieveNumCache(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->categoryData:Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;

    invoke-interface {v1, v0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->fillNumericalCache(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->getAxDS()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->categoryData:Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->retrieveStrCache(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->categoryData:Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;

    invoke-interface {v1, v0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->fillStringCache(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->valuesData:Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->getNumDS()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->valuesData:Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->retrieveNumCache(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->valuesData:Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;

    invoke-interface {p0, v0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->fillNumericalCache(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;)V

    :cond_2
    return-void
.end method

.method public replaceData(Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource<",
            "*>;",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->categoryData:Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getPointCount()I

    move-result v0

    invoke-interface {p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getPointCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;->access$000()La5/d;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getPointCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Category and values must have the same point count, but had {} categories and {} values."

    invoke-interface {v1, v0, v3, v2}, La5/d;->n(Ljava/lang/Object;Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->categoryData:Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;

    iput-object p2, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->valuesData:Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;

    return-void
.end method

.method public retrieveNumCache(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource<",
            "*>;)",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;"
        }
    .end annotation

    .line 16
    invoke-interface {p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->isReference()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 17
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;->isSetNumRef()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 18
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;->getNumRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;

    move-result-object p0

    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;->addNewNumRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;

    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;->isSetNumCache()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;->getNumCache()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    move-result-object v0

    goto :goto_1

    .line 22
    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;->addNewNumCache()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    move-result-object v0

    .line 23
    :goto_1
    invoke-interface {p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getDataRangeReference()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;->setF(Ljava/lang/String;)V

    .line 24
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;->isSetNumLit()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 25
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;->unsetNumLit()V

    goto :goto_4

    .line 26
    :cond_2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;->isSetNumLit()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 27
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;->getNumLit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    move-result-object p0

    :goto_2
    move-object v0, p0

    goto :goto_3

    .line 28
    :cond_3
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;->addNewNumLit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    move-result-object p0

    goto :goto_2

    .line 29
    :goto_3
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;->isSetNumRef()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 30
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;->unsetNumRef()V

    :cond_4
    :goto_4
    return-object v0
.end method

.method public setFillProperties(Lorg/apache/poi/xddf/usermodel/XDDFFillProperties;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->getShapeProperties()Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;

    invoke-direct {v0}, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;-><init>()V

    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->setFillProperties(Lorg/apache/poi/xddf/usermodel/XDDFFillProperties;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->setShapeProperties(Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;)V

    return-void
.end method

.method public abstract setIndex(J)V
.end method

.method public setLineProperties(Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->getShapeProperties()Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;

    invoke-direct {v0}, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;-><init>()V

    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->setLineProperties(Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->setShapeProperties(Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;)V

    return-void
.end method

.method public abstract setOrder(J)V
.end method

.method public abstract setShapeProperties(Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;)V
.end method

.method public abstract setShowLeaderLines(Z)V
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->setTitle(Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference;)V
    .locals 2

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->getSeriesText()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;->setV(Ljava/lang/String;)V

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->getSeriesText()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;->isSetStrRef()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->getSeriesText()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;->getStrRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->getSeriesText()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;->addNewStrRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;

    move-result-object p0

    .line 6
    :goto_0
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;->setF(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 7
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;->isSetStrCache()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;->getStrCache()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;

    move-result-object p0

    goto :goto_1

    .line 9
    :cond_2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;->addNewStrCache()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;

    move-result-object p0

    .line 10
    :goto_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;->sizeOfPtArray()I

    move-result p2

    const/4 v0, 0x1

    if-ge p2, v0, :cond_3

    .line 11
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;->addNewPtCount()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p2

    const-wide/16 v0, 0x1

    invoke-interface {p2, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    .line 12
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrVal;

    move-result-object p2

    const-wide/16 v0, 0x0

    invoke-interface {p2, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrVal;->setIdx(J)V

    :cond_3
    const/4 p2, 0x0

    .line 13
    invoke-interface {p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;->getPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrVal;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrVal;->setV(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method
