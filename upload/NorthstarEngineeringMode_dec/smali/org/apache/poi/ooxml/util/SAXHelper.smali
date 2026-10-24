.class public final Lorg/apache/poi/ooxml/util/SAXHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Lorg/apache/poi/util/Removal;
    version = "6.0.0"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1

    invoke-static {}, Lorg/apache/poi/util/XMLHelper;->newXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    return-object v0
.end method
