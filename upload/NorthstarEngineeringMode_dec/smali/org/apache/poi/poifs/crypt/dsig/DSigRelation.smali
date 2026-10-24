.class public Lorg/apache/poi/poifs/crypt/dsig/DSigRelation;
.super Lorg/apache/poi/ooxml/POIXMLRelation;
.source "SourceFile"


# static fields
.field public static final ORIGIN_SIGS:Lorg/apache/poi/poifs/crypt/dsig/DSigRelation;

.field public static final SIG:Lorg/apache/poi/poifs/crypt/dsig/DSigRelation;

.field private static final _table:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/poifs/crypt/dsig/DSigRelation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/DSigRelation;->_table:Ljava/util/Map;

    new-instance v0, Lorg/apache/poi/poifs/crypt/dsig/DSigRelation;

    const-string v1, "http://schemas.openxmlformats.org/package/2006/relationships/digital-signature/origin"

    const-string v2, "/_xmlsignatures/origin.sigs"

    const-string v3, "application/vnd.openxmlformats-package.digital-signature-origin"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/poifs/crypt/dsig/DSigRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/DSigRelation;->ORIGIN_SIGS:Lorg/apache/poi/poifs/crypt/dsig/DSigRelation;

    new-instance v0, Lorg/apache/poi/poifs/crypt/dsig/DSigRelation;

    const-string v1, "http://schemas.openxmlformats.org/package/2006/relationships/digital-signature/signature"

    const-string v2, "/_xmlsignatures/sig#.xml"

    const-string v3, "application/vnd.openxmlformats-package.digital-signature-xmlsignature+xml"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/poifs/crypt/dsig/DSigRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/DSigRelation;->SIG:Lorg/apache/poi/poifs/crypt/dsig/DSigRelation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/ooxml/POIXMLRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lorg/apache/poi/poifs/crypt/dsig/DSigRelation;->_table:Ljava/util/Map;

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/dsig/DSigRelation;
    .locals 1

    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/DSigRelation;->_table:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/poifs/crypt/dsig/DSigRelation;

    return-object p0
.end method
