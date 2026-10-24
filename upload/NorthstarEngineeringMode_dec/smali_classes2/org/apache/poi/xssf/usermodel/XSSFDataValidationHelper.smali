.class public Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/DataValidationHelper;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCustomConstraint(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 1

    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method public createDateConstraint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 0

    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    const/4 p4, 0x4

    invoke-direct {p0, p4, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public createDecimalConstraint(ILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 1

    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public createExplicitListConstraint([Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 0

    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;-><init>([Ljava/lang/String;)V

    return-object p0
.end method

.method public createFormulaListConstraint(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 1

    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method public createIntegerConstraint(ILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 1

    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public createNumericConstraint(IILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;->createIntegerConstraint(ILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p2, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;->createDecimalConstraint(ILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, p2, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;->createTextLengthConstraint(ILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public createTextLengthConstraint(ILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 1

    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public createTimeConstraint(ILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 1

    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public createValidation(Lorg/apache/poi/ss/usermodel/DataValidationConstraint;Lorg/apache/poi/ss/util/CellRangeAddressList;)Lorg/apache/poi/ss/usermodel/DataValidation;
    .locals 5

    move-object p0, p1

    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getValidationType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->NONE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;)V

    goto :goto_0

    :pswitch_0
    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->CUSTOM:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;)V

    goto :goto_0

    :pswitch_1
    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->TEXT_LENGTH:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;)V

    goto :goto_0

    :pswitch_2
    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->TIME:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;)V

    goto :goto_0

    :pswitch_3
    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->DATE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;)V

    goto :goto_0

    :pswitch_4
    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->LIST:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;)V

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getFormula1()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setFormula1(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->DECIMAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;)V

    goto :goto_0

    :pswitch_6
    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->WHOLE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;)V

    goto :goto_0

    :pswitch_7
    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->NONE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;)V

    :goto_0
    if-eqz v1, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->operatorTypeMappings:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getOperator()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setOperator(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;)V

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getFormula1()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getFormula1()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setFormula1(Ljava/lang/String;)V

    :cond_1
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getFormula2()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getFormula2()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setFormula2(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellRangeAddressList;->getCellRangeAddresses()[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setSqref(Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setAllowBlank(Z)V

    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle;->STOP:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setErrorStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;)V

    new-instance p1, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;

    invoke-direct {p1, p0, p2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;Lorg/apache/poi/ss/util/CellRangeAddressList;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
