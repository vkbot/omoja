.class final Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$3;
.super Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$NumberStrategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "field"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    .line 965
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$NumberStrategy;-><init>(I)V

    return-void
.end method


# virtual methods
.method modify(Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;I)I
    .locals 1
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

    .line 968
    const/4 v0, 0x7

    if-eq p2, v0, :cond_0

    add-int/lit8 v0, p2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
