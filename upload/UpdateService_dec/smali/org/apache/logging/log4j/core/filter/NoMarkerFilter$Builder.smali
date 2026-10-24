.class public Lorg/apache/logging/log4j/core/filter/NoMarkerFilter$Builder;
.super Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder;
.source "NoMarkerFilter.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/filter/NoMarkerFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder<",
        "Lorg/apache/logging/log4j/core/filter/NoMarkerFilter$Builder;",
        ">;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/filter/NoMarkerFilter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 144
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/filter/NoMarkerFilter$Builder;->build()Lorg/apache/logging/log4j/core/filter/NoMarkerFilter;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/filter/NoMarkerFilter;
    .locals 4

    .line 148
    new-instance v0, Lorg/apache/logging/log4j/core/filter/NoMarkerFilter;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/filter/NoMarkerFilter$Builder;->getOnMatch()Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/filter/NoMarkerFilter$Builder;->getOnMismatch()Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/logging/log4j/core/filter/NoMarkerFilter;-><init>(Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/filter/NoMarkerFilter$1;)V

    return-object v0
.end method
