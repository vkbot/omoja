.class public Lorg/apache/logging/log4j/core/filter/DenyAllFilter$Builder;
.super Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder;
.source "DenyAllFilter.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/filter/DenyAllFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder<",
        "Lorg/apache/logging/log4j/core/filter/DenyAllFilter$Builder;",
        ">;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/filter/DenyAllFilter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 147
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 147
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/filter/DenyAllFilter$Builder;->build()Lorg/apache/logging/log4j/core/filter/DenyAllFilter;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/filter/DenyAllFilter;
    .locals 4

    .line 151
    new-instance v0, Lorg/apache/logging/log4j/core/filter/DenyAllFilter;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/filter/DenyAllFilter$Builder;->getOnMatch()Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/filter/DenyAllFilter$Builder;->getOnMismatch()Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/logging/log4j/core/filter/DenyAllFilter;-><init>(Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/filter/DenyAllFilter$1;)V

    return-object v0
.end method
