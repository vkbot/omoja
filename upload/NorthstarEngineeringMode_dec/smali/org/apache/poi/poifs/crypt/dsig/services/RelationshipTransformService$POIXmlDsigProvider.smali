.class final Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$POIXmlDsigProvider;
.super Ljava/security/Provider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "POIXmlDsigProvider"
.end annotation

.annotation build Lorg/apache/poi/util/SuppressForbidden;
    value = "new Provider(String,String,String) is not available in Java 8"
.end annotation


# static fields
.field private static final NAME:Ljava/lang/String; = "POIXmlDsigProvider"

.field static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .locals 3

    const-string v0, "POIXmlDsigProvider"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 2
    invoke-direct {p0, v0, v1, v2, v0}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 3
    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransformService.http://schemas.openxmlformats.org/package/2006/RelationshipTransform"

    invoke-virtual {p0, v1, v0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TransformService.http://schemas.openxmlformats.org/package/2006/RelationshipTransform MechanismType"

    const-string v1, "DOM"

    .line 4
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$POIXmlDsigProvider;-><init>()V

    return-void
.end method
