.class Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$Status;
.super Ljava/lang/Object;
.source "JsonConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Status"
.end annotation


# instance fields
.field private final errorType:Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$ErrorType;

.field private final name:Ljava/lang/String;

.field private final node:Lcom/fasterxml/jackson/databind/JsonNode;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$ErrorType;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "node"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .param p3, "errorType"    # Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$ErrorType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "node",
            "errorType"
        }
    .end annotation

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$Status;->name:Ljava/lang/String;

    .line 264
    iput-object p2, p0, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$Status;->node:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 265
    iput-object p3, p0, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$Status;->errorType:Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$ErrorType;

    .line 266
    return-void
.end method

.method static synthetic access$000(Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$Status;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$Status;

    .line 257
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$Status;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$Status;)Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$ErrorType;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$Status;

    .line 257
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$Status;->errorType:Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$ErrorType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Status [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$Status;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$Status;->errorType:Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$ErrorType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", node="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$Status;->node:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
