.class public interface abstract Lorg/apache/poi/ss/usermodel/Cell;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAddress()Lorg/apache/poi/ss/util/CellAddress;
.end method

.method public abstract getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;
.end method

.method public abstract getBooleanCellValue()Z
.end method

.method public abstract getCachedFormulaResultType()Lorg/apache/poi/ss/usermodel/CellType;
.end method

.method public abstract getCellComment()Lorg/apache/poi/ss/usermodel/Comment;
.end method

.method public abstract getCellFormula()Ljava/lang/String;
.end method

.method public abstract getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
.end method

.method public abstract getCellType()Lorg/apache/poi/ss/usermodel/CellType;
.end method

.method public abstract getColumnIndex()I
.end method

.method public abstract getDateCellValue()Ljava/util/Date;
.end method

.method public abstract getErrorCellValue()B
.end method

.method public abstract getHyperlink()Lorg/apache/poi/ss/usermodel/Hyperlink;
.end method

.method public abstract getLocalDateTimeCellValue()Ljava/time/LocalDateTime;
.end method

.method public abstract getNumericCellValue()D
.end method

.method public abstract getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;
.end method

.method public abstract getRow()Lorg/apache/poi/ss/usermodel/Row;
.end method

.method public abstract getRowIndex()I
.end method

.method public abstract getSheet()Lorg/apache/poi/ss/usermodel/Sheet;
.end method

.method public abstract getStringCellValue()Ljava/lang/String;
.end method

.method public abstract isPartOfArrayFormulaGroup()Z
.end method

.method public abstract removeCellComment()V
.end method

.method public abstract removeFormula()V
.end method

.method public abstract removeHyperlink()V
.end method

.method public abstract setAsActiveCell()V
.end method

.method public abstract setBlank()V
.end method

.method public abstract setCellComment(Lorg/apache/poi/ss/usermodel/Comment;)V
.end method

.method public abstract setCellErrorValue(B)V
.end method

.method public abstract setCellFormula(Ljava/lang/String;)V
.end method

.method public abstract setCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V
.end method

.method public abstract setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "5.0"
    .end annotation
.end method

.method public abstract setCellValue(D)V
.end method

.method public abstract setCellValue(Ljava/lang/String;)V
.end method

.method public setCellValue(Ljava/time/LocalDate;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/time/LocalDate;->atStartOfDay()Ljava/time/LocalDateTime;

    move-result-object p1

    :goto_0
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Ljava/time/LocalDateTime;)V

    return-void
.end method

.method public abstract setCellValue(Ljava/time/LocalDateTime;)V
.end method

.method public abstract setCellValue(Ljava/util/Calendar;)V
.end method

.method public abstract setCellValue(Ljava/util/Date;)V
.end method

.method public abstract setCellValue(Lorg/apache/poi/ss/usermodel/RichTextString;)V
.end method

.method public abstract setCellValue(Z)V
.end method

.method public abstract setHyperlink(Lorg/apache/poi/ss/usermodel/Hyperlink;)V
.end method
