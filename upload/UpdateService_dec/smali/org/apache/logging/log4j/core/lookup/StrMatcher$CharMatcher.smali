.class final Lorg/apache/logging/log4j/core/lookup/StrMatcher$CharMatcher;
.super Lorg/apache/logging/log4j/core/lookup/StrMatcher;
.source "StrMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/lookup/StrMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CharMatcher"
.end annotation


# instance fields
.field private final ch:C


# direct methods
.method constructor <init>(C)V
    .locals 0
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ch"
        }
    .end annotation

    .line 311
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/lookup/StrMatcher;-><init>()V

    .line 312
    iput-char p1, p0, Lorg/apache/logging/log4j/core/lookup/StrMatcher$CharMatcher;->ch:C

    .line 313
    return-void
.end method


# virtual methods
.method public isMatch([CIII)I
    .locals 2
    .param p1, "buffer"    # [C
    .param p2, "pos"    # I
    .param p3, "bufferStart"    # I
    .param p4, "bufferEnd"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "buffer",
            "pos",
            "bufferStart",
            "bufferEnd"
        }
    .end annotation

    .line 326
    iget-char v0, p0, Lorg/apache/logging/log4j/core/lookup/StrMatcher$CharMatcher;->ch:C

    aget-char v1, p1, p2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
