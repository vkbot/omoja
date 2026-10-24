.class public abstract Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder;
.super Ljava/lang/Object;
.source "AbstractFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/filter/AbstractFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractFilterBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ATTR_ON_MATCH:Ljava/lang/String; = "onMatch"

.field public static final ATTR_ON_MISMATCH:Ljava/lang/String; = "onMismatch"


# instance fields
.field private onMatch:Lorg/apache/logging/log4j/core/Filter$Result;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "onMatch"
    .end annotation
.end field

.field private onMismatch:Lorg/apache/logging/log4j/core/Filter$Result;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "onMismatch"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    .local p0, "this":Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder;, "Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder;->onMatch:Lorg/apache/logging/log4j/core/Filter$Result;

    .line 49
    sget-object v0, Lorg/apache/logging/log4j/core/Filter$Result;->DENY:Lorg/apache/logging/log4j/core/Filter$Result;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder;->onMismatch:Lorg/apache/logging/log4j/core/Filter$Result;

    return-void
.end method


# virtual methods
.method public asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder;, "Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder<TB;>;"
    return-object p0
.end method

.method public getOnMatch()Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1

    .line 53
    .local p0, "this":Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder;, "Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder;->onMatch:Lorg/apache/logging/log4j/core/Filter$Result;

    return-object v0
.end method

.method public getOnMismatch()Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1

    .line 57
    .local p0, "this":Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder;, "Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder;->onMismatch:Lorg/apache/logging/log4j/core/Filter$Result;

    return-object v0
.end method

.method public setOnMatch(Lorg/apache/logging/log4j/core/Filter$Result;)Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder;
    .locals 1
    .param p1, "onMatch"    # Lorg/apache/logging/log4j/core/Filter$Result;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "onMatch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/Filter$Result;",
            ")TB;"
        }
    .end annotation

    .line 66
    .local p0, "this":Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder;, "Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder;->onMatch:Lorg/apache/logging/log4j/core/Filter$Result;

    .line 67
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setOnMismatch(Lorg/apache/logging/log4j/core/Filter$Result;)Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder;
    .locals 1
    .param p1, "onMismatch"    # Lorg/apache/logging/log4j/core/Filter$Result;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "onMismatch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/Filter$Result;",
            ")TB;"
        }
    .end annotation

    .line 76
    .local p0, "this":Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder;, "Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder;->onMismatch:Lorg/apache/logging/log4j/core/Filter$Result;

    .line 77
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder;

    move-result-object v0

    return-object v0
.end method
