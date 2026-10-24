.class public interface abstract Lorg/apache/poi/ss/usermodel/CellStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract cloneStyleFrom(Lorg/apache/poi/ss/usermodel/CellStyle;)V
.end method

.method public abstract getAlignment()Lorg/apache/poi/ss/usermodel/HorizontalAlignment;
.end method

.method public abstract getBorderBottom()Lorg/apache/poi/ss/usermodel/BorderStyle;
.end method

.method public abstract getBorderLeft()Lorg/apache/poi/ss/usermodel/BorderStyle;
.end method

.method public abstract getBorderRight()Lorg/apache/poi/ss/usermodel/BorderStyle;
.end method

.method public abstract getBorderTop()Lorg/apache/poi/ss/usermodel/BorderStyle;
.end method

.method public abstract getBottomBorderColor()S
.end method

.method public abstract getDataFormat()S
.end method

.method public abstract getDataFormatString()Ljava/lang/String;
.end method

.method public abstract getFillBackgroundColor()S
.end method

.method public abstract getFillBackgroundColorColor()Lorg/apache/poi/ss/usermodel/Color;
.end method

.method public abstract getFillForegroundColor()S
.end method

.method public abstract getFillForegroundColorColor()Lorg/apache/poi/ss/usermodel/Color;
.end method

.method public abstract getFillPattern()Lorg/apache/poi/ss/usermodel/FillPatternType;
.end method

.method public abstract getFontIndex()I
.end method

.method public abstract getFontIndexAsInt()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "6.0.0"
    .end annotation
.end method

.method public abstract getHidden()Z
.end method

.method public abstract getIndention()S
.end method

.method public abstract getIndex()S
.end method

.method public abstract getLeftBorderColor()S
.end method

.method public abstract getLocked()Z
.end method

.method public abstract getQuotePrefixed()Z
.end method

.method public abstract getRightBorderColor()S
.end method

.method public abstract getRotation()S
.end method

.method public abstract getShrinkToFit()Z
.end method

.method public abstract getTopBorderColor()S
.end method

.method public abstract getVerticalAlignment()Lorg/apache/poi/ss/usermodel/VerticalAlignment;
.end method

.method public abstract getWrapText()Z
.end method

.method public abstract setAlignment(Lorg/apache/poi/ss/usermodel/HorizontalAlignment;)V
.end method

.method public abstract setBorderBottom(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
.end method

.method public abstract setBorderLeft(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
.end method

.method public abstract setBorderRight(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
.end method

.method public abstract setBorderTop(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
.end method

.method public abstract setBottomBorderColor(S)V
.end method

.method public abstract setDataFormat(S)V
.end method

.method public abstract setFillBackgroundColor(Lorg/apache/poi/ss/usermodel/Color;)V
.end method

.method public abstract setFillBackgroundColor(S)V
.end method

.method public abstract setFillForegroundColor(Lorg/apache/poi/ss/usermodel/Color;)V
.end method

.method public abstract setFillForegroundColor(S)V
.end method

.method public abstract setFillPattern(Lorg/apache/poi/ss/usermodel/FillPatternType;)V
.end method

.method public abstract setFont(Lorg/apache/poi/ss/usermodel/Font;)V
.end method

.method public abstract setHidden(Z)V
.end method

.method public abstract setIndention(S)V
.end method

.method public abstract setLeftBorderColor(S)V
.end method

.method public abstract setLocked(Z)V
.end method

.method public abstract setQuotePrefixed(Z)V
.end method

.method public abstract setRightBorderColor(S)V
.end method

.method public abstract setRotation(S)V
.end method

.method public abstract setShrinkToFit(Z)V
.end method

.method public abstract setTopBorderColor(S)V
.end method

.method public abstract setVerticalAlignment(Lorg/apache/poi/ss/usermodel/VerticalAlignment;)V
.end method

.method public abstract setWrapText(Z)V
.end method
