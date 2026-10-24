.class public final Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

.field private _indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    return-void
.end method

.method private ensureCTPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->getPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->addNewPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->getFillBackgroundColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->getFillBackgroundColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->getFillForegroundColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->getFillForegroundColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->getPatternType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->getPatternType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getCTFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    return-object p0
.end method

.method public getFillBackgroundColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->getPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->getBgColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-static {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->from(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p0

    return-object p0
.end method

.method public getFillForegroundColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->getPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->getFgColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-static {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->from(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p0

    return-object p0
.end method

.method public getPatternType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->getPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->getPatternType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public setFillBackgroundColor(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->ensureCTPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->isSetBgColor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->getBgColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->addNewBgColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p0

    :goto_0
    int-to-long v0, p1

    .line 3
    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    return-void
.end method

.method public setFillBackgroundColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->ensureCTPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object p0

    if-nez p1, :cond_0

    .line 5
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->unsetBgColor()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->setBgColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    :goto_0
    return-void
.end method

.method public setFillForegroundColor(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->ensureCTPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->isSetFgColor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->getFgColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->addNewFgColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p0

    :goto_0
    int-to-long v0, p1

    .line 3
    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    return-void
.end method

.method public setFillForegroundColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->ensureCTPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object p0

    if-nez p1, :cond_0

    .line 5
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->unsetFgColor()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->setFgColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    :goto_0
    return-void
.end method

.method public setPatternType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->ensureCTPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->setPatternType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;)V

    return-void
.end method
