.class public Lorg/apache/logging/log4j/core/filter/BurstFilter$Builder;
.super Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder;
.source "BurstFilter.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/filter/BurstFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder<",
        "Lorg/apache/logging/log4j/core/filter/BurstFilter$Builder;",
        ">;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/filter/BurstFilter;",
        ">;"
    }
.end annotation


# instance fields
.field private level:Lorg/apache/logging/log4j/Level;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private maxBurst:J
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private rate:F
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 293
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder;-><init>()V

    .line 295
    sget-object v0, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter$Builder;->level:Lorg/apache/logging/log4j/Level;

    .line 298
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter$Builder;->rate:F

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/filter/BurstFilter$Builder;->build()Lorg/apache/logging/log4j/core/filter/BurstFilter;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/filter/BurstFilter;
    .locals 10

    .line 337
    iget v0, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter$Builder;->rate:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 338
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter$Builder;->rate:F

    .line 340
    :cond_0
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter$Builder;->maxBurst:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 341
    iget v0, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter$Builder;->rate:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter$Builder;->maxBurst:J

    .line 343
    :cond_1
    new-instance v0, Lorg/apache/logging/log4j/core/filter/BurstFilter;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter$Builder;->level:Lorg/apache/logging/log4j/Level;

    iget v4, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter$Builder;->rate:F

    iget-wide v5, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter$Builder;->maxBurst:J

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/filter/BurstFilter$Builder;->getOnMatch()Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/filter/BurstFilter$Builder;->getOnMismatch()Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v8

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lorg/apache/logging/log4j/core/filter/BurstFilter;-><init>(Lorg/apache/logging/log4j/Level;FJLorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/filter/BurstFilter$1;)V

    return-object v0
.end method

.method public setLevel(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/filter/BurstFilter$Builder;
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

    .line 310
    iput-object p1, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter$Builder;->level:Lorg/apache/logging/log4j/Level;

    .line 311
    return-object p0
.end method

.method public setMaxBurst(J)Lorg/apache/logging/log4j/core/filter/BurstFilter$Builder;
    .locals 0
    .param p1, "maxBurst"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "maxBurst"
        }
    .end annotation

    .line 331
    iput-wide p1, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter$Builder;->maxBurst:J

    .line 332
    return-object p0
.end method

.method public setRate(F)Lorg/apache/logging/log4j/core/filter/BurstFilter$Builder;
    .locals 0
    .param p1, "rate"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "rate"
        }
    .end annotation

    .line 320
    iput p1, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter$Builder;->rate:F

    .line 321
    return-object p0
.end method
