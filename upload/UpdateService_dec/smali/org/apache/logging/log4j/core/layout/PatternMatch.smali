.class public final Lorg/apache/logging/log4j/core/layout/PatternMatch;
.super Ljava/lang/Object;
.source "PatternMatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/layout/PatternMatch$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "PatternMatch"
    printObject = true
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final pattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "pattern"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/PatternMatch;->key:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lorg/apache/logging/log4j/core/layout/PatternMatch;->pattern:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/layout/PatternMatch$Builder;
    .locals 1
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 73
    new-instance v0, Lorg/apache/logging/log4j/core/layout/PatternMatch$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/layout/PatternMatch$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 113
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 114
    return v0

    .line 116
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 117
    return v1

    .line 119
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 120
    return v1

    .line 122
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/apache/logging/log4j/core/layout/PatternMatch;

    .line 123
    .local v2, "other":Lorg/apache/logging/log4j/core/layout/PatternMatch;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/layout/PatternMatch;->key:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/logging/log4j/core/layout/PatternMatch;->key:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 124
    return v1

    .line 126
    :cond_3
    iget-object v3, p0, Lorg/apache/logging/log4j/core/layout/PatternMatch;->pattern:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/logging/log4j/core/layout/PatternMatch;->pattern:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 127
    return v1

    .line 129
    :cond_4
    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/PatternMatch;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/PatternMatch;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 108
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/PatternMatch;->key:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/PatternMatch;->pattern:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/PatternMatch;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/PatternMatch;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
