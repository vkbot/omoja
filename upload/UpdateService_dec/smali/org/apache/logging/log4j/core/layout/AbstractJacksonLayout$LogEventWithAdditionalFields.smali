.class public Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$LogEventWithAdditionalFields;
.super Ljava/lang/Object;
.source "AbstractJacksonLayout.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonRootName;
    value = "Event"
.end annotation

.annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlRootElement;
    localName = "Event"
    namespace = "http://logging.apache.org/log4j/2.0/events"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogEventWithAdditionalFields"
.end annotation


# instance fields
.field private final additionalFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final logEvent:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0
    .param p1, "logEvent"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "logEvent",
            "additionalFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 359
    .local p2, "additionalFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$LogEventWithAdditionalFields;->logEvent:Ljava/lang/Object;

    .line 361
    iput-object p2, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$LogEventWithAdditionalFields;->additionalFields:Ljava/util/Map;

    .line 362
    return-void
.end method


# virtual methods
.method public getAdditionalFields()Ljava/util/Map;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonAnyGetter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$LogEventWithAdditionalFields;->additionalFields:Ljava/util/Map;

    return-object v0
.end method

.method public getLogEvent()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonUnwrapped;
    .end annotation

    .line 366
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$LogEventWithAdditionalFields;->logEvent:Ljava/lang/Object;

    return-object v0
.end method
