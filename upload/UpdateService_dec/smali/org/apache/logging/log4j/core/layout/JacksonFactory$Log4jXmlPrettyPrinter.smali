.class Lorg/apache/logging/log4j/core/layout/JacksonFactory$Log4jXmlPrettyPrinter;
.super Lcom/fasterxml/jackson/dataformat/xml/util/DefaultXmlPrettyPrinter;
.source "JacksonFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/layout/JacksonFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Log4jXmlPrettyPrinter"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "nesting"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "nesting"
        }
    .end annotation

    .line 221
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/xml/util/DefaultXmlPrettyPrinter;-><init>()V

    .line 222
    iput p1, p0, Lorg/apache/logging/log4j/core/layout/JacksonFactory$Log4jXmlPrettyPrinter;->_nesting:I

    .line 223
    return-void
.end method


# virtual methods
.method public createInstance()Lcom/fasterxml/jackson/dataformat/xml/util/DefaultXmlPrettyPrinter;
    .locals 2

    .line 235
    new-instance v0, Lorg/apache/logging/log4j/core/layout/JacksonFactory$Log4jXmlPrettyPrinter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/layout/JacksonFactory$Log4jXmlPrettyPrinter;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .line 217
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/JacksonFactory$Log4jXmlPrettyPrinter;->createInstance()Lcom/fasterxml/jackson/dataformat/xml/util/DefaultXmlPrettyPrinter;

    move-result-object v0

    return-object v0
.end method

.method public writePrologLinefeed(Lorg/codehaus/stax2/XMLStreamWriter2;)V
    .locals 0
    .param p1, "sw"    # Lorg/codehaus/stax2/XMLStreamWriter2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sw"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 228
    return-void
.end method
