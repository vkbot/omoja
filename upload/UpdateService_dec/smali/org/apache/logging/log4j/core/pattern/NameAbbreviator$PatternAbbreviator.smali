.class final Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$PatternAbbreviator;
.super Lorg/apache/logging/log4j/core/pattern/NameAbbreviator;
.source "NameAbbreviator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/pattern/NameAbbreviator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PatternAbbreviator"
.end annotation


# instance fields
.field private final fragments:[Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$PatternAbbreviatorFragment;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fragments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$PatternAbbreviatorFragment;",
            ">;)V"
        }
    .end annotation

    .line 337
    .local p1, "fragments":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$PatternAbbreviatorFragment;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator;-><init>()V

    .line 338
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$PatternAbbreviatorFragment;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$PatternAbbreviatorFragment;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$PatternAbbreviatorFragment;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$PatternAbbreviator;->fragments:[Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$PatternAbbreviatorFragment;

    .line 344
    return-void

    .line 339
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fragments must have at least one element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abbreviate(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "original"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "original",
            "destination"
        }
    .end annotation

    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, "originalIndex":I
    const/4 v1, 0x0

    .line 357
    .local v1, "iteration":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 358
    .local v2, "originalLength":I
    :goto_0
    if-ltz v0, :cond_0

    if-ge v0, v2, :cond_0

    .line 359
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "iteration":I
    .local v3, "iteration":I
    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$PatternAbbreviator;->fragment(I)Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$PatternAbbreviatorFragment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$PatternAbbreviatorFragment;->abbreviate(Ljava/lang/String;ILjava/lang/StringBuilder;)I

    move-result v0

    move v1, v3

    goto :goto_0

    .line 361
    .end local v3    # "iteration":I
    .restart local v1    # "iteration":I
    :cond_0
    return-void
.end method

.method fragment(I)Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$PatternAbbreviatorFragment;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$PatternAbbreviator;->fragments:[Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$PatternAbbreviatorFragment;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
