.class public abstract Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;
.super Ljava/lang/Object;
.source "AbstractFilterable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/filter/AbstractFilterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private filter:Lorg/apache/logging/log4j/core/Filter;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "Filter"
    .end annotation
.end field

.field private propertyArray:[Lorg/apache/logging/log4j/core/config/Property;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "Properties"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    .local p0, "this":Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;, "Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 51
    .local p0, "this":Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;, "Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder<TB;>;"
    return-object p0
.end method

.method public getFilter()Lorg/apache/logging/log4j/core/Filter;
    .locals 1

    .line 55
    .local p0, "this":Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;, "Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;->filter:Lorg/apache/logging/log4j/core/Filter;

    return-object v0
.end method

.method public getPropertyArray()[Lorg/apache/logging/log4j/core/config/Property;
    .locals 1

    .line 59
    .local p0, "this":Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;, "Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;->propertyArray:[Lorg/apache/logging/log4j/core/config/Property;

    return-object v0
.end method

.method public setFilter(Lorg/apache/logging/log4j/core/Filter;)Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;
    .locals 1
    .param p1, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/Filter;",
            ")TB;"
        }
    .end annotation

    .line 63
    .local p0, "this":Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;, "Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;->filter:Lorg/apache/logging/log4j/core/Filter;

    .line 64
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPropertyArray([Lorg/apache/logging/log4j/core/config/Property;)Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;
    .locals 1
    .param p1, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/logging/log4j/core/config/Property;",
            ")TB;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;, "Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;->propertyArray:[Lorg/apache/logging/log4j/core/config/Property;

    .line 69
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withFilter(Lorg/apache/logging/log4j/core/Filter;)Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;
    .locals 1
    .param p1, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/Filter;",
            ")TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    .local p0, "this":Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;, "Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder<TB;>;"
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;->setFilter(Lorg/apache/logging/log4j/core/Filter;)Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    return-object v0
.end method
