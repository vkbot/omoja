.class public interface abstract Lorg/apache/poi/ss/formula/EvaluationCell;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# virtual methods
.method public abstract getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;
.end method

.method public abstract getBooleanCellValue()Z
.end method

.method public abstract getCachedFormulaResultType()Lorg/apache/poi/ss/usermodel/CellType;
.end method

.method public abstract getCellType()Lorg/apache/poi/ss/usermodel/CellType;
.end method

.method public abstract getColumnIndex()I
.end method

.method public abstract getErrorCellValue()I
.end method

.method public abstract getIdentityKey()Ljava/lang/Object;
.end method

.method public abstract getNumericCellValue()D
.end method

.method public abstract getRowIndex()I
.end method

.method public abstract getSheet()Lorg/apache/poi/ss/formula/EvaluationSheet;
.end method

.method public abstract getStringCellValue()Ljava/lang/String;
.end method

.method public abstract isPartOfArrayFormulaGroup()Z
.end method
