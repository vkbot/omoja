.class public Lorg/apache/logging/log4j/core/jackson/ContextDataAsEntryListSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "ContextDataAsEntryListSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<",
        "Lorg/apache/logging/log4j/util/ReadOnlyStringMap;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 40
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;Z)V

    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "contextData",
            "jgen",
            "provider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    check-cast p1, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/jackson/ContextDataAsEntryListSerializer;->serialize(Lorg/apache/logging/log4j/util/ReadOnlyStringMap;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public serialize(Lorg/apache/logging/log4j/util/ReadOnlyStringMap;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 2
    .param p1, "contextData"    # Lorg/apache/logging/log4j/util/ReadOnlyStringMap;
    .param p2, "jgen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "contextData",
            "jgen",
            "provider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 47
    invoke-interface {p1}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/logging/log4j/core/jackson/MapEntry;

    .line 48
    .local v0, "pairs":[Lorg/apache/logging/log4j/core/jackson/MapEntry;
    new-instance v1, Lorg/apache/logging/log4j/core/jackson/ContextDataAsEntryListSerializer$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/logging/log4j/core/jackson/ContextDataAsEntryListSerializer$1;-><init>(Lorg/apache/logging/log4j/core/jackson/ContextDataAsEntryListSerializer;[Lorg/apache/logging/log4j/core/jackson/MapEntry;)V

    invoke-interface {p1, v1}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->forEach(Lorg/apache/logging/log4j/util/BiConsumer;)V

    .line 56
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObject(Ljava/lang/Object;)V

    .line 57
    return-void
.end method
