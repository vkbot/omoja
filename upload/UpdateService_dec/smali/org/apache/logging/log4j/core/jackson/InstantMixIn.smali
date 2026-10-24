.class abstract Lorg/apache/logging/log4j/core/jackson/InstantMixIn;
.super Ljava/lang/Object;
.source "InstantMixIn.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    value = {
        "epochMillisecond",
        "nanoOfMillisecond"
    }
.end annotation


# direct methods
.method constructor <init>(JI)V
    .locals 0
    .param p1, "epochSecond"    # J
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "epochSecond"
        .end annotation
    .end param
    .param p3, "nanoOfSecond"    # I
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "nanoOfSecond"
        .end annotation
    .end param
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "epochSecond",
            "nanoOfSecond"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method


# virtual methods
.method abstract getEpochSecond()J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "epochSecond"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        isAttribute = true
        localName = "epochSecond"
    .end annotation
.end method

.method abstract getNanoOfSecond()I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "nanoOfSecond"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        isAttribute = true
        localName = "nanoOfSecond"
    .end annotation
.end method
