.class Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$CopyQuotedStrategy;
.super Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CopyQuotedStrategy"
.end annotation


# instance fields
.field private final formatField:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "formatField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "formatField"
        }
    .end annotation

    .line 658
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;-><init>(Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$1;)V

    .line 659
    iput-object p1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$CopyQuotedStrategy;->formatField:Ljava/lang/String;

    .line 660
    return-void
.end method


# virtual methods
.method isNumber()Z
    .locals 1

    .line 667
    const/4 v0, 0x0

    return v0
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

    .line 672
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$CopyQuotedStrategy;->formatField:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 673
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    add-int/2addr v1, v0

    .line 674
    .local v1, "sIdx":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 675
    invoke-virtual {p4, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 676
    return v3

    .line 678
    :cond_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$CopyQuotedStrategy;->formatField:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v2, v4, :cond_1

    .line 679
    invoke-virtual {p4, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 680
    return v3

    .line 672
    .end local v1    # "sIdx":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 683
    .end local v0    # "idx":I
    :cond_2
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$CopyQuotedStrategy;->formatField:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p4, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 684
    const/4 v0, 0x1

    return v0
.end method
