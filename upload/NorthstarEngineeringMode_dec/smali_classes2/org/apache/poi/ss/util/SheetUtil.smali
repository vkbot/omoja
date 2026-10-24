.class public Lorg/apache/poi/ss/util/SheetUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_CHAR_WIDTH:I = 0x5

.field private static final defaultChar:C = '0'

.field private static final dummyEvaluator:Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

.field private static final fontHeightMultiple:D = 2.0

.field private static fontRenderContext:Ljava/awt/font/FontRenderContext;

.field private static ignoreMissingFontSystem:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/poi/ss/util/SheetUtil$1;

    invoke-direct {v0}, Lorg/apache/poi/ss/util/SheetUtil$1;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/util/SheetUtil;->dummyEvaluator:Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

    new-instance v0, Ljava/awt/font/FontRenderContext;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Ljava/awt/font/FontRenderContext;-><init>(Ljava/awt/geom/AffineTransform;ZZ)V

    sput-object v0, Lorg/apache/poi/ss/util/SheetUtil;->fontRenderContext:Ljava/awt/font/FontRenderContext;

    const-string v0, "org.apache.poi.ss.ignoreMissingFontSystem"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/poi/ss/util/SheetUtil;->ignoreMissingFontSystem:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canComputeColumnWidth(Lorg/apache/poi/ss/usermodel/Font;)Z
    .locals 5

    new-instance v0, Ljava/text/AttributedString;

    const-string v1, "1w"

    invoke-direct {v0, v1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/ss/util/SheetUtil;->copyAttributes(Lorg/apache/poi/ss/usermodel/Font;Ljava/text/AttributedString;II)V

    new-instance p0, Ljava/awt/font/TextLayout;

    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/util/SheetUtil;->fontRenderContext:Ljava/awt/font/FontRenderContext;

    invoke-direct {p0, v0, v1}, Ljava/awt/font/TextLayout;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    invoke-virtual {p0}, Ljava/awt/font/TextLayout;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmpl-double p0, v0, v3

    if-lez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private static copyAttributes(Lorg/apache/poi/ss/usermodel/Font;Ljava/text/AttributedString;II)V
    .locals 2

    sget-object v0, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Font;->getFontName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p2, p3}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    sget-object v0, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Font;->getFontHeightInPoints()S

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Font;->getBold()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/awt/font/TextAttribute;->WEIGHT:Ljava/awt/font/TextAttribute;

    sget-object v1, Ljava/awt/font/TextAttribute;->WEIGHT_BOLD:Ljava/lang/Float;

    invoke-virtual {p1, v0, v1, p2, p3}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Font;->getItalic()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/awt/font/TextAttribute;->POSTURE:Ljava/awt/font/TextAttribute;

    sget-object v1, Ljava/awt/font/TextAttribute;->POSTURE_OBLIQUE:Ljava/lang/Float;

    invoke-virtual {p1, v0, v1, p2, p3}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    :cond_1
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Font;->getUnderline()B

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    sget-object p0, Ljava/awt/font/TextAttribute;->UNDERLINE:Ljava/awt/font/TextAttribute;

    sget-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_ON:Ljava/lang/Integer;

    invoke-virtual {p1, p0, v0, p2, p3}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method public static getCell(Lorg/apache/poi/ss/usermodel/Sheet;II)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 0

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getCellWidth(FILorg/apache/poi/ss/usermodel/CellStyle;DLjava/text/AttributedString;)D
    .locals 7

    .line 36
    new-instance v0, Ljava/awt/font/TextLayout;

    invoke-virtual {p5}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object p5

    sget-object v1, Lorg/apache/poi/ss/util/SheetUtil;->fontRenderContext:Ljava/awt/font/FontRenderContext;

    invoke-direct {v0, p5, v1}, Ljava/awt/font/TextLayout;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    .line 37
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/CellStyle;->getRotation()S

    move-result p5

    if-eqz p5, :cond_0

    .line 38
    new-instance p5, Ljava/awt/geom/AffineTransform;

    invoke-direct {p5}, Ljava/awt/geom/AffineTransform;-><init>()V

    .line 39
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/CellStyle;->getRotation()S

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v3

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v1, v5

    const-wide v5, 0x4076800000000000L    # 360.0

    div-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/awt/geom/AffineTransform;->getRotateInstance(D)Ljava/awt/geom/AffineTransform;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 40
    invoke-static {v1, v2, v3, v4}, Ljava/awt/geom/AffineTransform;->getScaleInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v1

    .line 41
    invoke-virtual {p5, v1}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    .line 42
    invoke-virtual {v0, p5}, Ljava/awt/font/TextLayout;->getOutline(Ljava/awt/geom/AffineTransform;)Ljava/awt/Shape;

    move-result-object p5

    invoke-interface {p5}, Ljava/awt/Shape;->getBounds()Ljava/awt/Rectangle;

    move-result-object p5

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v0}, Ljava/awt/font/TextLayout;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p5

    .line 44
    :goto_0
    invoke-virtual {p5}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v0

    invoke-virtual {p5}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v2

    add-double/2addr v0, v2

    int-to-double v2, p1

    div-double/2addr v0, v2

    float-to-double p0, p0

    div-double/2addr v0, p0

    .line 45
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/CellStyle;->getIndention()S

    move-result p0

    int-to-double p0, p0

    add-double/2addr v0, p0

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getCellWidth(Lorg/apache/poi/ss/usermodel/Cell;FLorg/apache/poi/ss/usermodel/DataFormatter;Z)D
    .locals 1

    .line 2
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getMergedRegions()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/poi/ss/util/SheetUtil;->getCellWidth(Lorg/apache/poi/ss/usermodel/Cell;FLorg/apache/poi/ss/usermodel/DataFormatter;ZLjava/util/List;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getCellWidth(Lorg/apache/poi/ss/usermodel/Cell;FLorg/apache/poi/ss/usermodel/DataFormatter;ZLjava/util/List;)D
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            "F",
            "Lorg/apache/poi/ss/usermodel/DataFormatter;",
            "Z",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;)D"
        }
    .end annotation

    .line 5
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    .line 7
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getRow()Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v1

    .line 8
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v2

    .line 9
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    const/4 v3, 0x1

    move v10, v3

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 10
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v5

    invoke-virtual {v4, v5, v2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->isInRange(II)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez p3, :cond_1

    const-wide/high16 p0, -0x4010000000000000L    # -1.0

    return-wide p0

    .line 11
    :cond_1
    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result p0

    invoke-interface {v1, p0}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object p0

    .line 12
    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v4

    sub-int v10, v5, v4

    goto :goto_0

    .line 13
    :cond_2
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object p3

    .line 14
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p4

    .line 15
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne p4, v1, :cond_3

    .line 16
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p4

    .line 17
    :cond_3
    invoke-interface {p3}, Lorg/apache/poi/ss/usermodel/CellStyle;->getFontIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/usermodel/Workbook;->getFontAt(I)Lorg/apache/poi/ss/usermodel/Font;

    move-result-object v0

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    .line 18
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v2, 0x0

    if-ne p4, v1, :cond_4

    .line 19
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 20
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 21
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "\\n"

    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 22
    array-length p2, p0

    move p4, v2

    :goto_1
    if-ge p4, p2, :cond_7

    aget-object v1, p0, p4

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x30

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 24
    new-instance v9, Ljava/text/AttributedString;

    invoke-direct {v9, v1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v9, v2, v1}, Lorg/apache/poi/ss/util/SheetUtil;->copyAttributes(Lorg/apache/poi/ss/usermodel/Font;Ljava/text/AttributedString;II)V

    move v4, p1

    move v5, v10

    move-object v6, p3

    .line 26
    invoke-static/range {v4 .. v9}, Lorg/apache/poi/ss/util/SheetUtil;->getCellWidth(FILorg/apache/poi/ss/usermodel/CellStyle;DLjava/text/AttributedString;)D

    move-result-wide v7

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 27
    :cond_4
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne p4, v1, :cond_5

    :try_start_0
    sget-object p4, Lorg/apache/poi/ss/util/SheetUtil;->dummyEvaluator:Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

    .line 28
    invoke-virtual {p2, p0, p4}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 29
    :catch_0
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 30
    :cond_5
    sget-object p2, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne p4, p2, :cond_6

    .line 31
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getBooleanCellValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_6
    const/4 p0, 0x0

    :goto_2
    if-eqz p0, :cond_7

    const-string p2, "0"

    .line 32
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 33
    new-instance v9, Ljava/text/AttributedString;

    invoke-direct {v9, p0}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {v0, v9, v2, p0}, Lorg/apache/poi/ss/util/SheetUtil;->copyAttributes(Lorg/apache/poi/ss/usermodel/Font;Ljava/text/AttributedString;II)V

    move v4, p1

    move v5, v10

    move-object v6, p3

    .line 35
    invoke-static/range {v4 .. v9}, Lorg/apache/poi/ss/util/SheetUtil;->getCellWidth(FILorg/apache/poi/ss/usermodel/CellStyle;DLjava/text/AttributedString;)D

    move-result-wide v7

    :cond_7
    return-wide v7
.end method

.method public static getCellWidth(Lorg/apache/poi/ss/usermodel/Cell;ILorg/apache/poi/ss/usermodel/DataFormatter;Z)D
    .locals 0

    int-to-float p1, p1

    .line 1
    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/ss/util/SheetUtil;->getCellWidth(Lorg/apache/poi/ss/usermodel/Cell;FLorg/apache/poi/ss/usermodel/DataFormatter;Z)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getCellWidth(Lorg/apache/poi/ss/usermodel/Cell;ILorg/apache/poi/ss/usermodel/DataFormatter;ZLjava/util/List;)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            "I",
            "Lorg/apache/poi/ss/usermodel/DataFormatter;",
            "Z",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;)D"
        }
    .end annotation

    int-to-float p1, p1

    .line 4
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/util/SheetUtil;->getCellWidth(Lorg/apache/poi/ss/usermodel/Cell;FLorg/apache/poi/ss/usermodel/DataFormatter;ZLjava/util/List;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getCellWithMerges(Lorg/apache/poi/ss/usermodel/Sheet;II)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 3

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/util/SheetUtil;->getCell(Lorg/apache/poi/ss/usermodel/Sheet;II)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getMergedRegions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->isInRange(II)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v2

    invoke-interface {p0, v2}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result p0

    invoke-interface {v2, p0}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getColumnWidth(Lorg/apache/poi/ss/usermodel/Sheet;IZ)D
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getFirstRowNum()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getLastRowNum()I

    move-result v1

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/poi/ss/util/SheetUtil;->getColumnWidth(Lorg/apache/poi/ss/usermodel/Sheet;IZII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getColumnWidth(Lorg/apache/poi/ss/usermodel/Sheet;IZII)D
    .locals 11

    .line 2
    new-instance v6, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-direct {v6}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>()V

    .line 3
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ss/util/SheetUtil;->getDefaultCharWidthAsFloat(Lorg/apache/poi/ss/usermodel/Workbook;)F

    move-result v7

    .line 4
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getMergedRegions()Ljava/util/List;

    move-result-object v8

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    move-wide v9, v0

    :goto_0
    if-gt p3, p4, :cond_1

    .line 5
    invoke-interface {p0, p3}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v0

    if-eqz v0, :cond_0

    move v1, p1

    move v2, v7

    move-object v3, v6

    move v4, p2

    move-object v5, v8

    .line 6
    invoke-static/range {v0 .. v5}, Lorg/apache/poi/ss/util/SheetUtil;->getColumnWidthForRow(Lorg/apache/poi/ss/usermodel/Row;IFLorg/apache/poi/ss/usermodel/DataFormatter;ZLjava/util/List;)D

    move-result-wide v0

    .line 7
    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    move-wide v9, v0

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-wide v9
.end method

.method private static getColumnWidthForRow(Lorg/apache/poi/ss/usermodel/Row;IFLorg/apache/poi/ss/usermodel/DataFormatter;ZLjava/util/List;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/Row;",
            "IF",
            "Lorg/apache/poi/ss/usermodel/DataFormatter;",
            "Z",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;)D"
        }
    .end annotation

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object p0

    if-nez p0, :cond_1

    return-wide v0

    :cond_1
    invoke-static {p0, p2, p3, p4, p5}, Lorg/apache/poi/ss/util/SheetUtil;->getCellWidth(Lorg/apache/poi/ss/usermodel/Cell;FLorg/apache/poi/ss/usermodel/DataFormatter;ZLjava/util/List;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getDefaultCharWidth(Lorg/apache/poi/ss/usermodel/Workbook;)I
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-static {p0}, Lorg/apache/poi/ss/util/SheetUtil;->getDefaultCharWidthAsFloat(Lorg/apache/poi/ss/usermodel/Workbook;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static getDefaultCharWidthAsFloat(Lorg/apache/poi/ss/usermodel/Workbook;)F
    .locals 3
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/Workbook;->getFontAt(I)Lorg/apache/poi/ss/usermodel/Font;

    move-result-object p0

    new-instance v1, Ljava/text/AttributedString;

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lorg/apache/poi/ss/util/SheetUtil;->copyAttributes(Lorg/apache/poi/ss/usermodel/Font;Ljava/text/AttributedString;II)V

    :try_start_0
    new-instance p0, Ljava/awt/font/TextLayout;

    invoke-virtual {v1}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/util/SheetUtil;->fontRenderContext:Ljava/awt/font/FontRenderContext;

    invoke-direct {p0, v0, v1}, Ljava/awt/font/TextLayout;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    invoke-virtual {p0}, Ljava/awt/font/TextLayout;->getAdvance()F

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    sget-boolean v0, Lorg/apache/poi/ss/util/SheetUtil;->ignoreMissingFontSystem:Z

    if-eqz v0, :cond_1

    instance-of v0, p0, Ljava/lang/UnsatisfiedLinkError;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/NoClassDefFoundError;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/InternalError;

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/poi/util/ExceptionUtil;->isFatal(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/high16 p0, 0x40a00000    # 5.0f

    return p0

    :cond_1
    throw p0
.end method

.method public static getFontRenderContext()Ljava/awt/font/FontRenderContext;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/util/SheetUtil;->fontRenderContext:Ljava/awt/font/FontRenderContext;

    return-object v0
.end method

.method public static isIgnoreMissingFontSystem()Z
    .locals 1

    sget-boolean v0, Lorg/apache/poi/ss/util/SheetUtil;->ignoreMissingFontSystem:Z

    return v0
.end method

.method public static setFontRenderContext(Ljava/awt/font/FontRenderContext;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/ss/util/SheetUtil;->fontRenderContext:Ljava/awt/font/FontRenderContext;

    return-void
.end method

.method public static setIgnoreMissingFontSystem(Z)V
    .locals 0

    sput-boolean p0, Lorg/apache/poi/ss/util/SheetUtil;->ignoreMissingFontSystem:Z

    return-void
.end method
