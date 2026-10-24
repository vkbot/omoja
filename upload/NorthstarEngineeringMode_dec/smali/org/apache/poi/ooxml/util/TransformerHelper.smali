.class public final Lorg/apache/poi/ooxml/util/TransformerHelper;
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

.method public static getFactory()Ljavax/xml/transform/TransformerFactory;
    .locals 1

    invoke-static {}, Lorg/apache/poi/util/XMLHelper;->getTransformerFactory()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    return-object v0
.end method
