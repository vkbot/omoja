.class final Lorg/apache/logging/log4j/core/jackson/MutableThreadContextStackDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "MutableThreadContextStackDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<",
        "Lorg/apache/logging/log4j/spi/MutableThreadContextStack;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 1

    .line 40
    const-class v0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 41
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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/jackson/MutableThreadContextStackDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    .locals 2
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

    .line 46
    new-instance v0, Lorg/apache/logging/log4j/core/jackson/MutableThreadContextStackDeserializer$1;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/jackson/MutableThreadContextStackDeserializer$1;-><init>(Lorg/apache/logging/log4j/core/jackson/MutableThreadContextStackDeserializer;)V

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->readValueAs(Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 49
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    invoke-direct {v1, v0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;-><init>(Ljava/util/List;)V

    return-object v1
.end method
