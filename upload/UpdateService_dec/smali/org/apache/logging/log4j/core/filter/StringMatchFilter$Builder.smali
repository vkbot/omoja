.class public Lorg/apache/logging/log4j/core/filter/StringMatchFilter$Builder;
.super Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder;
.source "StringMatchFilter.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/filter/StringMatchFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder<",
        "Lorg/apache/logging/log4j/core/filter/StringMatchFilter$Builder;",
        ">;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/filter/StringMatchFilter;",
        ">;"
    }
.end annotation


# instance fields
.field private text:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 155
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/AbstractFilter$AbstractFilterBuilder;-><init>()V

    .line 156
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/logging/log4j/core/filter/StringMatchFilter$Builder;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 155
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/filter/StringMatchFilter$Builder;->build()Lorg/apache/logging/log4j/core/filter/StringMatchFilter;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/filter/StringMatchFilter;
    .locals 5

    .line 171
    new-instance v0, Lorg/apache/logging/log4j/core/filter/StringMatchFilter;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/StringMatchFilter$Builder;->text:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/filter/StringMatchFilter$Builder;->getOnMatch()Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/filter/StringMatchFilter$Builder;->getOnMismatch()Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/logging/log4j/core/filter/StringMatchFilter;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/filter/StringMatchFilter$1;)V

    return-object v0
.end method

.method public setMatchString(Ljava/lang/String;)Lorg/apache/logging/log4j/core/filter/StringMatchFilter$Builder;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "text"
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lorg/apache/logging/log4j/core/filter/StringMatchFilter$Builder;->text:Ljava/lang/String;

    .line 166
    return-object p0
.end method
