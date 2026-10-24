.class final Lorg/apache/logging/log4j/core/jackson/MapEntry;
.super Ljava/lang/Object;
.source "MapEntry.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;
    value = {
        "key",
        "value"
    }
.end annotation


# instance fields
.field private key:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        isAttribute = true
    .end annotation
.end field

.field private value:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        isAttribute = true
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "key"
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "value"
        .end annotation
    .end param
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/jackson/MapEntry;->setKey(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, p2}, Lorg/apache/logging/log4j/core/jackson/MapEntry;->setValue(Ljava/lang/String;)V

    .line 50
    return-void
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

    .line 54
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 55
    return v0

    .line 57
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 58
    return v1

    .line 60
    :cond_1
    instance-of v2, p1, Lorg/apache/logging/log4j/core/jackson/MapEntry;

    if-nez v2, :cond_2

    .line 61
    return v1

    .line 63
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/apache/logging/log4j/core/jackson/MapEntry;

    .line 64
    .local v2, "other":Lorg/apache/logging/log4j/core/jackson/MapEntry;
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/jackson/MapEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 65
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/jackson/MapEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 66
    return v1

    .line 68
    :cond_3
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/jackson/MapEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/jackson/MapEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 69
    return v1

    .line 71
    :cond_4
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/jackson/MapEntry;->getValue()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    .line 72
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/jackson/MapEntry;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 73
    return v1

    .line 75
    :cond_5
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/jackson/MapEntry;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/jackson/MapEntry;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 76
    return v1

    .line 78
    :cond_6
    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jackson/MapEntry;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jackson/MapEntry;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 91
    const/16 v0, 0x1f

    .line 92
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 93
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/jackson/MapEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/jackson/MapEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 94
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/jackson/MapEntry;->getValue()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/jackson/MapEntry;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v1, v4

    .line 95
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public setKey(Ljava/lang/String;)V
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

    .line 99
    iput-object p1, p0, Lorg/apache/logging/log4j/core/jackson/MapEntry;->key:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lorg/apache/logging/log4j/core/jackson/MapEntry;->value:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/jackson/MapEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/jackson/MapEntry;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
