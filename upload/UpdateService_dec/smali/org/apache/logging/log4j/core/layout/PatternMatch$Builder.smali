.class public Lorg/apache/logging/log4j/core/layout/PatternMatch$Builder;
.super Ljava/lang/Object;
.source "PatternMatch.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/layout/PatternMatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/layout/PatternMatch;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private key:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private pattern:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/PatternMatch$Builder;->build()Lorg/apache/logging/log4j/core/layout/PatternMatch;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/layout/PatternMatch;
    .locals 3

    .line 98
    new-instance v0, Lorg/apache/logging/log4j/core/layout/PatternMatch;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/PatternMatch$Builder;->key:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/PatternMatch$Builder;->pattern:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/layout/PatternMatch;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 102
    new-instance v0, Lorg/apache/logging/log4j/core/layout/PatternMatch;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/PatternMatch$Builder;->key:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/PatternMatch$Builder;->pattern:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/layout/PatternMatch;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternMatch$Builder;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/PatternMatch$Builder;->key:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public setPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternMatch$Builder;
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pattern"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/PatternMatch$Builder;->pattern:Ljava/lang/String;

    .line 93
    return-object p0
.end method
