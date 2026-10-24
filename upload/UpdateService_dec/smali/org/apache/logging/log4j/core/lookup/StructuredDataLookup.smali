.class public Lorg/apache/logging/log4j/core/lookup/StructuredDataLookup;
.super Ljava/lang/Object;
.source "StructuredDataLookup.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/lookup/StrLookup;


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Lookup"
    name = "sd"
.end annotation


# static fields
.field public static final ID_KEY:Ljava/lang/String; = "id"

.field public static final TYPE_KEY:Ljava/lang/String; = "type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public lookup(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "key"
        }
    .end annotation

    .line 57
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/logging/log4j/message/StructuredDataMessage;

    if-nez v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/message/StructuredDataMessage;

    .line 61
    .local v0, "msg":Lorg/apache/logging/log4j/message/StructuredDataMessage;
    const-string v1, "id"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    invoke-virtual {v0}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->getId()Lorg/apache/logging/log4j/message/StructuredDataId;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/logging/log4j/message/StructuredDataId;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 63
    :cond_1
    const-string v1, "type"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    invoke-virtual {v0}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->getType()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 66
    :cond_2
    invoke-virtual {v0, p2}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 58
    .end local v0    # "msg":Lorg/apache/logging/log4j/message/StructuredDataMessage;
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
