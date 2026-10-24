.class abstract Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;
.super Ljava/lang/Object;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Strategy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$1;

    .line 495
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;-><init>()V

    return-void
.end method


# virtual methods
.method isNumber()Z
    .locals 1

    .line 503
    const/4 v0, 0x0

    return v0
.end method

.method abstract parse(Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;Ljava/text/ParsePosition;I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parser",
            "calendar",
            "source",
            "pos",
            "maxWidth"
        }
    .end annotation
.end method
