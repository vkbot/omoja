.class public Lorg/apache/poi/xssf/usermodel/XSSFIconMultiStateFormatting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting;


# instance fields
.field _iconset:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFIconMultiStateFormatting;->_iconset:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;

    return-void
.end method


# virtual methods
.method public bridge synthetic createThreshold()Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFIconMultiStateFormatting;->createThreshold()Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;

    move-result-object p0

    return-object p0
.end method

.method public createThreshold()Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFIconMultiStateFormatting;->_iconset:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;->addNewCfvo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;)V

    return-object v0
.end method

.method public getIconSet()Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFIconMultiStateFormatting;->_iconset:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;->getIconSet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object p0

    invoke-virtual {p0}, Li5/h0;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->byName(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getThresholds()[Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFIconMultiStateFormatting;->getThresholds()[Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;

    move-result-object p0

    return-object p0
.end method

.method public getThresholds()[Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;
    .locals 4

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFIconMultiStateFormatting;->_iconset:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;

    .line 2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;->getCfvoArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    move-result-object p0

    .line 3
    array-length v0, p0

    new-array v0, v0, [Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 5
    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public isIconOnly()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFIconMultiStateFormatting;->_iconset:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;->isSetShowValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFIconMultiStateFormatting;->_iconset:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;->getShowValue()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isReversed()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFIconMultiStateFormatting;->_iconset:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;->isSetReverse()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFIconMultiStateFormatting;->_iconset:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;->getReverse()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setIconOnly(Z)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFIconMultiStateFormatting;->_iconset:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;->setShowValue(Z)V

    return-void
.end method

.method public setIconSet(Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;)V
    .locals 0

    iget-object p1, p1, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->name:Ljava/lang/String;

    invoke-static {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFIconMultiStateFormatting;->_iconset:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;->setIconSet(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;)V

    return-void
.end method

.method public setReversed(Z)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFIconMultiStateFormatting;->_iconset:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;->setReverse(Z)V

    return-void
.end method

.method public setThresholds([Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold;)V
    .locals 3

    array-length v0, p1

    new-array v0, v0, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;->getCTCfvo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFIconMultiStateFormatting;->_iconset:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;->setCfvoArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;)V

    return-void
.end method
