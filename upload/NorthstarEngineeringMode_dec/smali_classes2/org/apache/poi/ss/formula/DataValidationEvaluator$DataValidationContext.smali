.class public Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/DataValidationEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataValidationContext"
.end annotation


# instance fields
.field private final dv:Lorg/apache/poi/ss/usermodel/DataValidation;

.field private final dve:Lorg/apache/poi/ss/formula/DataValidationEvaluator;

.field private final region:Lorg/apache/poi/ss/util/CellRangeAddressBase;

.field private final target:Lorg/apache/poi/ss/util/CellReference;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/usermodel/DataValidation;Lorg/apache/poi/ss/formula/DataValidationEvaluator;Lorg/apache/poi/ss/util/CellRangeAddressBase;Lorg/apache/poi/ss/util/CellReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->dv:Lorg/apache/poi/ss/usermodel/DataValidation;

    iput-object p2, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->dve:Lorg/apache/poi/ss/formula/DataValidationEvaluator;

    iput-object p3, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->region:Lorg/apache/poi/ss/util/CellRangeAddressBase;

    iput-object p4, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->target:Lorg/apache/poi/ss/util/CellReference;

    return-void
.end method


# virtual methods
.method public getEvaluator()Lorg/apache/poi/ss/formula/DataValidationEvaluator;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->dve:Lorg/apache/poi/ss/formula/DataValidationEvaluator;

    return-object p0
.end method

.method public getFormula1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->dv:Lorg/apache/poi/ss/usermodel/DataValidation;

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/DataValidation;->getValidationConstraint()Lorg/apache/poi/ss/usermodel/DataValidationConstraint;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getFormula1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFormula2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->dv:Lorg/apache/poi/ss/usermodel/DataValidation;

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/DataValidation;->getValidationConstraint()Lorg/apache/poi/ss/usermodel/DataValidationConstraint;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getFormula2()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOffsetColumns()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->target:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->region:Lorg/apache/poi/ss/util/CellRangeAddressBase;

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getOffsetRows()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->target:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->region:Lorg/apache/poi/ss/util/CellRangeAddressBase;

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getOperator()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->dv:Lorg/apache/poi/ss/usermodel/DataValidation;

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/DataValidation;->getValidationConstraint()Lorg/apache/poi/ss/usermodel/DataValidationConstraint;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getOperator()I

    move-result p0

    return p0
.end method

.method public getRegion()Lorg/apache/poi/ss/util/CellRangeAddressBase;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->region:Lorg/apache/poi/ss/util/CellRangeAddressBase;

    return-object p0
.end method

.method public getSheetIndex()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->dve:Lorg/apache/poi/ss/formula/DataValidationEvaluator;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->getWorkbookEvaluator()Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->target:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTarget()Lorg/apache/poi/ss/util/CellReference;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->target:Lorg/apache/poi/ss/util/CellReference;

    return-object p0
.end method

.method public getValidation()Lorg/apache/poi/ss/usermodel/DataValidation;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->dv:Lorg/apache/poi/ss/usermodel/DataValidation;

    return-object p0
.end method
