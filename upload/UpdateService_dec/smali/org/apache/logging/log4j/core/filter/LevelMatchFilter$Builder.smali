.class public Lorg/apache/logging/log4j/core/filter/LevelMatchFilter$Builder;
.super Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder;
.source "LevelMatchFilter.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/filter/LevelMatchFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder<",
        "Lorg/apache/logging/log4j/core/filter/LevelMatchFilter$Builder;",
        ">;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/filter/LevelMatchFilter;",
        ">;"
    }
.end annotation


# instance fields
.field private level:Lorg/apache/logging/log4j/Level;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 153
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder;-><init>()V

    .line 154
    sget-object v0, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/filter/LevelMatchFilter$Builder;->level:Lorg/apache/logging/log4j/Level;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/filter/LevelMatchFilter$Builder;->build()Lorg/apache/logging/log4j/core/filter/LevelMatchFilter;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/filter/LevelMatchFilter;
    .locals 5

    .line 169
    new-instance v0, Lorg/apache/logging/log4j/core/filter/LevelMatchFilter;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/LevelMatchFilter$Builder;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/filter/LevelMatchFilter$Builder;->getOnMatch()Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/filter/LevelMatchFilter$Builder;->getOnMismatch()Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/logging/log4j/core/filter/LevelMatchFilter;-><init>(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/filter/LevelMatchFilter$1;)V

    return-object v0
.end method

.method public setLevel(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/filter/LevelMatchFilter$Builder;
    .locals 0
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "level"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lorg/apache/logging/log4j/core/filter/LevelMatchFilter$Builder;->level:Lorg/apache/logging/log4j/Level;

    .line 164
    return-object p0
.end method
