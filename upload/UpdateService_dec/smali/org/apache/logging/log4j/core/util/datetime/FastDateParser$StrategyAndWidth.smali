.class Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$StrategyAndWidth;
.super Ljava/lang/Object;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StrategyAndWidth"
.end annotation


# instance fields
.field final strategy:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

.field final width:I


# direct methods
.method constructor <init>(Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;I)V
    .locals 0
    .param p1, "strategy"    # Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;
    .param p2, "width"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "strategy",
            "width"
        }
    .end annotation

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$StrategyAndWidth;->strategy:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    .line 188
    iput p2, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$StrategyAndWidth;->width:I

    .line 189
    return-void
.end method


# virtual methods
.method getMaxWidth(Ljava/util/ListIterator;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "lt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$StrategyAndWidth;",
            ">;)I"
        }
    .end annotation

    .line 192
    .local p1, "lt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$StrategyAndWidth;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$StrategyAndWidth;->strategy:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;->isNumber()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$StrategyAndWidth;

    iget-object v0, v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$StrategyAndWidth;->strategy:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    .line 196
    .local v0, "nextStrategy":Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 197
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;->isNumber()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$StrategyAndWidth;->width:I

    :cond_1
    return v1

    .line 193
    .end local v0    # "nextStrategy":Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;
    :cond_2
    :goto_0
    return v1
.end method
