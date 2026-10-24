.class public Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;


# static fields
.field private static final filterTypeLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;",
            "Lorg/apache/poi/ss/usermodel/ConditionFilterType;",
            ">;"
        }
    .end annotation
.end field

.field private static final typeLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;",
            "Lorg/apache/poi/ss/usermodel/ConditionType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final _cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

.field private final _sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->typeLookup:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->filterTypeLookup:Ljava/util/Map;

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->CELL_IS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v3, Lorg/apache/poi/ss/usermodel/ConditionType;->CELL_VALUE_IS:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->EXPRESSION:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v3, Lorg/apache/poi/ss/usermodel/ConditionType;->FORMULA:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->COLOR_SCALE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v3, Lorg/apache/poi/ss/usermodel/ConditionType;->COLOR_SCALE:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->DATA_BAR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v3, Lorg/apache/poi/ss/usermodel/ConditionType;->DATA_BAR:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->ICON_SET:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v3, Lorg/apache/poi/ss/usermodel/ConditionType;->ICON_SET:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->TOP_10:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v3, Lorg/apache/poi/ss/usermodel/ConditionType;->FILTER:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->UNIQUE_VALUES:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->DUPLICATE_VALUES:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->CONTAINS_TEXT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->NOT_CONTAINS_TEXT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    invoke-interface {v0, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->BEGINS_WITH:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    invoke-interface {v0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->ENDS_WITH:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    invoke-interface {v0, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->CONTAINS_BLANKS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    invoke-interface {v0, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->NOT_CONTAINS_BLANKS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->CONTAINS_ERRORS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    invoke-interface {v0, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v13, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->NOT_CONTAINS_ERRORS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    invoke-interface {v0, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->TIME_PERIOD:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    invoke-interface {v0, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v15, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->ABOVE_AVERAGE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->TOP_10:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->UNIQUE_VALUES:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->DUPLICATE_VALUES:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->CONTAINS_TEXT:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->NOT_CONTAINS_TEXT:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->BEGINS_WITH:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->ENDS_WITH:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    invoke-interface {v1, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->CONTAINS_BLANKS:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    invoke-interface {v1, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->NOT_CONTAINS_BLANKS:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    invoke-interface {v1, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->CONTAINS_ERRORS:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->NOT_CONTAINS_ERRORS:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    invoke-interface {v1, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->TIME_PERIOD:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    invoke-interface {v1, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->ABOVE_AVERAGE:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    invoke-interface {v1, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    return-void
.end method


# virtual methods
.method public bridge synthetic createBorderFormatting()Lorg/apache/poi/ss/usermodel/BorderFormatting;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->createBorderFormatting()Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;

    move-result-object p0

    return-object p0
.end method

.method public createBorderFormatting()Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;
    .locals 2

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getDxf(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->isSetBorder()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->addNewBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->getBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v0

    .line 6
    :goto_0
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-object v1
.end method

.method public createColorScaleFormatting()Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->isSetColorScale()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->COLOR_SCALE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getColorScaleFormatting()Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->COLOR_SCALE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->isSetColorScale()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getColorScale()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->addNewColorScale()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->sizeOfCfvoArray()I

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->addNewCfvo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->MIN:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget-object v2, v2, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->name:Ljava/lang/String;

    invoke-static {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->addNewCfvo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->PERCENTILE:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget-object v2, v2, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->name:Ljava/lang/String;

    invoke-static {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;)V

    const-string v2, "50"

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;->setVal(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->addNewCfvo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->MAX:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget-object v2, v2, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->name:Ljava/lang/String;

    invoke-static {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;)V

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->addNewColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-object v1
.end method

.method public createDataBarFormatting(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->isSetDataBar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->DATA_BAR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getDataBarFormatting()Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->DATA_BAR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->isSetDataBar()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getDataBar()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->addNewDataBar()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;->setColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;->addNewCfvo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    move-result-object p1

    sget-object v1, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->MIN:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget-object v1, v1, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->name:Ljava/lang/String;

    invoke-static {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;->addNewCfvo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    move-result-object p1

    sget-object v1, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->MAX:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget-object v1, v1, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->name:Ljava/lang/String;

    invoke-static {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;)V

    new-instance p1, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-object p1
.end method

.method public bridge synthetic createFontFormatting()Lorg/apache/poi/ss/usermodel/FontFormatting;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->createFontFormatting()Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;

    move-result-object p0

    return-object p0
.end method

.method public createFontFormatting()Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;
    .locals 2

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getDxf(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->isSetFont()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->addNewFont()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->getFont()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    move-result-object v0

    .line 6
    :goto_0
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-object v1
.end method

.method public createMultiStateFormatting(Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;)Lorg/apache/poi/xssf/usermodel/XSSFIconMultiStateFormatting;
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->isSetIconSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->ICON_SET:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getMultiStateFormatting()Lorg/apache/poi/xssf/usermodel/XSSFIconMultiStateFormatting;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->ICON_SET:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->isSetIconSet()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getIconSet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->addNewIconSet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;

    move-result-object p0

    :goto_0
    iget-object v0, p1, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;->setIconSet(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;)V

    :cond_2
    const/16 v0, 0x64

    iget v1, p1, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->num:I

    div-int/2addr v0, v1

    sget-object v1, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->PERCENT:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget-object v1, v1, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->name:Ljava/lang/String;

    invoke-static {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    iget v3, p1, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->num:I

    if-ge v2, v3, :cond_3

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;->addNewCfvo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;)V

    mul-int v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;->setVal(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    new-instance p1, Lorg/apache/poi/xssf/usermodel/XSSFIconMultiStateFormatting;

    invoke-direct {p1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFIconMultiStateFormatting;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;)V

    return-object p1
.end method

.method public bridge synthetic createPatternFormatting()Lorg/apache/poi/ss/usermodel/PatternFormatting;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->createPatternFormatting()Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;

    move-result-object p0

    return-object p0
.end method

.method public createPatternFormatting()Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;
    .locals 2

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getDxf(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->isSetFill()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->addNewFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->getFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    move-result-object v0

    .line 6
    :goto_0
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-object v1
.end method

.method public bridge synthetic getBorderFormatting()Lorg/apache/poi/ss/usermodel/BorderFormatting;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getBorderFormatting()Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;

    move-result-object p0

    return-object p0
.end method

.method public getBorderFormatting()Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;
    .locals 2

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getDxf(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->isSetBorder()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->getBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-object v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCTCfRule()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    return-object p0
.end method

.method public bridge synthetic getColorScaleFormatting()Lorg/apache/poi/ss/usermodel/ColorScaleFormatting;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getColorScaleFormatting()Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;

    move-result-object p0

    return-object p0
.end method

.method public getColorScaleFormatting()Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    .line 2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->isSetColorScale()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    .line 3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getColorScale()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;

    move-result-object v0

    .line 4
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getComparisonOperation()B
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getOperator()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 p0, 0x2

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_2
    const/4 p0, 0x5

    return p0

    :pswitch_3
    const/4 p0, 0x7

    return p0

    :pswitch_4
    const/4 p0, 0x4

    return p0

    :pswitch_5
    const/4 p0, 0x3

    return p0

    :pswitch_6
    const/16 p0, 0x8

    return p0

    :pswitch_7
    const/4 p0, 0x6

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getConditionFilterType()Lorg/apache/poi/ss/usermodel/ConditionFilterType;
    .locals 1

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->filterTypeLookup:Ljava/util/Map;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    return-object p0
.end method

.method public getConditionType()Lorg/apache/poi/ss/usermodel/ConditionType;
    .locals 1

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->typeLookup:Ljava/util/Map;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/ConditionType;

    return-object p0
.end method

.method public bridge synthetic getDataBarFormatting()Lorg/apache/poi/ss/usermodel/DataBarFormatting;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getDataBarFormatting()Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;

    move-result-object p0

    return-object p0
.end method

.method public getDataBarFormatting()Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    .line 2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->isSetDataBar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    .line 3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getDataBar()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;

    move-result-object v0

    .line 4
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDxf(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/StylesTable;->_getDXfsSize()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->isSetDxfId()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getDxfId()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/model/StylesTable;->getDxfAt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-nez v1, :cond_1

    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/model/StylesTable;->putDxf(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;)I

    move-result p1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    int-to-long v2, p1

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-interface {p0, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->setDxfId(J)V

    :cond_1
    return-object v1
.end method

.method public getFilterConfiguration()Lorg/apache/poi/ss/usermodel/ConditionFilterData;
    .locals 1

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionFilterData;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionFilterData;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;)V

    return-object v0
.end method

.method public bridge synthetic getFontFormatting()Lorg/apache/poi/ss/usermodel/FontFormatting;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getFontFormatting()Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;

    move-result-object p0

    return-object p0
.end method

.method public getFontFormatting()Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;
    .locals 2

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getDxf(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->isSetFont()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->getFont()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-object v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFormula1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->sizeOfFormulaArray()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getFormulaArray(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getFormula2()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->sizeOfFormulaArray()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getFormulaArray(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getMultiStateFormatting()Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getMultiStateFormatting()Lorg/apache/poi/xssf/usermodel/XSSFIconMultiStateFormatting;

    move-result-object p0

    return-object p0
.end method

.method public getMultiStateFormatting()Lorg/apache/poi/xssf/usermodel/XSSFIconMultiStateFormatting;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    .line 2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->isSetIconSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    .line 3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getIconSet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;

    move-result-object p0

    .line 4
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFIconMultiStateFormatting;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFIconMultiStateFormatting;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNumberFormat()Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getDxf(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->isSetNumFmt()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->getNumFmt()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;->getNumFmtId()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;->getFormatCode()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getPatternFormatting()Lorg/apache/poi/ss/usermodel/PatternFormatting;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getPatternFormatting()Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;

    move-result-object p0

    return-object p0
.end method

.method public getPatternFormatting()Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;
    .locals 2

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getDxf(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->isSetFill()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->getFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-object v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPriority()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getPriority()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getStopIfTrue()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getStopIfTrue()Z

    move-result p0

    return p0
.end method

.method public getStripeSize()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
