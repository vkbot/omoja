.class public abstract Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;
    }
.end annotation


# static fields
.field private static final LOGGER:La5/d;


# instance fields
.field private categoryAxis:Lorg/apache/poi/xddf/usermodel/chart/XDDFCategoryAxis;

.field protected parent:Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;

.field protected series:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;",
            ">;"
        }
    .end annotation
.end field

.field private valueAxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;->LOGGER:La5/d;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;->parent:Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;->series:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000()La5/d;
    .locals 1

    sget-object v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;->LOGGER:La5/d;

    return-object v0
.end method


# virtual methods
.method public abstract addSeries(Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;)Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource<",
            "*>;",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource<",
            "+",
            "Ljava/lang/Number;",
            ">;)",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;"
        }
    .end annotation
.end method

.method public defineAxes([Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->getVal()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;

    if-nez v4, :cond_0

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    instance-of v3, v4, Lorg/apache/poi/xddf/usermodel/chart/XDDFCategoryAxis;

    if-eqz v3, :cond_1

    check-cast v4, Lorg/apache/poi/xddf/usermodel/chart/XDDFCategoryAxis;

    iput-object v4, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;->categoryAxis:Lorg/apache/poi/xddf/usermodel/chart/XDDFCategoryAxis;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;->valueAxes:Ljava/util/List;

    return-void
.end method

.method public getCategoryAxis()Lorg/apache/poi/xddf/usermodel/chart/XDDFCategoryAxis;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;->categoryAxis:Lorg/apache/poi/xddf/usermodel/chart/XDDFCategoryAxis;

    return-object p0
.end method

.method public getSeries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "5.3"
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;->series:Ljava/util/List;

    .line 1
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getSeries(I)Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;->series:Ljava/util/List;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;

    return-object p0
.end method

.method public final getSeriesCount()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;->series:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getValueAxes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;->valueAxes:Ljava/util/List;

    return-object p0
.end method

.method public abstract removeCTSeries(I)V
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation
.end method

.method public final removeSeries(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;->series:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;->series:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;->removeCTSeries(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "removeSeries"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%s(%d): illegal index"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract setVaryColors(Ljava/lang/Boolean;)V
.end method
