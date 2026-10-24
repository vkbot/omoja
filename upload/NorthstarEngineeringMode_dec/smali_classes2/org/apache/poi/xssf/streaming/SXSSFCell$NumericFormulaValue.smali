.class Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;
.super Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/streaming/SXSSFCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NumericFormulaValue"
.end annotation


# instance fields
.field _preEvaluatedValue:D


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;-><init>(Ljava/lang/String;)V

    iput-wide p2, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;->_preEvaluatedValue:D

    return-void
.end method


# virtual methods
.method public getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 0

    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    return-object p0
.end method

.method public getPreEvaluatedValue()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;->_preEvaluatedValue:D

    return-wide v0
.end method

.method public setPreEvaluatedValue(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;->_preEvaluatedValue:D

    return-void
.end method
