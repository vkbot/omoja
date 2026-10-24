.class public Lorg/apache/logging/log4j/core/jackson/ContextDataSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "ContextDataSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<",
        "Lorg/apache/logging/log4j/util/ReadOnlyStringMap;",
        ">;"
    }
.end annotation


# static fields
.field private static final WRITE_STRING_FIELD_INTO:Lorg/apache/logging/log4j/util/TriConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/logging/log4j/util/TriConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    sget-object v0, Lorg/apache/logging/log4j/core/jackson/-$$Lambda$ContextDataSerializer$aA_DidyE8o_NLmVIsuy_7PsOkTQ;->INSTANCE:Lorg/apache/logging/log4j/core/jackson/-$$Lambda$ContextDataSerializer$aA_DidyE8o_NLmVIsuy_7PsOkTQ;

    sput-object v0, Lorg/apache/logging/log4j/core/jackson/ContextDataSerializer;->WRITE_STRING_FIELD_INTO:Lorg/apache/logging/log4j/util/TriConsumer;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 40
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;Z)V

    .line 41
    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/String;Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "jsonGenerator"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "key",
            "value",
            "jsonGenerator"
        }
    .end annotation

    .line 55
    if-nez p1, :cond_0

    .line 56
    :try_start_0
    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNullField(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    nop

    .line 63
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem with key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
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

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/jackson/ContextDataSerializer;->serialize(Lorg/apache/logging/log4j/util/ReadOnlyStringMap;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public serialize(Lorg/apache/logging/log4j/util/ReadOnlyStringMap;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 1
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
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 48
    sget-object v0, Lorg/apache/logging/log4j/core/jackson/ContextDataSerializer;->WRITE_STRING_FIELD_INTO:Lorg/apache/logging/log4j/util/TriConsumer;

    invoke-interface {p1, v0, p2}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->forEach(Lorg/apache/logging/log4j/util/TriConsumer;Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 50
    return-void
.end method
