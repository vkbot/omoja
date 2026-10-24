.class public Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;
.super Lorg/apache/poi/xssf/usermodel/XSSFShape;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lorg/apache/poi/ss/usermodel/SimpleShape;
.implements Lorg/apache/poi/xddf/usermodel/text/TextContainer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xssf/usermodel/XSSFShape;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;",
        ">;",
        "Lorg/apache/poi/ss/usermodel/SimpleShape;",
        "Lorg/apache/poi/xddf/usermodel/text/TextContainer;"
    }
.end annotation


# static fields
.field private static _romanAlphaValues:[I

.field private static _romanChars:[Ljava/lang/String;

.field private static prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;


# instance fields
.field private final _paragraphs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;",
            ">;"
        }
    .end annotation
.end field

.field private final _textBody:Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;

.field private ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "M"

    const-string v1, "CM"

    const-string v2, "D"

    const-string v3, "CD"

    const-string v4, "C"

    const-string v5, "XC"

    const-string v6, "L"

    const-string v7, "XL"

    const-string v8, "X"

    const-string v9, "IX"

    const-string v10, "V"

    const-string v11, "IV"

    const-string v12, "I"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_romanChars:[Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_romanAlphaValues:[I

    return-void

    :array_0
    .array-data 4
        0x3e8
        0x384
        0x1f4
        0x190
        0x64
        0x5a
        0x32
        0x28
        0xa
        0x9
        0x5
        0x4
        0x1
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V
    .locals 4

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFShape;->drawing:Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_paragraphs:Ljava/util/List;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_textBody:Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;-><init>(Lorg/apache/poi/xddf/usermodel/text/TextContainer;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_textBody:Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->sizeOfPArray()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_paragraphs:Ljava/util/List;

    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getPArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static applyAttributes(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V
    .locals 6

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->sizeOfBArray()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->getBArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->getVal()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setB(Z)V

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->sizeOfUArray()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->getUArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;->getVal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;

    move-result-object v0

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues;->SINGLE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;

    if-ne v0, v2, :cond_1

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->SNG:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setU(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)V

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues;->DOUBLE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;

    if-ne v0, v2, :cond_2

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DBL:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setU(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues;->NONE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;

    if-ne v0, v2, :cond_3

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setU(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)V

    :cond_3
    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->sizeOfIArray()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->getIArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->getVal()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setI(Z)V

    :cond_4
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->sizeOfRFontArray()I

    move-result v0

    if-lez v0, :cond_6

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetLatin()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getLatin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->addNewLatin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v0

    :goto_1
    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->getRFontArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontName;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontName;->getVal()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setTypeface(Ljava/lang/String;)V

    :cond_6
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->sizeOfSzArray()I

    move-result v0

    if-lez v0, :cond_7

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->getSzArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;->getVal()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setSz(I)V

    :cond_7
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->sizeOfColorArray()I

    move-result v0

    if-lez v0, :cond_c

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSolidFill()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object p1

    goto :goto_2

    :cond_8
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object p1

    :goto_2
    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->getColorArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetRgb()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetSrgbClr()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->getSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object p1

    goto :goto_3

    :cond_9
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->addNewSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object p1

    :goto_3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getRgb()[B

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->setVal([B)V

    goto :goto_5

    :cond_a
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetIndexed()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lorg/apache/poi/hssf/util/HSSFColor;->getIndexHash()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getIndexed()J

    move-result-wide v2

    long-to-int p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hssf/util/HSSFColor;

    if-eqz p0, :cond_c

    const/4 v0, 0x3

    new-array v0, v0, [B

    invoke-virtual {p0}, Lorg/apache/poi/hssf/util/HSSFColor;->getTriplet()[S

    move-result-object v2

    aget-short v2, v2, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/util/HSSFColor;->getTriplet()[S

    move-result-object v1

    const/4 v2, 0x1

    aget-short v1, v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/util/HSSFColor;->getTriplet()[S

    move-result-object p0

    const/4 v1, 0x2

    aget-short p0, p0, v1

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetSrgbClr()Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->getSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object p0

    goto :goto_4

    :cond_b
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->addNewSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object p0

    :goto_4
    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->setVal([B)V

    :cond_c
    :goto_5
    return-void
.end method

.method private getBulletPrefix(Lorg/apache/poi/xssf/usermodel/ListAutoNumber;I)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape$1;->$SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x29

    const/16 v3, 0x28

    const/16 v4, 0x2e

    packed-switch v1, :pswitch_data_0

    const/16 p0, 0x2022

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_0
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->valueToRoman(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_1
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->valueToRoman(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_2
    sget-object v1, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;->ROMAN_UC_PARENT_BOTH:Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    if-ne p1, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->valueToRoman(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_3
    sget-object v1, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;->ROMAN_LC_PARENT_BOTH:Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    if-ne p1, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->valueToRoman(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_4
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_6
    sget-object p0, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;->ARABIC_PARENT_BOTH:Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    if-ne p1, p0, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->valueToAlpha(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->valueToAlpha(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_9
    sget-object v1, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;->ALPHA_UC_PARENT_BOTH:Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    if-ne p1, v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->valueToAlpha(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_a
    sget-object v1, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;->ALPHA_LC_PARENT_BOTH:Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    if-ne p1, v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->valueToAlpha(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processAutoNumGroup(IILjava/util/List;Ljava/lang/StringBuilder;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")I"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getBulletAutoNumberStart()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getBulletAutoNumberScheme()Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    move-result-object v2

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    if-nez v1, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, p2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v3, 0x0

    move v5, v3

    :goto_1
    const/16 v6, 0x9

    if-ge v5, p2, :cond_2

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v2, v5}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->getBulletPrefix(Lorg/apache/poi/xssf/usermodel/ListAutoNumber;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    add-int/lit8 v5, p1, 0x1

    iget-object v7, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v5, v7, :cond_4

    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    iget-object v7, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

    :goto_3
    if-nez v7, :cond_5

    goto/16 :goto_5

    :cond_5
    invoke-virtual {v7}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->isBullet()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->isBulletAutoNumber()Z

    move-result v8

    if-nez v8, :cond_6

    goto/16 :goto_5

    :cond_6
    invoke-virtual {v7}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v8

    const/16 v9, 0xa

    if-le v8, p2, :cond_8

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_7

    invoke-virtual {p4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v7}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result p1

    invoke-direct {p0, v5, p1, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->processAutoNumGroup(IILjava/util/List;Ljava/lang/StringBuilder;)I

    move-result p1

    goto :goto_2

    :cond_8
    invoke-virtual {v7}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v8

    if-ge v8, p2, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v7}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getBulletAutoNumberScheme()Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    move-result-object v8

    invoke-virtual {v7}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getBulletAutoNumberStart()I

    move-result v10

    if-ne v8, v2, :cond_d

    if-ne v10, v1, :cond_d

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_a

    invoke-virtual {p4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    move p1, v3

    :goto_4
    if-ge p1, p2, :cond_b

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_b
    invoke-virtual {v7}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_c

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, v8, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->getBulletPrefix(Lorg/apache/poi/xssf/usermodel/ListAutoNumber;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    move p1, v5

    goto/16 :goto_2

    :cond_d
    :goto_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p2, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return p1
.end method

.method public static prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;
    .locals 6

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    if-nez v0, :cond_0

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->addNewNvSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;->addNewCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v2

    const-wide/16 v3, 0x1

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    const-string v3, "Shape 1"

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;->addNewCNvSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingShapeProps;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setX(Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setY(Ljava/lang/Object;)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType;->RECT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->setPrst(Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->addNewAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;

    const/4 v2, 0x0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->addNewTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;-><init>(Lorg/apache/poi/xddf/usermodel/text/TextContainer;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;)V

    invoke-virtual {v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->initialize()Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getAfterLastRunProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbBinary;

    const/4 v3, 0x3

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbBinary;-><init>([B)V

    new-instance v3, Lorg/apache/poi/xddf/usermodel/XDDFSolidFillProperties;

    invoke-direct {v3, v2}, Lorg/apache/poi/xddf/usermodel/XDDFSolidFillProperties;-><init>(Lorg/apache/poi/xddf/usermodel/XDDFColor;)V

    invoke-virtual {v1, v3}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->setFillProperties(Lorg/apache/poi/xddf/usermodel/XDDFFillProperties;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    :cond_0
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private valueToAlpha(I)Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-lez p1, :cond_0

    add-int/lit8 v0, p1, -0x1

    rem-int/lit8 v0, v0, 0x1a

    add-int/lit8 v1, v0, 0x41

    int-to-char v1, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x1a

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private valueToRoman(I)Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-lez p1, :cond_1

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_romanChars:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    :goto_1
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_romanAlphaValues:[I

    aget v1, v1, v0

    if-gt v1, p1, :cond_0

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_romanChars:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_romanAlphaValues:[I

    aget v1, v1, v0

    sub-int/2addr p1, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addNewTextParagraph()Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    .line 1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->addNewP()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v0

    .line 3
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_paragraphs:Ljava/util/List;

    .line 4
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public addNewTextParagraph(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->addNewTextParagraph()Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->addNewTextRun()Lorg/apache/poi/xssf/usermodel/XSSFTextRun;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->setText(Ljava/lang/String;)V

    return-object p0
.end method

.method public addNewTextParagraph(Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;)Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    .line 7
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->addNewP()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->numFormattingRuns()I

    move-result v1

    const-string v2, "en-US"

    if-nez v1, :cond_0

    .line 10
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewR()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    move-result-object v1

    .line 11
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->addNewRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v3

    .line 12
    invoke-interface {v3, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setLang(Ljava/lang/String;)V

    const/16 v2, 0x44c

    .line 13
    invoke-interface {v3, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setSz(I)V

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setT(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getCTRst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->sizeOfRArray()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 16
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getCTRst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->getRArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;

    move-result-object v3

    .line 17
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;->getRPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;

    move-result-object v4

    if-nez v4, :cond_1

    .line 18
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;->addNewRPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;

    move-result-object v4

    .line 19
    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewR()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    move-result-object v5

    .line 20
    invoke-interface {v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->addNewRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v6

    .line 21
    invoke-interface {v6, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setLang(Ljava/lang/String;)V

    .line 22
    invoke-static {v4, v6}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->applyAttributes(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    .line 23
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;->getT()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setT(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24
    :cond_2
    :goto_1
    new-instance p1, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-direct {p1, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_paragraphs:Ljava/util/List;

    .line 25
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public clearText()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->setPArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;)V

    return-void
.end method

.method public findDefinedParagraphProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;",
            ">;",
            "Ljava/util/function/Function<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;",
            "TR;>;)",
            "Ljava/util/Optional<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public findDefinedRunProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;",
            ">;",
            "Ljava/util/function/Function<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;",
            "TR;>;)",
            "Ljava/util/Optional<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getBottomInset()D
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_textBody:Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->getBodyProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->getBottomInset()Ljava/lang/Double;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide v0, 0x400ccccccccccccdL    # 3.6

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getCTShape()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    return-object p0
.end method

.method public getLeftInset()D
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_textBody:Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->getBodyProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->getLeftInset()Ljava/lang/Double;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide v0, 0x400ccccccccccccdL    # 3.6

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getRightInset()D
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_textBody:Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->getBodyProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->getRightInset()Ljava/lang/Double;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide v0, 0x400ccccccccccccdL    # 3.6

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getShapeId()I
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getNvSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getId()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public getShapeName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getNvSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShapeProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    return-object p0
.end method

.method public getShapeType()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->getPrst()Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    move-result-object p0

    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    return p0
.end method

.method public getText()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_1
    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1

    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->isBullet()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v7

    const/16 v8, 0x8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->isBulletAutoNumber()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-direct {p0, v5, v7, v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->processAutoNumGroup(IILjava/util/List;Ljava/lang/StringBuilder;)I

    move-result v5

    goto :goto_5

    :cond_2
    move v8, v3

    :goto_2
    if-ge v8, v7, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getBulletCharacter()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_4
    const-string v7, "- "

    :goto_3
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_5
    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v3

    :goto_4
    if-ge v6, v2, :cond_6

    invoke-virtual {v1, v6, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextAutofit()Lorg/apache/poi/xssf/usermodel/TextAutofit;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetNoAutofit()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/apache/poi/xssf/usermodel/TextAutofit;->NONE:Lorg/apache/poi/xssf/usermodel/TextAutofit;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetNormAutofit()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lorg/apache/poi/xssf/usermodel/TextAutofit;->NORMAL:Lorg/apache/poi/xssf/usermodel/TextAutofit;

    return-object p0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetSpAutoFit()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lorg/apache/poi/xssf/usermodel/TextAutofit;->SHAPE:Lorg/apache/poi/xssf/usermodel/TextAutofit;

    return-object p0

    :cond_2
    sget-object p0, Lorg/apache/poi/xssf/usermodel/TextAutofit;->NORMAL:Lorg/apache/poi/xssf/usermodel/TextAutofit;

    return-object p0
.end method

.method public getTextBody()Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_textBody:Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;

    return-object p0
.end method

.method public getTextDirection()Lorg/apache/poi/xssf/usermodel/TextDirection;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getVert()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/TextDirection;->values()[Lorg/apache/poi/xssf/usermodel/TextDirection;

    move-result-object v0

    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/poi/xssf/usermodel/TextDirection;->HORIZONTAL:Lorg/apache/poi/xssf/usermodel/TextDirection;

    return-object p0
.end method

.method public getTextHorizontalOverflow()Lorg/apache/poi/xssf/usermodel/TextHorizontalOverflow;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetHorzOverflow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/TextHorizontalOverflow;->values()[Lorg/apache/poi/xssf/usermodel/TextHorizontalOverflow;

    move-result-object v0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getHorzOverflow()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextHorzOverflowType$Enum;

    move-result-object p0

    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/poi/xssf/usermodel/TextHorizontalOverflow;->OVERFLOW:Lorg/apache/poi/xssf/usermodel/TextHorizontalOverflow;

    return-object p0
.end method

.method public getTextParagraphs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_paragraphs:Ljava/util/List;

    return-object p0
.end method

.method public getTextVerticalOverflow()Lorg/apache/poi/xssf/usermodel/TextVerticalOverflow;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetVertOverflow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/TextVerticalOverflow;->values()[Lorg/apache/poi/xssf/usermodel/TextVerticalOverflow;

    move-result-object v0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getVertOverflow()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType$Enum;

    move-result-object p0

    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/poi/xssf/usermodel/TextVerticalOverflow;->OVERFLOW:Lorg/apache/poi/xssf/usermodel/TextVerticalOverflow;

    return-object p0
.end method

.method public getTopInset()D
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_textBody:Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->getBodyProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->getTopInset()Ljava/lang/Double;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide v0, 0x400ccccccccccccdL    # 3.6

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getVerticalAlignment()Lorg/apache/poi/ss/usermodel/VerticalAlignment;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetAnchor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->values()[Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    move-result-object v0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getAnchor()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;

    move-result-object p0

    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->TOP:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    return-object p0
.end method

.method public getWordWrap()Z
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetWrap()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getWrap()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextWrappingType$Enum;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextWrappingType;->SQUARE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextWrappingType$Enum;

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_paragraphs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public setBottomInset(D)V
    .locals 2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_textBody:Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->getBodyProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->setBottomInset(Ljava/lang/Double;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_textBody:Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->getBodyProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->setBottomInset(Ljava/lang/Double;)V

    :goto_0
    return-void
.end method

.method public setLeftInset(D)V
    .locals 2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_textBody:Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->getBodyProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->setLeftInset(Ljava/lang/Double;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_textBody:Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->getBodyProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->setLeftInset(Ljava/lang/Double;)V

    :goto_0
    return-void
.end method

.method public setRightInset(D)V
    .locals 2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_textBody:Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->getBodyProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->setRightInset(Ljava/lang/Double;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_textBody:Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->getBodyProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->setRightInset(Ljava/lang/Double;)V

    :goto_0
    return-void
.end method

.method public setShapeType(I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object p0

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->setPrst(Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->clearText()V

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->addNewTextParagraph()Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->addNewTextRun()Lorg/apache/poi/xssf/usermodel/XSSFTextRun;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setText(Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;)V
    .locals 8

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->getDrawing()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getParent()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getParent()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 4
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->setStylesTableReference(Lorg/apache/poi/xssf/model/StylesTable;)V

    .line 5
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    .line 6
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->numFormattingRuns()I

    move-result v1

    const-string v2, "en-US"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 7
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewR()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    move-result-object v1

    .line 8
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->addNewRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v4

    .line 9
    invoke-interface {v4, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setLang(Ljava/lang/String;)V

    const/16 v2, 0x44c

    .line 10
    invoke-interface {v4, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setSz(I)V

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setT(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    move v1, v3

    .line 12
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getCTRst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->sizeOfRArray()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getCTRst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->getRArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;

    move-result-object v4

    .line 14
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;->getRPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;

    move-result-object v5

    if-nez v5, :cond_1

    .line 15
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;->addNewRPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;

    move-result-object v5

    .line 16
    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewR()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    move-result-object v6

    .line 17
    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->addNewRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v7

    .line 18
    invoke-interface {v7, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setLang(Ljava/lang/String;)V

    .line 19
    invoke-static {v5, v7}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->applyAttributes(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    .line 20
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;->getT()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setT(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->clearText()V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    .line 22
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    aput-object v0, v1, v3

    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->setPArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_paragraphs:Ljava/util/List;

    .line 23
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v1

    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getPArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setTextAutofit(Lorg/apache/poi/xssf/usermodel/TextAutofit;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetSpAutoFit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetSpAutoFit()V

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetNoAutofit()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetNoAutofit()V

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetNormAutofit()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetNormAutofit()V

    :cond_2
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape$1;->$SwitchMap$org$apache$poi$xssf$usermodel$TextAutofit:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->addNewSpAutoFit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextShapeAutofit;

    goto :goto_0

    :cond_4
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->addNewNormAutofit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;

    goto :goto_0

    :cond_5
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->addNewNoAutofit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNoAutofit;

    :cond_6
    :goto_0
    return-void
.end method

.method public setTextDirection(Lorg/apache/poi/xssf/usermodel/TextDirection;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object p0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetVert()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetVert()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setVert(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTextHorizontalOverflow(Lorg/apache/poi/xssf/usermodel/TextHorizontalOverflow;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object p0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetHorzOverflow()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetHorzOverflow()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextHorzOverflowType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextHorzOverflowType$Enum;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setHorzOverflow(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextHorzOverflowType$Enum;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTextVerticalOverflow(Lorg/apache/poi/xssf/usermodel/TextVerticalOverflow;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object p0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetVertOverflow()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetVertOverflow()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType$Enum;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setVertOverflow(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType$Enum;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTopInset(D)V
    .locals 2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_textBody:Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->getBodyProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->setTopInset(Ljava/lang/Double;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_textBody:Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->getBodyProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->setTopInset(Ljava/lang/Double;)V

    :goto_0
    return-void
.end method

.method public setVerticalAlignment(Lorg/apache/poi/ss/usermodel/VerticalAlignment;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object p0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetAnchor()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetAnchor()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setAnchor(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setWordWrap(Z)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextWrappingType;->SQUARE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextWrappingType$Enum;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextWrappingType;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextWrappingType$Enum;

    :goto_0
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setWrap(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextWrappingType$Enum;)V

    :cond_1
    return-void
.end method

.method public setXfrm(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setXfrm(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;)V

    return-void
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_paragraphs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
