.class public final Lorg/apache/poi/ss/util/CellUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;
    }
.end annotation


# static fields
.field public static final ALIGNMENT:Ljava/lang/String; = "alignment"

.field public static final BORDER_BOTTOM:Ljava/lang/String; = "borderBottom"

.field public static final BORDER_LEFT:Ljava/lang/String; = "borderLeft"

.field public static final BORDER_RIGHT:Ljava/lang/String; = "borderRight"

.field public static final BORDER_TOP:Ljava/lang/String; = "borderTop"

.field public static final BOTTOM_BORDER_COLOR:Ljava/lang/String; = "bottomBorderColor"

.field public static final DATA_FORMAT:Ljava/lang/String; = "dataFormat"

.field public static final FILL_BACKGROUND_COLOR:Ljava/lang/String; = "fillBackgroundColor"

.field public static final FILL_BACKGROUND_COLOR_COLOR:Ljava/lang/String; = "fillBackgroundColorColor"

.field public static final FILL_FOREGROUND_COLOR:Ljava/lang/String; = "fillForegroundColor"

.field public static final FILL_FOREGROUND_COLOR_COLOR:Ljava/lang/String; = "fillForegroundColorColor"

.field public static final FILL_PATTERN:Ljava/lang/String; = "fillPattern"

.field public static final FONT:Ljava/lang/String; = "font"

.field public static final HIDDEN:Ljava/lang/String; = "hidden"

.field public static final INDENTION:Ljava/lang/String; = "indention"

.field public static final LEFT_BORDER_COLOR:Ljava/lang/String; = "leftBorderColor"

.field public static final LOCKED:Ljava/lang/String; = "locked"

.field private static final LOGGER:La5/d;

.field public static final QUOTE_PREFIXED:Ljava/lang/String; = "quotePrefixed"

.field public static final RIGHT_BORDER_COLOR:Ljava/lang/String; = "rightBorderColor"

.field public static final ROTATION:Ljava/lang/String; = "rotation"

.field public static final SHRINK_TO_FIT:Ljava/lang/String; = "shrinkToFit"

.field public static final TOP_BORDER_COLOR:Ljava/lang/String; = "topBorderColor"

.field public static final VERTICAL_ALIGNMENT:Ljava/lang/String; = "verticalAlignment"

.field public static final WRAP_TEXT:Ljava/lang/String; = "wrapText"

.field private static final booleanValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final borderTypeValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final colorValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final intValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final shortValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final unicodeMappings:[Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-class v0, Lorg/apache/poi/ss/util/CellUtil;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/CellUtil;->LOGGER:La5/d;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "bottomBorderColor"

    const-string v2, "leftBorderColor"

    const-string v3, "rightBorderColor"

    const-string v4, "topBorderColor"

    const-string v5, "fillForegroundColor"

    const-string v6, "fillBackgroundColor"

    const-string v7, "indention"

    const-string v8, "dataFormat"

    const-string v9, "rotation"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/CellUtil;->shortValues:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "fillForegroundColorColor"

    const-string v2, "fillBackgroundColorColor"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/CellUtil;->colorValues:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "font"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/CellUtil;->intValues:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "hidden"

    const-string v2, "wrapText"

    const-string v3, "locked"

    const-string v4, "shrinkToFit"

    const-string v5, "quotePrefixed"

    filled-new-array {v3, v1, v2, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/CellUtil;->booleanValues:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "borderBottom"

    const-string v2, "borderLeft"

    const-string v3, "borderRight"

    const-string v4, "borderTop"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/CellUtil;->borderTypeValues:Ljava/util/Set;

    const-string v0, "alpha"

    const-string v1, "\u03b1"

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v2

    const-string v0, "beta"

    const-string v1, "\u03b2"

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v3

    const-string v0, "gamma"

    const-string v1, "\u03b3"

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v4

    const-string v0, "delta"

    const-string v1, "\u03b4"

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v5

    const-string v0, "epsilon"

    const-string v1, "\u03b5"

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v6

    const-string v0, "zeta"

    const-string v1, "\u03b6"

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v7

    const-string v0, "eta"

    const-string v1, "\u03b7"

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v8

    const-string v0, "theta"

    const-string v1, "\u03b8"

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v9

    const-string v0, "iota"

    const-string v1, "\u03b9"

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v10

    const-string v0, "kappa"

    const-string v1, "\u03ba"

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v11

    const-string v0, "lambda"

    const-string v1, "\u03bb"

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v12

    const-string v0, "mu"

    const-string v1, "\u03bc"

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v13

    const-string v0, "nu"

    const-string v1, "\u03bd"

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v14

    const-string v0, "xi"

    const-string v1, "\u03be"

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v15

    const-string v0, "omicron"

    const-string v1, "\u03bf"

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v16

    filled-new-array/range {v2 .. v16}, [Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/CellUtil;->unicodeMappings:[Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyCell(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellCopyPolicy;Lorg/apache/poi/ss/usermodel/CellCopyContext;)V
    .locals 3

    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyCellValue()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyCellFormula()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    :cond_0
    sget-object v1, Lorg/apache/poi/ss/util/CellUtil$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid cell type "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getErrorCellValue()B

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellErrorValue(B)V

    goto :goto_0

    :pswitch_1
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getBooleanCellValue()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Z)V

    goto :goto_0

    :pswitch_2
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->setBlank()V

    goto :goto_0

    :pswitch_3
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellFormula()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellFormula(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    goto :goto_0

    :pswitch_5
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->isCellDateFormatted(Lorg/apache/poi/ss/usermodel/Cell;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getDateCellValue()Ljava/util/Date;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Ljava/util/Date;)V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(D)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->setBlank()V

    :cond_3
    :goto_0
    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyCellStyle()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v2

    if-ne v0, v2, :cond_4

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object p3

    invoke-interface {p1, p3}, Lorg/apache/poi/ss/usermodel/Cell;->setCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V

    goto :goto_2

    :cond_4
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v0

    if-nez p3, :cond_5

    move-object v2, v1

    goto :goto_1

    :cond_5
    invoke-virtual {p3, v0}, Lorg/apache/poi/ss/usermodel/CellCopyContext;->getMappedStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_6

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Workbook;->createCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->cloneStyleFrom(Lorg/apache/poi/ss/usermodel/CellStyle;)V

    if-eqz p3, :cond_6

    invoke-virtual {p3, v0, v2}, Lorg/apache/poi/ss/usermodel/CellCopyContext;->putMappedStyle(Lorg/apache/poi/ss/usermodel/CellStyle;Lorg/apache/poi/ss/usermodel/CellStyle;)V

    :cond_6
    invoke-interface {p1, v2}, Lorg/apache/poi/ss/usermodel/Cell;->setCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V

    :cond_7
    :goto_2
    if-nez p0, :cond_8

    move-object p0, v1

    goto :goto_3

    :cond_8
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getHyperlink()Lorg/apache/poi/ss/usermodel/Hyperlink;

    move-result-object p0

    :goto_3
    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isMergeHyperlink()Z

    move-result p3

    const-string v0, "srcCell hyperlink is not an instance of Duplicatable"

    if-eqz p3, :cond_a

    if-eqz p0, :cond_d

    instance-of p2, p0, Lorg/apache/poi/common/Duplicatable;

    if-eqz p2, :cond_9

    check-cast p0, Lorg/apache/poi/common/Duplicatable;

    invoke-interface {p0}, Lorg/apache/poi/common/Duplicatable;->copy()Lorg/apache/poi/common/Duplicatable;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/Hyperlink;

    invoke-interface {p1, p0}, Lorg/apache/poi/ss/usermodel/Cell;->setHyperlink(Lorg/apache/poi/ss/usermodel/Hyperlink;)V

    goto :goto_4

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyHyperlink()Z

    move-result p2

    if-eqz p2, :cond_d

    if-nez p0, :cond_b

    invoke-interface {p1, v1}, Lorg/apache/poi/ss/usermodel/Cell;->setHyperlink(Lorg/apache/poi/ss/usermodel/Hyperlink;)V

    goto :goto_4

    :cond_b
    instance-of p2, p0, Lorg/apache/poi/common/Duplicatable;

    if-eqz p2, :cond_c

    check-cast p0, Lorg/apache/poi/common/Duplicatable;

    invoke-interface {p0}, Lorg/apache/poi/common/Duplicatable;->copy()Lorg/apache/poi/common/Duplicatable;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/Hyperlink;

    invoke-interface {p1, p0}, Lorg/apache/poi/ss/usermodel/Cell;->setHyperlink(Lorg/apache/poi/ss/usermodel/Hyperlink;)V

    goto :goto_4

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createCell(Lorg/apache/poi/ss/usermodel/Row;ILjava/lang/String;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, p1, p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->createCell(Lorg/apache/poi/ss/usermodel/Row;ILjava/lang/String;Lorg/apache/poi/ss/usermodel/CellStyle;)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object p0

    return-object p0
.end method

.method public static createCell(Lorg/apache/poi/ss/usermodel/Row;ILjava/lang/String;Lorg/apache/poi/ss/usermodel/CellStyle;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/CellUtil;->getCell(Lorg/apache/poi/ss/usermodel/Row;I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getRow()Lorg/apache/poi/ss/usermodel/Row;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Workbook;->getCreationHelper()Lorg/apache/poi/ss/usermodel/CreationHelper;

    move-result-object p1

    .line 3
    invoke-interface {p1, p2}, Lorg/apache/poi/ss/usermodel/CreationHelper;->createRichTextString(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object p1

    .line 4
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    if-eqz p3, :cond_0

    .line 5
    invoke-interface {p0, p3}, Lorg/apache/poi/ss/usermodel/Cell;->setCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V

    :cond_0
    return-object p0
.end method

.method private static getBoolean(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static getBorderStyle(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/poi/ss/usermodel/BorderStyle;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/ss/usermodel/BorderStyle;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/poi/ss/util/CellUtil;->LOGGER:La5/d;

    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    const-string v1, "Deprecation warning: CellUtil properties map uses Short values for {}. Should use BorderStyle enums instead."

    invoke-interface {v0, p1, v1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    sget-object p0, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unexpected border style class. Must be BorderStyle or Short (deprecated)."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCell(Lorg/apache/poi/ss/usermodel/Row;I)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Row;->createCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static getColor(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Color;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/poi/ss/usermodel/Color;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lorg/apache/poi/ss/usermodel/Color;

    if-eqz p1, :cond_0

    check-cast p0, Lorg/apache/poi/ss/usermodel/Color;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getFillPattern(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/FillPatternType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/poi/ss/usermodel/FillPatternType;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lorg/apache/poi/ss/usermodel/FillPatternType;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/ss/usermodel/FillPatternType;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/poi/ss/util/CellUtil;->LOGGER:La5/d;

    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    const-string v1, "Deprecation warning: CellUtil properties map uses Short values for {}. Should use FillPatternType enums instead."

    invoke-interface {v0, p1, v1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/FillPatternType;->forInt(I)Lorg/apache/poi/ss/usermodel/FillPatternType;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    sget-object p0, Lorg/apache/poi/ss/usermodel/FillPatternType;->NO_FILL:Lorg/apache/poi/ss/usermodel/FillPatternType;

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unexpected fill pattern style class. Must be FillPatternType or Short (deprecated)."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getFormatProperties(Lorg/apache/poi/ss/usermodel/CellStyle;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/CellStyle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getAlignment()Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    move-result-object v1

    const-string v2, "alignment"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "verticalAlignment"

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getVerticalAlignment()Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "borderBottom"

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getBorderBottom()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "borderLeft"

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getBorderLeft()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "borderRight"

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getBorderRight()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "borderTop"

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getBorderTop()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getBottomBorderColor()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "bottomBorderColor"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormat()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "dataFormat"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "fillPattern"

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getFillPattern()Lorg/apache/poi/ss/usermodel/FillPatternType;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getFillForegroundColor()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "fillForegroundColor"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getFillBackgroundColor()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "fillBackgroundColor"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "fillForegroundColorColor"

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getFillForegroundColorColor()Lorg/apache/poi/ss/usermodel/Color;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "fillBackgroundColorColor"

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getFillBackgroundColorColor()Lorg/apache/poi/ss/usermodel/Color;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getFontIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "font"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getHidden()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "hidden"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getIndention()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "indention"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getLeftBorderColor()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "leftBorderColor"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getLocked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "locked"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getRightBorderColor()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "rightBorderColor"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getRotation()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "rotation"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getTopBorderColor()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "topBorderColor"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getWrapText()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "wrapText"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getShrinkToFit()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "shrinkToFit"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getQuotePrefixed()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "quotePrefixed"

    invoke-static {v0, v1, p0}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static getHorizontalAlignment(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/HorizontalAlignment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/poi/ss/usermodel/HorizontalAlignment;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/poi/ss/util/CellUtil;->LOGGER:La5/d;

    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    const-string v1, "Deprecation warning: CellUtil properties map used a Short value for {}. Should use HorizontalAlignment enums instead."

    invoke-interface {v0, p1, v1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->forInt(I)Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    sget-object p0, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->GENERAL:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unexpected horizontal alignment style class. Must be HorizontalAlignment or Short (deprecated)."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getInt(Ljava/util/Map;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getRow(ILorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/ss/usermodel/Row;
    .locals 1

    invoke-interface {p1, p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1, p0}, Lorg/apache/poi/ss/usermodel/Sheet;->createRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static getShort(Ljava/util/Map;Ljava/lang/String;)S
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")S"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static getVerticalAlignment(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/VerticalAlignment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/poi/ss/usermodel/VerticalAlignment;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/poi/ss/util/CellUtil;->LOGGER:La5/d;

    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    const-string v1, "Deprecation warning: CellUtil properties map used a Short value for {}. Should use VerticalAlignment enums instead."

    invoke-interface {v0, p1, v1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->forInt(I)Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    sget-object p0, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->BOTTOM:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unexpected vertical alignment style class. Must be VerticalAlignment or Short (deprecated)."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static nullableShort(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Short;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Short;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Short;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Short;

    return-object p0

    :cond_0
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static putAll(Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lorg/apache/poi/ss/util/CellUtil;->shortValues:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, v1}, Lorg/apache/poi/ss/util/CellUtil;->nullableShort(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/apache/poi/ss/util/CellUtil;->colorValues:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, v1}, Lorg/apache/poi/ss/util/CellUtil;->getColor(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Color;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/apache/poi/ss/util/CellUtil;->intValues:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0, v1}, Lorg/apache/poi/ss/util/CellUtil;->getInt(Ljava/util/Map;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object v2, Lorg/apache/poi/ss/util/CellUtil;->booleanValues:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0, v1}, Lorg/apache/poi/ss/util/CellUtil;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    sget-object v2, Lorg/apache/poi/ss/util/CellUtil;->borderTypeValues:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p0, v1}, Lorg/apache/poi/ss/util/CellUtil;->getBorderStyle(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const-string v2, "alignment"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p0, v1}, Lorg/apache/poi/ss/util/CellUtil;->getHorizontalAlignment(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const-string v2, "verticalAlignment"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p0, v1}, Lorg/apache/poi/ss/util/CellUtil;->getVerticalAlignment(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    const-string v2, "fillPattern"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {p0, v1}, Lorg/apache/poi/ss/util/CellUtil;->getFillPattern(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/FillPatternType;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    sget-object v2, Lorg/apache/poi/ss/util/CellUtil;->LOGGER:La5/d;

    invoke-interface {v2}, La5/d;->f()La5/b;

    move-result-object v2

    const-string v3, "Ignoring unrecognized CellUtil format properties key: {}"

    invoke-interface {v2, v1, v3}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public static setAlignment(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/HorizontalAlignment;)V
    .locals 1

    const-string v0, "alignment"

    invoke-static {p0, v0, p1}, Lorg/apache/poi/ss/util/CellUtil;->setCellStyleProperty(Lorg/apache/poi/ss/usermodel/Cell;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setCellStyleProperties(Lorg/apache/poi/ss/usermodel/Cell;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lorg/apache/poi/ss/util/CellUtil;->setCellStyleProperties(Lorg/apache/poi/ss/usermodel/Cell;Ljava/util/Map;Z)V

    return-void
.end method

.method private static setCellStyleProperties(Lorg/apache/poi/ss/usermodel/Cell;Ljava/util/Map;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 2
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    .line 3
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lorg/apache/poi/ss/util/CellUtil;->getFormatProperties(Lorg/apache/poi/ss/usermodel/CellStyle;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "fillForegroundColorColor"

    .line 5
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "fillForegroundColor"

    if-eqz v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 6
    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v2, "fillBackgroundColorColor"

    .line 9
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "fillBackgroundColor"

    if-eqz v3, :cond_2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 10
    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_2
    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 12
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_3
    invoke-static {p1, v1}, Lorg/apache/poi/ss/util/CellUtil;->putAll(Ljava/util/Map;Ljava/util/Map;)V

    .line 14
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Workbook;->getNumCellStyles()I

    move-result p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_5

    .line 15
    invoke-interface {v0, v2}, Lorg/apache/poi/ss/usermodel/Workbook;->getCellStyleAt(I)Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v3

    .line 16
    invoke-static {v3}, Lorg/apache/poi/ss/util/CellUtil;->getFormatProperties(Lorg/apache/poi/ss/usermodel/CellStyle;)Ljava/util/Map;

    move-result-object v4

    .line 17
    invoke-static {v4, v1, p2}, Lorg/apache/poi/ss/util/CellUtil;->styleMapsMatch(Ljava/util/Map;Ljava/util/Map;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_6

    .line 18
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Workbook;->createCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v3

    .line 19
    invoke-static {v3, v0, v1}, Lorg/apache/poi/ss/util/CellUtil;->setFormatProperties(Lorg/apache/poi/ss/usermodel/CellStyle;Lorg/apache/poi/ss/usermodel/Workbook;Ljava/util/Map;)V

    .line 20
    :cond_6
    invoke-interface {p0, v3}, Lorg/apache/poi/ss/usermodel/Cell;->setCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V

    return-void
.end method

.method public static setCellStyleProperty(Lorg/apache/poi/ss/usermodel/Cell;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    const-string v0, "fillForegroundColorColor"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "fillForegroundColor"

    invoke-virtual {p1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "fillBackgroundColorColor"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "fillBackgroundColor"

    invoke-virtual {p1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-static {p0, p1, v2}, Lorg/apache/poi/ss/util/CellUtil;->setCellStyleProperties(Lorg/apache/poi/ss/usermodel/Cell;Ljava/util/Map;Z)V

    return-void
.end method

.method public static setFont(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/Font;)V
    .locals 2

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Font;->getIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/usermodel/Workbook;->getFontAt(I)Lorg/apache/poi/ss/usermodel/Font;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "font"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/poi/ss/util/CellUtil;->setCellStyleProperty(Lorg/apache/poi/ss/usermodel/Cell;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Font does not belong to this workbook"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static setFormatProperties(Lorg/apache/poi/ss/usermodel/CellStyle;Lorg/apache/poi/ss/usermodel/Workbook;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/CellStyle;",
            "Lorg/apache/poi/ss/usermodel/Workbook;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "alignment"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getHorizontalAlignment(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setAlignment(Lorg/apache/poi/ss/usermodel/HorizontalAlignment;)V

    const-string v0, "verticalAlignment"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getVerticalAlignment(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setVerticalAlignment(Lorg/apache/poi/ss/usermodel/VerticalAlignment;)V

    const-string v0, "borderBottom"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getBorderStyle(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setBorderBottom(Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    const-string v0, "borderLeft"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getBorderStyle(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setBorderLeft(Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    const-string v0, "borderRight"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getBorderStyle(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setBorderRight(Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    const-string v0, "borderTop"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getBorderStyle(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setBorderTop(Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    const-string v0, "bottomBorderColor"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setBottomBorderColor(S)V

    const-string v0, "dataFormat"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setDataFormat(S)V

    const-string v0, "fillPattern"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getFillPattern(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/FillPatternType;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setFillPattern(Lorg/apache/poi/ss/usermodel/FillPatternType;)V

    const-string v0, "fillForegroundColor"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->nullableShort(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setFillForegroundColor(S)V

    :cond_0
    const-string v0, "fillBackgroundColor"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->nullableShort(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setFillBackgroundColor(S)V

    :cond_1
    const-string v0, "fillForegroundColorColor"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getColor(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Color;

    move-result-object v0

    const-string v1, "fillBackgroundColorColor"

    invoke-static {p2, v1}, Lorg/apache/poi/ss/util/CellUtil;->getColor(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Color;

    move-result-object v1

    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setFillForegroundColor(Lorg/apache/poi/ss/usermodel/Color;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lorg/apache/poi/ss/util/CellUtil;->LOGGER:La5/d;

    invoke-interface {v2}, La5/d;->e()La5/b;

    move-result-object v2

    const-string v3, "Mismatched FillForegroundColor instance used"

    invoke-interface {v2, v0, v3}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {p0, v1}, Lorg/apache/poi/ss/usermodel/CellStyle;->setFillBackgroundColor(Lorg/apache/poi/ss/usermodel/Color;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v1, Lorg/apache/poi/ss/util/CellUtil;->LOGGER:La5/d;

    invoke-interface {v1}, La5/d;->e()La5/b;

    move-result-object v1

    const-string v2, "Mismatched FillBackgroundColor instance used"

    invoke-interface {v1, v0, v2}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_1
    const-string v0, "font"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getInt(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Workbook;->getFontAt(I)Lorg/apache/poi/ss/usermodel/Font;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->setFont(Lorg/apache/poi/ss/usermodel/Font;)V

    const-string p1, "hidden"

    invoke-static {p2, p1}, Lorg/apache/poi/ss/util/CellUtil;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->setHidden(Z)V

    const-string p1, "indention"

    invoke-static {p2, p1}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result p1

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->setIndention(S)V

    const-string p1, "leftBorderColor"

    invoke-static {p2, p1}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result p1

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->setLeftBorderColor(S)V

    const-string p1, "locked"

    invoke-static {p2, p1}, Lorg/apache/poi/ss/util/CellUtil;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->setLocked(Z)V

    const-string p1, "rightBorderColor"

    invoke-static {p2, p1}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result p1

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->setRightBorderColor(S)V

    const-string p1, "rotation"

    invoke-static {p2, p1}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result p1

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->setRotation(S)V

    const-string p1, "topBorderColor"

    invoke-static {p2, p1}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result p1

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->setTopBorderColor(S)V

    const-string p1, "wrapText"

    invoke-static {p2, p1}, Lorg/apache/poi/ss/util/CellUtil;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->setWrapText(Z)V

    const-string p1, "shrinkToFit"

    invoke-static {p2, p1}, Lorg/apache/poi/ss/util/CellUtil;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->setShrinkToFit(Z)V

    const-string p1, "quotePrefixed"

    invoke-static {p2, p1}, Lorg/apache/poi/ss/util/CellUtil;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->setQuotePrefixed(Z)V

    return-void
.end method

.method public static setVerticalAlignment(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/VerticalAlignment;)V
    .locals 1

    const-string v0, "verticalAlignment"

    invoke-static {p0, v0, p1}, Lorg/apache/poi/ss/util/CellUtil;->setCellStyleProperty(Lorg/apache/poi/ss/usermodel/Cell;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static styleMapsMatch(Ljava/util/Map;Ljava/util/Map;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)Z"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string p1, "fillBackgroundColorColor"

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "fillForegroundColorColor"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p0}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    if-nez p2, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move p1, p0

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    if-nez p2, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_4
    move p2, p0

    goto :goto_1

    :cond_5
    move p2, v0

    :goto_1
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    move v0, p0

    :cond_6
    return v0
.end method

.method public static translateUnicodeValues(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 9

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/util/CellUtil;->unicodeMappings:[Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v6, v2, v4

    iget-object v7, v6, Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;->entityName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v5, v6, Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;->resolvedValue:Ljava/lang/String;

    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getRow()Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Workbook;->getCreationHelper()Lorg/apache/poi/ss/usermodel/CreationHelper;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/poi/ss/usermodel/CreationHelper;->createRichTextString(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    :cond_2
    return-object p0
.end method

.method private static um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
