.class Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$NumberStrategy;
.super Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NumberStrategy"
.end annotation


# instance fields
.field private final field:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "field"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    .line 735
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;-><init>(Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$1;)V

    .line 736
    iput p1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$NumberStrategy;->field:I

    .line 737
    return-void
.end method


# virtual methods
.method isNumber()Z
    .locals 1

    .line 744
    const/4 v0, 0x1

    return v0
.end method

.method modify(Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;I)I
    .locals 0
    .param p1, "parser"    # Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;
    .param p2, "iValue"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "parser",
            "iValue"
        }
    .end annotation

    .line 794
    return p2
.end method

.method parse(Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;Ljava/text/ParsePosition;I)Z
    .locals 5
    .param p1, "parser"    # Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;
    .param p2, "calendar"    # Ljava/util/Calendar;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "pos"    # Ljava/text/ParsePosition;
    .param p5, "maxWidth"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "parser",
            "calendar",
            "source",
            "pos",
            "maxWidth"
        }
    .end annotation

    .line 749
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 750
    .local v0, "idx":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .line 752
    .local v1, "last":I
    if-nez p5, :cond_2

    .line 754
    :goto_0
    if-ge v0, v1, :cond_1

    .line 755
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 756
    .local v2, "c":C
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 757
    goto :goto_1

    .line 754
    .end local v2    # "c":C
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 760
    :cond_1
    :goto_1
    invoke-virtual {p4, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_2

    .line 762
    :cond_2
    add-int v2, v0, p5

    .line 763
    .local v2, "end":I
    if-le v1, v2, :cond_3

    .line 764
    move v1, v2

    .line 768
    .end local v2    # "end":I
    :cond_3
    :goto_2
    if-ge v0, v1, :cond_5

    .line 769
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 770
    .local v2, "c":C
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_4

    .line 771
    goto :goto_3

    .line 768
    .end local v2    # "c":C
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 775
    :cond_5
    :goto_3
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-ne v2, v0, :cond_6

    .line 776
    invoke-virtual {p4, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 777
    const/4 v2, 0x0

    return v2

    .line 780
    :cond_6
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {p3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 781
    .local v2, "value":I
    invoke-virtual {p4, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 783
    iget v3, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$NumberStrategy;->field:I

    invoke-virtual {p0, p1, v2}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$NumberStrategy;->modify(Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;I)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 784
    const/4 v3, 0x1

    return v3
.end method
