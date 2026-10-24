.class abstract Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$PatternStrategy;
.super Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PatternStrategy"
.end annotation


# instance fields
.field private pattern:Ljava/util/regex/Pattern;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 512
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;-><init>(Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$1;

    .line 512
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$PatternStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method createPattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "regex"
        }
    .end annotation

    .line 521
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$PatternStrategy;->pattern:Ljava/util/regex/Pattern;

    .line 522
    return-void
.end method

.method createPattern(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "regex"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "regex"
        }
    .end annotation

    .line 517
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$PatternStrategy;->createPattern(Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method isNumber()Z
    .locals 1

    .line 532
    const/4 v0, 0x0

    return v0
.end method

.method parse(Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;Ljava/text/ParsePosition;I)Z
    .locals 4
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

    .line 537
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$PatternStrategy;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 538
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-nez v1, :cond_0

    .line 539
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 540
    const/4 v1, 0x0

    return v1

    .line 542
    :cond_0
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->end(I)I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p4, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 543
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$PatternStrategy;->setCalendar(Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V

    .line 544
    return v2
.end method

.method abstract setCalendar(Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parser",
            "cal",
            "value"
        }
    .end annotation
.end method
