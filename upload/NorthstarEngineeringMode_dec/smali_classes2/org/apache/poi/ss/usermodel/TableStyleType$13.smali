.class final enum Lorg/apache/poi/ss/usermodel/TableStyleType$13;
.super Lorg/apache/poi/ss/usermodel/TableStyleType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/usermodel/TableStyleType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/usermodel/TableStyleType;-><init>(Ljava/lang/String;ILorg/apache/poi/ss/usermodel/TableStyleType$1;)V

    return-void
.end method


# virtual methods
.method public getRange(Lorg/apache/poi/ss/usermodel/Table;Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/ss/util/CellRangeAddressBase;
    .locals 2

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getTotalsRowCount()I

    move-result p0

    const/4 p2, 0x1

    if-ge p0, p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getEndRowIndex()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getTotalsRowCount()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getEndRowIndex()I

    move-result p2

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getEndColIndex()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getEndColIndex()I

    move-result p1

    invoke-direct {p0, v0, p2, v1, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    return-object p0
.end method
