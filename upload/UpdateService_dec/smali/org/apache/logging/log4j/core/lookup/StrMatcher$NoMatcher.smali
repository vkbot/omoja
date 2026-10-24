.class final Lorg/apache/logging/log4j/core/lookup/StrMatcher$NoMatcher;
.super Lorg/apache/logging/log4j/core/lookup/StrMatcher;
.source "StrMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/lookup/StrMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NoMatcher"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 386
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/lookup/StrMatcher;-><init>()V

    .line 387
    return-void
.end method


# virtual methods
.method public isMatch([CIII)I
    .locals 1
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

    .line 400
    const/4 v0, 0x0

    return v0
.end method
