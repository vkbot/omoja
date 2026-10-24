.class public Lorg/apache/logging/log4j/core/config/arbiters/DefaultArbiter$Builder;
.super Ljava/lang/Object;
.source "DefaultArbiter.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/config/arbiters/DefaultArbiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/config/arbiters/DefaultArbiter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBuilder()Lorg/apache/logging/log4j/core/config/arbiters/DefaultArbiter$Builder;
    .locals 0

    .line 46
    return-object p0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/arbiters/DefaultArbiter$Builder;->build()Lorg/apache/logging/log4j/core/config/arbiters/DefaultArbiter;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/config/arbiters/DefaultArbiter;
    .locals 1

    .line 50
    new-instance v0, Lorg/apache/logging/log4j/core/config/arbiters/DefaultArbiter;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/config/arbiters/DefaultArbiter;-><init>()V

    return-object v0
.end method
