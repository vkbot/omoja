.class final enum Lorg/apache/poi/ss/usermodel/TableStyleType$3;
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
    .locals 5

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getStyle()Lorg/apache/poi/ss/usermodel/TableStyleInfo;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/TableStyleInfo;->isShowColumnStripes()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/TableStyleInfo;->getStyle()Lorg/apache/poi/ss/usermodel/TableStyle;

    move-result-object v0

    sget-object v2, Lorg/apache/poi/ss/usermodel/TableStyleType;->firstColumnStripe:Lorg/apache/poi/ss/usermodel/TableStyleType;

    invoke-interface {v0, v2}, Lorg/apache/poi/ss/usermodel/TableStyle;->getStyle(Lorg/apache/poi/ss/usermodel/TableStyleType;)Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/TableStyleInfo;->getStyle()Lorg/apache/poi/ss/usermodel/TableStyle;

    move-result-object p0

    sget-object v2, Lorg/apache/poi/ss/usermodel/TableStyleType;->secondColumnStripe:Lorg/apache/poi/ss/usermodel/TableStyleType;

    invoke-interface {p0, v2}, Lorg/apache/poi/ss/usermodel/TableStyle;->getStyle(Lorg/apache/poi/ss/usermodel/TableStyleType;)Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;

    move-result-object p0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;->getStripeSize()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    if-nez p0, :cond_2

    move p0, v2

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;->getStripeSize()I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_1
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getStartColIndex()I

    move-result v3

    add-int v4, v3, v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result p2

    :goto_2
    if-gt v3, p2, :cond_4

    if-lt p2, v4, :cond_3

    add-int v3, v4, p0

    sub-int/2addr v3, v2

    if-gt p2, v3, :cond_3

    new-instance p0, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getStartRowIndex()I

    move-result p2

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getEndRowIndex()I

    move-result p1

    invoke-direct {p0, p2, p1, v4, v3}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    return-object p0

    :cond_3
    add-int v3, v4, p0

    add-int v4, v3, v0

    goto :goto_2

    :cond_4
    return-object v1
.end method
