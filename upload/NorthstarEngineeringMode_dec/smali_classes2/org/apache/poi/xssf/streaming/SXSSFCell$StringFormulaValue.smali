.class Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;
.super Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/streaming/SXSSFCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringFormulaValue"
.end annotation


# instance fields
.field _preEvaluatedValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;->_preEvaluatedValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 0

    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    return-object p0
.end method

.method public getPreEvaluatedValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;->_preEvaluatedValue:Ljava/lang/String;

    return-object p0
.end method

.method public setPreEvaluatedValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;->_preEvaluatedValue:Ljava/lang/String;

    return-void
.end method
