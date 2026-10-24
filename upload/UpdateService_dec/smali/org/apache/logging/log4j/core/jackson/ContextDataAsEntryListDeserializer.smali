.class public Lorg/apache/logging/log4j/core/jackson/ContextDataAsEntryListDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "ContextDataAsEntryListDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<",
        "Lorg/apache/logging/log4j/util/StringMap;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 1

    .line 42
    const-class v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 43
    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "jp",
            "ctxt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JacksonException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/jackson/ContextDataAsEntryListDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lorg/apache/logging/log4j/util/StringMap;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lorg/apache/logging/log4j/util/StringMap;
    .locals 6
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "jp",
            "ctxt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 48
    new-instance v0, Lorg/apache/logging/log4j/core/jackson/ContextDataAsEntryListDeserializer$1;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/jackson/ContextDataAsEntryListDeserializer$1;-><init>(Lorg/apache/logging/log4j/core/jackson/ContextDataAsEntryListDeserializer;)V

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->readValueAs(Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 51
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/jackson/MapEntry;>;"
    new-instance v1, Lorg/apache/logging/log4j/core/impl/ContextDataFactory;

    invoke-direct {v1}, Lorg/apache/logging/log4j/core/impl/ContextDataFactory;-><init>()V

    invoke-static {}, Lorg/apache/logging/log4j/core/impl/ContextDataFactory;->createContextData()Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v1

    .line 52
    .local v1, "contextData":Lorg/apache/logging/log4j/util/StringMap;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/jackson/MapEntry;

    .line 53
    .local v3, "mapEntry":Lorg/apache/logging/log4j/core/jackson/MapEntry;
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/jackson/MapEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/jackson/MapEntry;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lorg/apache/logging/log4j/util/StringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    .end local v3    # "mapEntry":Lorg/apache/logging/log4j/core/jackson/MapEntry;
    goto :goto_0

    .line 55
    :cond_0
    return-object v1
.end method
