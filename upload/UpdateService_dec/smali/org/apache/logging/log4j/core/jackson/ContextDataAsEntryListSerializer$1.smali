.class Lorg/apache/logging/log4j/core/jackson/ContextDataAsEntryListSerializer$1;
.super Ljava/lang/Object;
.source "ContextDataAsEntryListSerializer.java"

# interfaces
.implements Lorg/apache/logging/log4j/util/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/logging/log4j/core/jackson/ContextDataAsEntryListSerializer;->serialize(Lorg/apache/logging/log4j/util/ReadOnlyStringMap;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/util/BiConsumer<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field i:I

.field final synthetic this$0:Lorg/apache/logging/log4j/core/jackson/ContextDataAsEntryListSerializer;

.field final synthetic val$pairs:[Lorg/apache/logging/log4j/core/jackson/MapEntry;


# direct methods
.method constructor <init>(Lorg/apache/logging/log4j/core/jackson/ContextDataAsEntryListSerializer;[Lorg/apache/logging/log4j/core/jackson/MapEntry;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/logging/log4j/core/jackson/ContextDataAsEntryListSerializer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$pairs"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lorg/apache/logging/log4j/core/jackson/ContextDataAsEntryListSerializer$1;->this$0:Lorg/apache/logging/log4j/core/jackson/ContextDataAsEntryListSerializer;

    iput-object p2, p0, Lorg/apache/logging/log4j/core/jackson/ContextDataAsEntryListSerializer$1;->val$pairs:[Lorg/apache/logging/log4j/core/jackson/MapEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 p2, 0x0

    iput p2, p0, Lorg/apache/logging/log4j/core/jackson/ContextDataAsEntryListSerializer$1;->i:I

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 48
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/jackson/ContextDataAsEntryListSerializer$1;->accept(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public accept(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
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

    .line 53
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jackson/ContextDataAsEntryListSerializer$1;->val$pairs:[Lorg/apache/logging/log4j/core/jackson/MapEntry;

    iget v1, p0, Lorg/apache/logging/log4j/core/jackson/ContextDataAsEntryListSerializer$1;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/logging/log4j/core/jackson/ContextDataAsEntryListSerializer$1;->i:I

    new-instance v2, Lorg/apache/logging/log4j/core/jackson/MapEntry;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lorg/apache/logging/log4j/core/jackson/MapEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 54
    return-void
.end method
