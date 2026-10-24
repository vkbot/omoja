.class public final Lorg/apache/poi/util/StaxHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Lorg/apache/poi/util/Removal;
    version = "6.0.0"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newXMLEventFactory()Ljavax/xml/stream/XMLEventFactory;
    .locals 1

    invoke-static {}, Lorg/apache/poi/util/XMLHelper;->newXMLEventFactory()Ljavax/xml/stream/XMLEventFactory;

    move-result-object v0

    return-object v0
.end method

.method public static newXMLInputFactory()Ljavax/xml/stream/XMLInputFactory;
    .locals 1

    invoke-static {}, Lorg/apache/poi/util/XMLHelper;->newXMLInputFactory()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v0

    return-object v0
.end method

.method public static newXMLOutputFactory()Ljavax/xml/stream/XMLOutputFactory;
    .locals 1

    invoke-static {}, Lorg/apache/poi/util/XMLHelper;->newXMLOutputFactory()Ljavax/xml/stream/XMLOutputFactory;

    move-result-object v0

    return-object v0
.end method
