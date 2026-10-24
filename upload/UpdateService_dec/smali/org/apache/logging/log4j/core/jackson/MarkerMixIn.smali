.class abstract Lorg/apache/logging/log4j/core/jackson/MarkerMixIn;
.super Ljava/lang/Object;
.source "MarkerMixIn.java"

# interfaces
.implements Lorg/apache/logging/log4j/Marker;


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
    as = Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "name"
        .end annotation
    .end param
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "name"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        isAttribute = true
    .end annotation
.end method

.method public abstract getParents()[Lorg/apache/logging/log4j/Marker;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "parents"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlElementWrapper;
        localName = "Parents"
        namespace = "http://logging.apache.org/log4j/2.0/events"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        localName = "Marker"
        namespace = "http://logging.apache.org/log4j/2.0/events"
    .end annotation
.end method
