.class Lorg/apache/logging/log4j/core/jackson/ContextDataAsEntryListDeserializer$1;
.super Lcom/fasterxml/jackson/core/type/TypeReference;
.source "ContextDataAsEntryListDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/logging/log4j/core/jackson/ContextDataAsEntryListDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lorg/apache/logging/log4j/util/StringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/core/type/TypeReference<",
        "Ljava/util/List<",
        "Lorg/apache/logging/log4j/core/jackson/MapEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/logging/log4j/core/jackson/ContextDataAsEntryListDeserializer;


# direct methods
.method constructor <init>(Lorg/apache/logging/log4j/core/jackson/ContextDataAsEntryListDeserializer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/logging/log4j/core/jackson/ContextDataAsEntryListDeserializer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lorg/apache/logging/log4j/core/jackson/ContextDataAsEntryListDeserializer$1;->this$0:Lorg/apache/logging/log4j/core/jackson/ContextDataAsEntryListDeserializer;

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/type/TypeReference;-><init>()V

    return-void
.end method
