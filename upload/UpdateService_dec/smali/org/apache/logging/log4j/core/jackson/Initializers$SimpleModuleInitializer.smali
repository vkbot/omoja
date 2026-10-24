.class Lorg/apache/logging/log4j/core/jackson/Initializers$SimpleModuleInitializer;
.super Ljava/lang/Object;
.source "Initializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/jackson/Initializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleModuleInitializer"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method initialize(Lcom/fasterxml/jackson/databind/module/SimpleModule;Z)V
    .locals 2
    .param p1, "simpleModule"    # Lcom/fasterxml/jackson/databind/module/SimpleModule;
    .param p2, "objectMessageAsJsonObject"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "simpleModule",
            "objectMessageAsJsonObject"
        }
    .end annotation

    .line 89
    const-class v0, Ljava/lang/StackTraceElement;

    new-instance v1, Lorg/apache/logging/log4j/core/jackson/Log4jStackTraceElementDeserializer;

    invoke-direct {v1}, Lorg/apache/logging/log4j/core/jackson/Log4jStackTraceElementDeserializer;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 90
    const-class v0, Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    new-instance v1, Lorg/apache/logging/log4j/core/jackson/MutableThreadContextStackDeserializer;

    invoke-direct {v1}, Lorg/apache/logging/log4j/core/jackson/MutableThreadContextStackDeserializer;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 91
    if-eqz p2, :cond_0

    .line 92
    const-class v0, Lorg/apache/logging/log4j/message/ObjectMessage;

    new-instance v1, Lorg/apache/logging/log4j/core/jackson/ObjectMessageSerializer;

    invoke-direct {v1}, Lorg/apache/logging/log4j/core/jackson/ObjectMessageSerializer;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 94
    :cond_0
    const-class v0, Lorg/apache/logging/log4j/message/Message;

    new-instance v1, Lorg/apache/logging/log4j/core/jackson/MessageSerializer;

    invoke-direct {v1}, Lorg/apache/logging/log4j/core/jackson/MessageSerializer;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 95
    return-void
.end method
