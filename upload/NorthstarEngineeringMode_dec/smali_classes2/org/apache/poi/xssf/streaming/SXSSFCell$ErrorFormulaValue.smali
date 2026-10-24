.class Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;
.super Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/streaming/SXSSFCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorFormulaValue"
.end annotation


# instance fields
.field _preEvaluatedValue:B


# direct methods
.method public constructor <init>(Ljava/lang/String;B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;-><init>(Ljava/lang/String;)V

    iput-byte p2, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;->_preEvaluatedValue:B

    return-void
.end method


# virtual methods
.method public getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 0

    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    return-object p0
.end method

.method public getPreEvaluatedValue()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;->_preEvaluatedValue:B

    return p0
.end method

.method public setPreEvaluatedValue(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;->_preEvaluatedValue:B

    return-void
.end method
