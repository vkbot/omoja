.class abstract Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractArrayDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractArrayDataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private col:I

.field private final dataRange:Ljava/lang/String;

.field private final elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractArrayDataSource;->col:I

    .line 2
    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractArrayDataSource;->elements:[Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractArrayDataSource;->dataRange:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractArrayDataSource;->col:I

    .line 4
    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractArrayDataSource;->elements:[Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractArrayDataSource;->dataRange:Ljava/lang/String;

    iput p3, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractArrayDataSource;->col:I

    return-void
.end method


# virtual methods
.method public getColIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractArrayDataSource;->col:I

    return p0
.end method

.method public getDataRangeReference()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractArrayDataSource;->dataRange:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Literal data source can not be expressed by reference."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPointAt(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractArrayDataSource;->elements:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getPointCount()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractArrayDataSource;->elements:[Ljava/lang/Object;

    array-length p0, p0

    return p0
.end method

.method public isCellRange()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNumeric()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractArrayDataSource;->elements:[Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public isReference()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractArrayDataSource;->dataRange:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
