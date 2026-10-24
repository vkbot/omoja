.class public final Lorg/apache/logging/log4j/core/lookup/ConfigurationStrSubstitutor;
.super Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
.source "ConfigurationStrSubstitutor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "valueMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;-><init>(Ljava/util/Map;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 0
    .param p1, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "properties"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;-><init>(Ljava/util/Properties;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/lookup/StrLookup;)V
    .locals 0
    .param p1, "lookup"    # Lorg/apache/logging/log4j/core/lookup/StrLookup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "lookup"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;-><init>(Lorg/apache/logging/log4j/core/lookup/StrLookup;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;)V
    .locals 0
    .param p1, "other"    # Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "other"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;-><init>(Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;)V

    .line 46
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigurationStrSubstitutor{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
