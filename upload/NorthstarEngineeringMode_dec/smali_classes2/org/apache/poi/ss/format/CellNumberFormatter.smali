.class public Lorg/apache/poi/ss/format/CellNumberFormatter;
.super Lorg/apache/poi/ss/format/CellFormatter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/format/CellNumberFormatter$Special;,
        Lorg/apache/poi/ss/format/CellNumberFormatter$GeneralNumberFormatter;
    }
.end annotation


# static fields
.field private static final LOG:La5/d;


# instance fields
.field private final SIMPLE_NUMBER:Lorg/apache/poi/ss/format/CellFormatter;

.field private final afterFractional:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field private final afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field private final decimalFmt:Ljava/text/DecimalFormat;

.field private final decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field private final denominatorFmt:Ljava/lang/String;

.field private final denominatorSpecials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation
.end field

.field private final desc:Ljava/lang/String;

.field private final exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field private final exponentDigitSpecials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation
.end field

.field private final exponentSpecials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation
.end field

.field private final fractionalSpecials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation
.end field

.field private final improperFraction:Z

.field private final integerSpecials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation
.end field

.field private final maxDenominator:I

.field private final numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field private final numeratorFmt:Ljava/lang/String;

.field private final numeratorSpecials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation
.end field

.field private final printfFmt:Ljava/lang/String;

.field private final scale:D

.field private final showGroupingSeparator:Z

.field private final slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field private final specials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/ss/format/CellNumberFormatter;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    .line 2
    invoke-direct/range {p0 .. p2}, Lorg/apache/poi/ss/format/CellFormatter;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    .line 3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    .line 4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    .line 5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalSpecials:Ljava/util/List;

    .line 6
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    .line 7
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorSpecials:Ljava/util/List;

    .line 8
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponentSpecials:Ljava/util/List;

    .line 9
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponentDigitSpecials:Ljava/util/List;

    .line 10
    new-instance v1, Lorg/apache/poi/ss/format/CellNumberFormatter$GeneralNumberFormatter;

    iget-object v2, v0, Lorg/apache/poi/ss/format/CellFormatter;->locale:Ljava/util/Locale;

    const/4 v14, 0x0

    invoke-direct {v1, v2, v14}, Lorg/apache/poi/ss/format/CellNumberFormatter$GeneralNumberFormatter;-><init>(Ljava/util/Locale;Lorg/apache/poi/ss/format/CellNumberFormatter$1;)V

    iput-object v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->SIMPLE_NUMBER:Lorg/apache/poi/ss/format/CellFormatter;

    .line 11
    new-instance v1, Lorg/apache/poi/ss/format/CellNumberPartHandler;

    invoke-direct {v1}, Lorg/apache/poi/ss/format/CellNumberPartHandler;-><init>()V

    .line 12
    sget-object v2, Lorg/apache/poi/ss/format/CellFormatType;->NUMBER:Lorg/apache/poi/ss/format/CellFormatType;

    move-object/from16 v3, p2

    invoke-static {v3, v2, v1}, Lorg/apache/poi/ss/format/CellFormatPart;->parseFormat(Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;Lorg/apache/poi/ss/format/CellFormatPart$PartHandler;)Ljava/lang/StringBuffer;

    move-result-object v15

    .line 13
    invoke-virtual {v1}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getExponent()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v6

    iput-object v6, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 14
    invoke-virtual {v1}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getSpecials()Ljava/util/List;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    invoke-virtual {v1}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->isImproperFraction()Z

    move-result v2

    iput-boolean v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->improperFraction:Z

    .line 16
    invoke-virtual {v1}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getDecimalPoint()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getExponent()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getSlash()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v2

    if-eqz v2, :cond_1

    iput-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iput-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getSlash()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 18
    invoke-virtual {v1}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getNumerator()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 19
    :goto_0
    invoke-virtual {v1}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getDecimalPoint()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v2

    invoke-static {v2, v7}, Lorg/apache/poi/ss/format/CellNumberFormatter;->interpretPrecision(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;Ljava/util/List;)I

    move-result v5

    .line 20
    invoke-virtual {v1}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getDecimalPoint()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    add-int/lit8 v2, v5, 0x1

    if-nez v5, :cond_2

    .line 21
    invoke-virtual {v1}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getDecimalPoint()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iput-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    goto :goto_1

    .line 22
    :cond_2
    invoke-virtual {v1}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getDecimalPoint()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v3

    iput-object v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    :goto_1
    move/from16 v16, v2

    goto :goto_2

    :cond_3
    iput-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move/from16 v16, v4

    :goto_2
    iget-object v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v2, :cond_4

    iput-object v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    goto :goto_3

    :cond_4
    if-eqz v6, :cond_5

    iput-object v6, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    goto :goto_3

    :cond_5
    iget-object v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v2, :cond_6

    iput-object v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    goto :goto_3

    :cond_6
    iput-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    :goto_3
    if-eqz v6, :cond_7

    iput-object v6, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterFractional:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    goto :goto_4

    :cond_7
    iget-object v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v2, :cond_8

    iput-object v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterFractional:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    goto :goto_4

    :cond_8
    iput-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterFractional:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    :goto_4
    const/4 v3, 0x1

    new-array v2, v3, [D

    .line 23
    invoke-virtual {v1}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getScale()D

    move-result-wide v17

    aput-wide v17, v2, v4

    iget-object v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 24
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerEnd()I

    move-result v17

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalEnd()I

    move-result v18

    move-object/from16 v19, v1

    move-object v1, v15

    move-object/from16 v20, v2

    move-object v2, v7

    move v14, v3

    move-object/from16 v3, v19

    move v14, v4

    move/from16 v4, v17

    move/from16 v21, v5

    move/from16 v5, v18

    move-object v14, v6

    move-object/from16 v6, v20

    invoke-static/range {v1 .. v6}, Lorg/apache/poi/ss/format/CellNumberFormatter;->interpretIntegerCommas(Ljava/lang/StringBuffer;Ljava/util/List;Lorg/apache/poi/ss/format/CellNumberFormatter$Special;II[D)Z

    move-result v1

    iput-boolean v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->showGroupingSeparator:Z

    if-nez v14, :cond_9

    const/4 v1, 0x0

    aget-wide v2, v20, v1

    iput-wide v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->scale:D

    :goto_5
    move/from16 v1, v21

    goto :goto_6

    :cond_9
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iput-wide v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->scale:D

    goto :goto_5

    :goto_6
    if-eqz v1, :cond_a

    iget-object v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 25
    invoke-interface {v7, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalEnd()I

    move-result v3

    invoke-interface {v7, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_a
    const/4 v2, 0x2

    if-eqz v14, :cond_b

    .line 26
    invoke-interface {v7, v14}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 27
    invoke-direct {v0, v3, v2}, Lorg/apache/poi/ss/format/CellNumberFormatter;->specialsFor(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/2addr v3, v2

    .line 28
    invoke-direct {v0, v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->specialsFor(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_b
    iget-object v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v3, :cond_e

    iget-object v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v3, :cond_c

    .line 29
    invoke-interface {v7, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-direct {v0, v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->specialsFor(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_c
    iget-object v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 30
    invoke-interface {v7, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-direct {v0, v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->specialsFor(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 32
    invoke-interface {v10}, Ljava/util/List;->clear()V

    iput v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->maxDenominator:I

    const/4 v3, 0x0

    iput-object v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorFmt:Ljava/lang/String;

    iput-object v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorFmt:Ljava/lang/String;

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    .line 33
    invoke-static {v11}, Lorg/apache/poi/ss/format/CellNumberFormatter;->maxValue(Ljava/util/List;)I

    move-result v5

    iput v5, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->maxDenominator:I

    .line 34
    invoke-static {v10}, Lorg/apache/poi/ss/format/CellNumberFormatter;->singleNumberFormat(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorFmt:Ljava/lang/String;

    .line 35
    invoke-static {v11}, Lorg/apache/poi/ss/format/CellNumberFormatter;->singleNumberFormat(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorFmt:Ljava/lang/String;

    goto :goto_7

    :cond_e
    const/4 v3, 0x0

    const/4 v4, 0x1

    iput v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->maxDenominator:I

    iput-object v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorFmt:Ljava/lang/String;

    iput-object v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorFmt:Ljava/lang/String;

    .line 36
    :goto_7
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerEnd()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v7, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/16 v3, 0x2e

    if-nez v14, :cond_10

    .line 37
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->calculateIntegerPartWidth()I

    move-result v2

    add-int v2, v2, v16

    if-nez v2, :cond_f

    const-string v1, ""

    iput-object v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->printfFmt:Ljava/lang/String;

    :goto_8
    const/4 v1, 0x0

    goto :goto_9

    .line 38
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "%0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "f"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->printfFmt:Ljava/lang/String;

    goto :goto_8

    :goto_9
    iput-object v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalFmt:Ljava/text/DecimalFormat;

    goto/16 :goto_e

    .line 39
    :cond_10
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 40
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x30

    const/4 v7, 0x1

    if-ne v5, v7, :cond_11

    const-string v5, "0"

    .line 41
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v7, v4

    goto :goto_c

    .line 42
    :cond_11
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_12
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 43
    invoke-static {v8}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v8

    if-eqz v8, :cond_12

    if-eqz v7, :cond_13

    const/16 v7, 0x23

    goto :goto_b

    :cond_13
    move v7, v6

    .line 44
    :goto_b
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v7, v4

    goto :goto_a

    :cond_14
    :goto_c
    iget-object v5, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalSpecials:Ljava/util/List;

    .line 45
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_17

    .line 46
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalSpecials:Ljava/util/List;

    .line 47
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 48
    invoke-static {v5}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v5

    if-eqz v5, :cond_15

    if-nez v7, :cond_16

    .line 49
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_16
    move v7, v4

    goto :goto_d

    :cond_17
    const/16 v3, 0x45

    .line 50
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponentSpecials:Ljava/util/List;

    .line 51
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, v2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/poi/ss/format/CellNumberFormatter;->placeZeros(Ljava/lang/StringBuffer;Ljava/util/List;)V

    .line 52
    new-instance v2, Ljava/text/DecimalFormat;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalFmt:Ljava/text/DecimalFormat;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->printfFmt:Ljava/lang/String;

    .line 53
    :goto_e
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->desc:Ljava/lang/String;

    return-void
.end method

.method private calculateIntegerPartWidth()I
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iget-object v3, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private static deleteMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;Z)Lorg/apache/poi/ss/format/CellNumberStringMod;
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/format/CellNumberStringMod;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/poi/ss/format/CellNumberStringMod;-><init>(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;Z)V

    return-object v0
.end method

.method private fractionalEnd()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterFractional:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iget-object p0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    :goto_0
    return p0
.end method

.method private getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/format/CellFormatter;->locale:Ljava/util/Locale;

    invoke-static {p0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object p0

    return-object p0
.end method

.method private static hasChar(CLjava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 2
    iget-char v0, v0, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static hasChar(CLjava/util/List;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;)Z"
        }
    .end annotation

    .line 3
    invoke-static {p0, p1}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(CLjava/util/List;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0, p2}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(CLjava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static hasChar(CLjava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;)Z"
        }
    .end annotation

    .line 4
    invoke-static {p0, p1}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(CLjava/util/List;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0, p2}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(CLjava/util/List;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0, p3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(CLjava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static insertMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;Ljava/lang/CharSequence;I)Lorg/apache/poi/ss/format/CellNumberStringMod;
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/format/CellNumberStringMod;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/ss/format/CellNumberStringMod;-><init>(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method private integerEnd()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iget-object p0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    :goto_0
    return p0
.end method

.method private static interpretIntegerCommas(Ljava/lang/StringBuffer;Ljava/util/List;Lorg/apache/poi/ss/format/CellNumberFormatter$Special;II[D)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            "II[D)Z"
        }
    .end annotation

    invoke-interface {p1, p3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    :goto_0
    invoke-interface {p3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    const-wide v5, 0x408f400000000000L    # 1000.0

    const/16 v7, 0x2c

    if-eqz v4, :cond_2

    invoke-interface {p3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iget-char v4, v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-eq v4, v7, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    aget-wide v7, p5, v1

    div-double/2addr v7, v5

    aput-wide v7, p5, v1

    goto :goto_0

    :cond_1
    move v3, v0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    invoke-interface {p1, p4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iget-char p3, p3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-eq p3, v7, :cond_3

    goto :goto_2

    :cond_3
    aget-wide p3, p5, v1

    div-double/2addr p3, v5

    aput-wide p3, p5, v1

    goto :goto_1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iget p3, p2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    sub-int/2addr p3, v1

    iput p3, p2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    iget-char p3, p2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-ne p3, v7, :cond_5

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    iget p2, p2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_6
    return v3
.end method

.method private static interpretPrecision(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1

    add-int/lit8 p0, p0, 0x1

    invoke-interface {p1, p0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-static {p1}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method private static isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z
    .locals 1

    iget-char p0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    const/16 v0, 0x30

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static lastSpecial(Ljava/util/List;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;)",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    return-object p0
.end method

.method private localiseFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object p0

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "."

    const/16 v2, 0x2e

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v0

    const/16 v3, 0x2c

    if-eq v0, v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v0

    if-eq v0, v2, :cond_0

    const-string v0, "\\."

    const-string v1, "[DECIMAL_SEPARATOR]"

    invoke-static {p1, v0, v1}, Lorg/apache/poi/ss/format/CellNumberFormatter;->replaceLast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result p0

    invoke-virtual {p1, v3, p0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result p0

    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method private static maxValue(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    int-to-double v0, p0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result p0

    return p0
.end method

.method private static placeZeros(Ljava/lang/StringBuffer;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-static {v0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static replaceLast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "(?s)(.*)"

    invoke-static {v0, p1}, Landroidx/activity/result/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static replaceMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;ZC)Lorg/apache/poi/ss/format/CellNumberStringMod;
    .locals 7

    new-instance v6, Lorg/apache/poi/ss/format/CellNumberStringMod;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/format/CellNumberStringMod;-><init>(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;ZC)V

    return-object v6
.end method

.method private static singleNumberFormat(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "d"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private specialsFor(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->specialsFor(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private specialsFor(II)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    .line 1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    add-int/2addr p2, p1

    .line 3
    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 7
    invoke-static {v2}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    iget v1, v1, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    sub-int/2addr v4, v1

    if-le v4, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    move-object v1, v2

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    add-int/2addr p2, v3

    .line 8
    invoke-interface {p0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private writeFraction(DLjava/lang/StringBuffer;DLjava/lang/StringBuffer;Ljava/util/Set;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/lang/StringBuffer;",
            "D",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/Set<",
            "Lorg/apache/poi/ss/format/CellNumberStringMod;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v7, p4

    move-object/from16 v9, p7

    iget-boolean v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->improperFraction:Z

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    if-nez v1, :cond_a

    cmpl-double v1, v7, v10

    const/16 v13, 0x20

    const/16 v14, 0x3f

    const/16 v2, 0x30

    const/4 v15, 0x0

    if-nez v1, :cond_1

    iget-object v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    invoke-static {v2, v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(CLjava/util/List;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V

    iget-object v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    invoke-static {v1}, Lorg/apache/poi/ss/format/CellNumberFormatter;->lastSpecial(Ljava/util/List;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorSpecials:Ljava/util/List;

    invoke-static {v2}, Lorg/apache/poi/ss/format/CellNumberFormatter;->lastSpecial(Ljava/util/List;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v2

    iget-object v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    iget-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    iget-object v0, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorSpecials:Ljava/util/List;

    invoke-static {v14, v3, v4, v0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(CLjava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1, v15, v2, v12, v13}, Lorg/apache/poi/ss/format/CellNumberFormatter;->replaceMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;ZC)Lorg/apache/poi/ss/format/CellNumberStringMod;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1, v15, v2, v12}, Lorg/apache/poi/ss/format/CellNumberFormatter;->deleteMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;Z)Lorg/apache/poi/ss/format/CellNumberStringMod;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_1
    iget-object v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    invoke-static {v2, v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(CLjava/util/List;)Z

    move-result v3

    xor-int/2addr v3, v12

    iget-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    invoke-static {v2, v4}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(CLjava/util/List;)Z

    move-result v2

    xor-int/2addr v2, v12

    iget-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v12, :cond_2

    const/16 v4, 0x23

    iget-object v5, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    invoke-static {v4, v5}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(CLjava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v15

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v12

    :goto_2
    if-nez v1, :cond_5

    if-nez v4, :cond_4

    if-eqz v3, :cond_5

    :cond_4
    move v3, v12

    goto :goto_3

    :cond_5
    move v3, v15

    :goto_3
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    move v1, v12

    goto :goto_4

    :cond_6
    move v1, v15

    :goto_4
    cmpl-double v2, p1, v10

    if-nez v2, :cond_9

    if-nez v3, :cond_7

    if-eqz v1, :cond_9

    :cond_7
    iget-object v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    invoke-static {v1}, Lorg/apache/poi/ss/format/CellNumberFormatter;->lastSpecial(Ljava/util/List;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    iget-object v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    invoke-static {v14, v2, v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(CLjava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-static {v1, v12, v2, v15, v13}, Lorg/apache/poi/ss/format/CellNumberFormatter;->replaceMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;ZC)Lorg/apache/poi/ss/format/CellNumberStringMod;

    move-result-object v1

    goto :goto_5

    :cond_8
    iget-object v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-static {v1, v12, v2, v15}, Lorg/apache/poi/ss/format/CellNumberFormatter;->deleteMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;Z)Lorg/apache/poi/ss/format/CellNumberStringMod;

    move-result-object v1

    :goto_5
    invoke-interface {v9, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    iget-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V

    :cond_a
    :goto_6
    cmpl-double v1, v7, v10

    if-eqz v1, :cond_c

    :try_start_0
    iget-boolean v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->improperFraction:Z

    if-eqz v1, :cond_b

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    rem-double v1, v7, v1

    cmpl-double v1, v1, v10

    if-nez v1, :cond_b

    goto :goto_7

    :cond_b
    iget v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->maxDenominator:I

    invoke-static {v7, v8, v1}, Lorg/apache/poi/ss/format/SimpleFraction;->buildFractionMaxDenominator(DI)Lorg/apache/poi/ss/format/SimpleFraction;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/format/SimpleFraction;->getNumerator()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/poi/ss/format/SimpleFraction;->getDenominator()I

    move-result v1

    move v12, v1

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_a

    :cond_c
    :goto_7
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v2, v1

    :goto_8
    iget-boolean v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->improperFraction:Z

    if-eqz v1, :cond_d

    int-to-long v1, v2

    int-to-double v3, v12

    mul-double v3, v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->toIntExact(J)I

    move-result v1

    move v3, v1

    goto :goto_9

    :cond_d
    move v3, v2

    :goto_9
    iget-object v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorFmt:Ljava/lang/String;

    iget-object v5, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    move-object/from16 v1, p0

    move-object/from16 v4, p6

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeSingleInteger(Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;)V

    iget-object v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorFmt:Ljava/lang/String;

    iget-object v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorSpecials:Ljava/util/List;

    move-object/from16 p1, v1

    move/from16 p2, v12

    move-object/from16 p3, p6

    move-object/from16 p4, v2

    move-object/from16 p5, p7

    invoke-direct/range {p0 .. p5}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeSingleInteger(Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :goto_a
    sget-object v1, Lorg/apache/poi/ss/format/CellNumberFormatter;->LOG:La5/d;

    invoke-interface {v1}, La5/d;->h()La5/b;

    move-result-object v1

    invoke-interface {v1, v0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object v0

    const-string v1, "error while fraction evaluation"

    invoke-interface {v0, v1}, La5/b;->f(Ljava/lang/String;)V

    :goto_b
    return-void
.end method

.method private writeFractional(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalSpecials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v1, :cond_0

    const-string v1, "e"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    goto :goto_0

    :goto_1
    const/16 v2, 0x30

    if-le v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalSpecials:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_3

    iget-char v5, v3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-eq v5, v2, :cond_3

    if-ge v0, v1, :cond_2

    goto :goto_3

    :cond_2
    const/16 v4, 0x3f

    if-ne v5, v4, :cond_4

    iget v3, v3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    const/16 v4, 0x20

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_4

    :cond_3
    :goto_3
    iget v3, v3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    :cond_4
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/apache/poi/ss/format/CellNumberStringMod;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v4

    invoke-virtual {v4}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    if-gez v5, :cond_1

    iget-object v5, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v5, :cond_0

    iget-object v0, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    if-ne v2, v0, :cond_0

    const-string v0, "E"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    :goto_0
    add-int/lit8 v5, v0, -0x1

    goto :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    move v8, v0

    :goto_2
    const/16 v9, 0x30

    if-ge v8, v5, :cond_3

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v10

    if-eq v10, v9, :cond_2

    invoke-virtual {v4}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v11

    if-eq v10, v11, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    const/4 v4, 0x0

    move v10, v0

    :goto_4
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v11

    if-eqz v11, :cond_c

    if-ltz v5, :cond_4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v11

    goto :goto_5

    :cond_4
    move v11, v9

    :goto_5
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz p5, :cond_5

    if-lez v10, :cond_5

    rem-int/lit8 v13, v10, 0x3

    if-nez v13, :cond_5

    move v13, v7

    goto :goto_6

    :cond_5
    move v13, v0

    :goto_6
    const/16 v14, 0x3f

    if-ne v11, v9, :cond_7

    iget-char v15, v12, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-eq v15, v9, :cond_7

    if-eq v15, v14, :cond_7

    if-lt v5, v8, :cond_6

    goto :goto_7

    :cond_6
    move-object/from16 v15, p2

    move-object v11, v4

    move v4, v0

    goto :goto_9

    :cond_7
    :goto_7
    iget-char v4, v12, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-ne v4, v14, :cond_8

    if-ge v5, v8, :cond_8

    move v4, v7

    goto :goto_8

    :cond_8
    move v4, v0

    :goto_8
    iget v14, v12, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    if-eqz v4, :cond_9

    const/16 v11, 0x20

    :cond_9
    move-object/from16 v15, p2

    invoke-virtual {v15, v14, v11}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    move-object v11, v12

    :goto_9
    if-eqz v13, :cond_b

    if-eqz v4, :cond_a

    const-string v4, " "

    goto :goto_a

    :cond_a
    move-object v4, v6

    :goto_a
    const/4 v13, 0x2

    invoke-static {v12, v4, v13}, Lorg/apache/poi/ss/format/CellNumberFormatter;->insertMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;Ljava/lang/CharSequence;I)Lorg/apache/poi/ss/format/CellNumberStringMod;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v5, v5, -0x1

    move-object v4, v11

    goto :goto_4

    :cond_c
    if-ltz v5, :cond_f

    add-int/2addr v5, v7

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0, v5}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-eqz p5, :cond_e

    :goto_b
    if-lez v5, :cond_e

    if-lez v10, :cond_d

    rem-int/lit8 v0, v10, 0x3

    if-nez v0, :cond_d

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    :cond_d
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_b

    :cond_e
    invoke-static {v4, v2, v7}, Lorg/apache/poi/ss/format/CellNumberFormatter;->insertMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;Ljava/lang/CharSequence;I)Lorg/apache/poi/ss/format/CellNumberStringMod;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method private writeScientific(DLjava/lang/StringBuffer;Ljava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/Set<",
            "Lorg/apache/poi/ss/format/CellNumberStringMod;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/text/FieldPosition;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/text/FieldPosition;-><init>(I)V

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalFmt:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1, p2, v6, v7}, Ljava/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    iget-boolean v5, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->showGroupingSeparator:Z

    move-object v0, p0

    move-object v1, v6

    move-object v2, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V

    invoke-direct {p0, v6, p3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeFractional(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    invoke-virtual {v7}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p1

    add-int/lit8 p2, p1, 0x1

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_0

    invoke-virtual {v6, p2, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move v0, v1

    :cond_0
    iget-object p2, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponentSpecials:Ljava/util/List;

    invoke-interface {p2, v8}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iget-char v3, p2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-eq v0, v2, :cond_2

    if-ne v3, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p2, v8, p2, v8}, Lorg/apache/poi/ss/format/CellNumberFormatter;->deleteMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;Z)Lorg/apache/poi/ss/format/CellNumberStringMod;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p2, v8, p2, v8, v0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->replaceMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;ZC)Lorg/apache/poi/ss/format/CellNumberStringMod;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    new-instance v1, Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponentDigitSpecials:Ljava/util/List;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V

    return-void
.end method

.method private writeSingleInteger(Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/apache/poi/ss/format/CellNumberStringMod;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/util/Formatter;

    iget-object v2, p0, Lorg/apache/poi/ss/format/CellFormatter;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    :try_start_0
    iget-object v2, p0, Lorg/apache/poi/ss/format/CellFormatter;->locale:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v0, v2, p1, v3}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_2
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method


# virtual methods
.method public formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    iget-wide v2, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->scale:D

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-gez v5, :cond_0

    move v12, v11

    goto :goto_0

    :cond_0
    move v12, v10

    :goto_0
    if-eqz v12, :cond_1

    neg-double v1, v1

    :cond_1
    iget-object v5, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v5, :cond_3

    iget-boolean v5, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->improperFraction:Z

    if-eqz v5, :cond_2

    move-wide v5, v1

    move-wide v2, v3

    goto :goto_1

    :cond_2
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    rem-double v3, v1, v3

    double-to-long v1, v1

    long-to-double v1, v1

    :cond_3
    move-wide v5, v3

    move-wide v2, v1

    :goto_1
    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    new-instance v14, Ljava/lang/StringBuffer;

    iget-object v1, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->desc:Ljava/lang/String;

    invoke-direct {v9, v1}, Lorg/apache/poi/ss/format/CellNumberFormatter;->localiseFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v1, :cond_4

    invoke-direct {v9, v2, v3, v14, v13}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeScientific(DLjava/lang/StringBuffer;Ljava/util/Set;)V

    goto :goto_2

    :cond_4
    iget-boolean v1, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->improperFraction:Z

    if-eqz v1, :cond_5

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object v7, v14

    move-object v8, v13

    invoke-direct/range {v1 .. v8}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeFraction(DLjava/lang/StringBuffer;DLjava/lang/StringBuffer;Ljava/util/Set;)V

    goto :goto_2

    :cond_5
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    new-instance v1, Ljava/util/Formatter;

    iget-object v7, v9, Lorg/apache/poi/ss/format/CellFormatter;->locale:Ljava/util/Locale;

    invoke-direct {v1, v4, v7}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v7, v9, Lorg/apache/poi/ss/format/CellFormatter;->locale:Ljava/util/Locale;

    iget-object v8, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->printfFmt:Ljava/lang/String;

    new-array v15, v11, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v15, v10

    invoke-virtual {v1, v7, v8, v15}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/util/Formatter;->close()V
    :try_end_2
    .catch Ljava/util/IllegalFormatException; {:try_start_2 .. :try_end_2} :catch_0

    iget-object v1, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-nez v1, :cond_6

    invoke-direct {v9, v4, v14}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeFractional(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    iget-object v5, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    iget-boolean v6, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->showGroupingSeparator:Z

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v14

    move-object v4, v5

    move-object v5, v13

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V

    goto :goto_2

    :cond_6
    move-object/from16 v1, p0

    move-object v7, v14

    move-object v8, v13

    invoke-direct/range {v1 .. v8}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeFraction(DLjava/lang/StringBuffer;DLjava/lang/StringBuffer;Ljava/util/Set;)V

    :goto_2
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/format/CellNumberStringMod;

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    new-instance v5, Le3/a;

    invoke-direct {v5}, Le3/a;-><init>()V

    iget-object v6, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v10

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iget v9, v8, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    add-int v13, v9, v7

    invoke-virtual {v5, v9}, Le3/a;->a(I)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v14, v13}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    const/16 v15, 0x23

    if-ne v9, v15, :cond_8

    invoke-virtual {v14, v13}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v7, -0x1

    iget v9, v8, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    invoke-virtual {v5, v9}, Le3/a;->e(I)V

    :cond_8
    :goto_5
    if-eqz v3, :cond_14

    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberStringMod;->getSpecial()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v9

    if-ne v8, v9, :cond_14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    iget v13, v8, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    add-int/2addr v13, v7

    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberStringMod;->getOp()I

    move-result v15

    if-eq v15, v11, :cond_12

    const/4 v11, 0x2

    if-eq v15, v11, :cond_10

    const/4 v11, 0x3

    if-ne v15, v11, :cond_f

    iget v11, v8, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberStringMod;->isStartInclusive()Z

    move-result v15

    if-nez v15, :cond_9

    :goto_6
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v13, v13, 0x1

    :cond_9
    invoke-virtual {v5, v11}, Le3/a;->a(I)Z

    move-result v15

    if-eqz v15, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberStringMod;->getEnd()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v15

    iget v15, v15, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberStringMod;->isEndInclusive()Z

    move-result v16

    if-eqz v16, :cond_b

    add-int/lit8 v15, v15, 0x1

    :cond_b
    add-int v4, v15, v7

    if-ge v13, v4, :cond_e

    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberStringMod;->getToAdd()Ljava/lang/CharSequence;

    move-result-object v17

    if-eqz v17, :cond_c

    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberStringMod;->getToAdd()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v17

    if-nez v17, :cond_c

    invoke-virtual {v14, v13, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_8

    :cond_c
    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberStringMod;->getToAdd()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    :goto_7
    if-ge v13, v4, :cond_d

    invoke-virtual {v14, v13, v3}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_d
    :goto_8
    sget-object v3, Le3/a;->g1:Le3/a$f;

    const/4 v4, 0x0

    invoke-virtual {v5, v11, v15, v4, v3}, Le3/a;->f(IILe3/a;Le3/a$a;)V

    goto :goto_9

    :cond_e
    const/4 v4, 0x0

    goto :goto_9

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown op: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberStringMod;->getOp()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    const/4 v4, 0x0

    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberStringMod;->getToAdd()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    iget v11, v8, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    invoke-virtual {v5, v11}, Le3/a;->a(I)Z

    move-result v11

    if-eqz v11, :cond_11

    goto :goto_9

    :cond_11
    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberStringMod;->getToAdd()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v14, v13, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuffer;

    goto :goto_9

    :cond_12
    const/4 v4, 0x0

    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberStringMod;->getToAdd()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v14, v13, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuffer;

    :goto_9
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v9

    add-int/2addr v7, v3

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/format/CellNumberStringMod;

    goto :goto_a

    :cond_13
    move-object v3, v4

    :goto_a
    const/4 v11, 0x1

    goto/16 :goto_5

    :cond_14
    const/4 v4, 0x0

    const/4 v11, 0x1

    goto/16 :goto_4

    :cond_15
    if-eqz v12, :cond_16

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_16
    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    return-void

    :catch_0
    move-exception v0

    goto :goto_c

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_4
    invoke-virtual {v1}, Ljava/util/Formatter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v1, v0

    :try_start_5
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw v3
    :try_end_5
    .catch Ljava/util/IllegalFormatException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Format: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->printfFmt:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public simpleValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->SIMPLE_NUMBER:Lorg/apache/poi/ss/format/CellFormatter;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/format/CellFormatter;->formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-void
.end method
