.class public abstract Lorg/apache/mina/filter/codec/statemachine/ConsumeToLinearWhitespaceDecodingState;
.super Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;
.source "ConsumeToLinearWhitespaceDecodingState.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;-><init>()V

    return-void
.end method


# virtual methods
.method protected isTerminator(B)Z
    .locals 1
    .param p1, "b"    # B

    .line 35
    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
