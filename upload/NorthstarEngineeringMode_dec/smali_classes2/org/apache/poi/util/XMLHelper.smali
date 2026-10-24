.class public final Lorg/apache/poi/util/XMLHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/util/XMLHelper$DocHelperErrorHandler;,
        Lorg/apache/poi/util/XMLHelper$SecurityProperty;,
        Lorg/apache/poi/util/XMLHelper$SecurityFeature;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field static final FEATURE_DISALLOW_DOCTYPE_DECL:Ljava/lang/String; = "http://apache.org/xml/features/disallow-doctype-decl"

.field static final FEATURE_EXTERNAL_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-general-entities"

.field static final FEATURE_LOAD_DTD_GRAMMAR:Ljava/lang/String; = "http://apache.org/xml/features/nonvalidating/load-dtd-grammar"

.field static final FEATURE_LOAD_EXTERNAL_DTD:Ljava/lang/String; = "http://apache.org/xml/features/nonvalidating/load-external-dtd"

.field static final FEATURE_PARAMETER_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-parameter-entities"

.field private static final LOG:La5/d;

.field static final METHOD_ENTITY_EXPANSION_XERCES:Ljava/lang/String; = "setEntityExpansionLimit"

.field static final PROPERTY_ENTITY_EXPANSION_LIMIT:Ljava/lang/String; = "http://www.oracle.com/xml/jaxp/properties/entityExpansionLimit"

.field static final PROPERTY_SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field static final SECURITY_MANAGERS:[Ljava/lang/String;

.field private static final documentBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private static lastLog:J

.field private static final saxFactory:Ljavax/xml/parsers/SAXParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.apache.xerces.util.SecurityManager"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/XMLHelper;->SECURITY_MANAGERS:[Ljava/lang/String;

    const-class v0, Lorg/apache/poi/util/XMLHelper;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/XMLHelper;->LOG:La5/d;

    invoke-static {}, Lorg/apache/poi/util/XMLHelper;->getDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/XMLHelper;->documentBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-static {}, Lorg/apache/poi/util/XMLHelper;->getSaxParserFactory()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/XMLHelper;->saxFactory:Ljavax/xml/parsers/SAXParserFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/util/XMLHelper;->lambda$getDocumentBuilderFactory$0(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic access$000()La5/d;
    .locals 1

    sget-object v0, Lorg/apache/poi/util/XMLHelper;->LOG:La5/d;

    return-object v0
.end method

.method public static synthetic b(Ljavax/xml/stream/XMLOutputFactory;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljavax/xml/stream/XMLOutputFactory;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Ljavax/xml/stream/XMLInputFactory;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljavax/xml/stream/XMLInputFactory;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/util/XMLHelper;->ignoreEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object p0

    return-object p0
.end method

.method public static getDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;
    .locals 6

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setExpandEntityReferences(Z)V

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    new-instance v3, Lorg/apache/poi/util/e0;

    invoke-direct {v3, v0, v2}, Lorg/apache/poi/util/e0;-><init>(Ljavax/xml/parsers/DocumentBuilderFactory;I)V

    const-string v4, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-static {v3, v4, v1}, Lorg/apache/poi/util/XMLHelper;->trySet(Lorg/apache/poi/util/XMLHelper$SecurityFeature;Ljava/lang/String;Z)Z

    new-instance v3, Lorg/apache/poi/util/g0;

    invoke-direct {v3, v0, v2}, Lorg/apache/poi/util/g0;-><init>(Ljavax/xml/parsers/DocumentBuilderFactory;I)V

    const-string v4, "http://javax.xml.XMLConstants/property/accessExternalSchema"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lorg/apache/poi/util/XMLHelper;->quietSet(Lorg/apache/poi/util/XMLHelper$SecurityProperty;Ljava/lang/String;Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/poi/util/e0;

    invoke-direct {v3, v0, v1}, Lorg/apache/poi/util/e0;-><init>(Ljavax/xml/parsers/DocumentBuilderFactory;I)V

    const-string v4, "http://javax.xml.XMLConstants/property/accessExternalDTD"

    invoke-static {v3, v4, v5}, Lorg/apache/poi/util/XMLHelper;->quietSet(Lorg/apache/poi/util/XMLHelper$SecurityProperty;Ljava/lang/String;Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/poi/util/f0;

    invoke-direct {v3, v0, v1}, Lorg/apache/poi/util/f0;-><init>(Ljavax/xml/parsers/DocumentBuilderFactory;I)V

    const-string v4, "http://xml.org/sax/features/external-general-entities"

    invoke-static {v3, v4, v2}, Lorg/apache/poi/util/XMLHelper;->trySet(Lorg/apache/poi/util/XMLHelper$SecurityFeature;Ljava/lang/String;Z)Z

    new-instance v3, Lorg/apache/poi/util/g0;

    invoke-direct {v3, v0, v1}, Lorg/apache/poi/util/g0;-><init>(Ljavax/xml/parsers/DocumentBuilderFactory;I)V

    const-string v4, "http://xml.org/sax/features/external-parameter-entities"

    invoke-static {v3, v4, v2}, Lorg/apache/poi/util/XMLHelper;->trySet(Lorg/apache/poi/util/XMLHelper$SecurityFeature;Ljava/lang/String;Z)Z

    new-instance v3, Lorg/apache/poi/util/e0;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Lorg/apache/poi/util/e0;-><init>(Ljavax/xml/parsers/DocumentBuilderFactory;I)V

    const-string v5, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    invoke-static {v3, v5, v2}, Lorg/apache/poi/util/XMLHelper;->trySet(Lorg/apache/poi/util/XMLHelper$SecurityFeature;Ljava/lang/String;Z)Z

    new-instance v3, Lorg/apache/poi/util/f0;

    invoke-direct {v3, v0, v4}, Lorg/apache/poi/util/f0;-><init>(Ljavax/xml/parsers/DocumentBuilderFactory;I)V

    const-string v5, "http://apache.org/xml/features/nonvalidating/load-dtd-grammar"

    invoke-static {v3, v5, v2}, Lorg/apache/poi/util/XMLHelper;->trySet(Lorg/apache/poi/util/XMLHelper$SecurityFeature;Ljava/lang/String;Z)Z

    new-instance v3, Lorg/apache/poi/util/g0;

    invoke-direct {v3, v0, v4}, Lorg/apache/poi/util/g0;-><init>(Ljavax/xml/parsers/DocumentBuilderFactory;I)V

    const-string v4, "http://apache.org/xml/features/disallow-doctype-decl"

    invoke-static {v3, v4, v1}, Lorg/apache/poi/util/XMLHelper;->trySet(Lorg/apache/poi/util/XMLHelper$SecurityFeature;Ljava/lang/String;Z)Z

    new-instance v3, Lorg/apache/poi/util/e0;

    const/4 v4, 0x3

    invoke-direct {v3, v0, v4}, Lorg/apache/poi/util/e0;-><init>(Ljavax/xml/parsers/DocumentBuilderFactory;I)V

    const-string v5, "XIncludeAware"

    invoke-static {v3, v5, v2}, Lorg/apache/poi/util/XMLHelper;->trySet(Lorg/apache/poi/util/XMLHelper$SecurityFeature;Ljava/lang/String;Z)Z

    invoke-static {}, Lorg/apache/poi/util/XMLHelper;->getXercesSecurityManager()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v5, Lorg/apache/poi/util/f0;

    invoke-direct {v5, v0, v4}, Lorg/apache/poi/util/f0;-><init>(Ljavax/xml/parsers/DocumentBuilderFactory;I)V

    const-string v4, "http://apache.org/xml/properties/security-manager"

    invoke-static {v5, v4, v3}, Lorg/apache/poi/util/XMLHelper;->trySet(Lorg/apache/poi/util/XMLHelper$SecurityProperty;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Lorg/apache/poi/util/f0;

    invoke-direct {v3, v0, v2}, Lorg/apache/poi/util/f0;-><init>(Ljavax/xml/parsers/DocumentBuilderFactory;I)V

    const-string v2, "http://www.oracle.com/xml/jaxp/properties/entityExpansionLimit"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lorg/apache/poi/util/XMLHelper;->trySet(Lorg/apache/poi/util/XMLHelper$SecurityProperty;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public static getSaxParserFactory()Ljavax/xml/parsers/SAXParserFactory;
    .locals 7

    const-string v0, "-"

    const-string v1, "Failed to create SAXParserFactory"

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    new-instance v5, Lorg/apache/poi/util/w;

    invoke-direct {v5, v2, v3}, Lorg/apache/poi/util/w;-><init>(Ljavax/xml/parsers/SAXParserFactory;I)V

    const-string v6, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-static {v5, v6, v4}, Lorg/apache/poi/util/XMLHelper;->trySet(Lorg/apache/poi/util/XMLHelper$SecurityFeature;Ljava/lang/String;Z)Z

    new-instance v5, Lorg/apache/poi/util/w;

    invoke-direct {v5, v2, v3}, Lorg/apache/poi/util/w;-><init>(Ljavax/xml/parsers/SAXParserFactory;I)V

    const-string v6, "http://apache.org/xml/features/nonvalidating/load-dtd-grammar"

    invoke-static {v5, v6, v3}, Lorg/apache/poi/util/XMLHelper;->trySet(Lorg/apache/poi/util/XMLHelper$SecurityFeature;Ljava/lang/String;Z)Z

    new-instance v5, Lorg/apache/poi/util/a0;

    invoke-direct {v5, v3, v2}, Lorg/apache/poi/util/a0;-><init>(ILjava/lang/Object;)V

    const-string v6, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    invoke-static {v5, v6, v3}, Lorg/apache/poi/util/XMLHelper;->trySet(Lorg/apache/poi/util/XMLHelper$SecurityFeature;Ljava/lang/String;Z)Z

    new-instance v5, Lorg/apache/poi/util/w;

    invoke-direct {v5, v2, v4}, Lorg/apache/poi/util/w;-><init>(Ljavax/xml/parsers/SAXParserFactory;I)V

    const-string v6, "http://xml.org/sax/features/external-general-entities"

    invoke-static {v5, v6, v3}, Lorg/apache/poi/util/XMLHelper;->trySet(Lorg/apache/poi/util/XMLHelper$SecurityFeature;Ljava/lang/String;Z)Z

    new-instance v3, Lorg/apache/poi/util/w;

    invoke-direct {v3, v2, v4}, Lorg/apache/poi/util/w;-><init>(Ljavax/xml/parsers/SAXParserFactory;I)V

    const-string v5, "http://apache.org/xml/features/disallow-doctype-decl"

    invoke-static {v3, v5, v4}, Lorg/apache/poi/util/XMLHelper;->trySet(Lorg/apache/poi/util/XMLHelper$SecurityFeature;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :goto_0
    invoke-static {v2}, Lorg/apache/poi/util/ExceptionUtil;->isFatal(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lorg/apache/poi/util/ExceptionUtil;->rethrow(Ljava/lang/Throwable;)V

    :cond_0
    invoke-static {v2, v1, v0}, Lorg/apache/poi/util/XMLHelper;->logThrowable(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    invoke-static {v2}, Lorg/apache/poi/util/ExceptionUtil;->isFatal(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lorg/apache/poi/util/ExceptionUtil;->rethrow(Ljava/lang/Throwable;)V

    :cond_1
    invoke-static {v2, v1, v0}, Lorg/apache/poi/util/XMLHelper;->logThrowable(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public static getSchemaFactory()Ljavax/xml/validation/SchemaFactory;
    .locals 4

    const-string v0, "http://www.w3.org/2001/XMLSchema"

    invoke-static {v0}, Ljavax/xml/validation/SchemaFactory;->newInstance(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/apache/poi/util/b0;

    invoke-direct {v1, v0}, Lorg/apache/poi/util/b0;-><init>(Ljavax/xml/validation/SchemaFactory;)V

    const-string v2, "http://javax.xml.XMLConstants/feature/secure-processing"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lorg/apache/poi/util/XMLHelper;->trySet(Lorg/apache/poi/util/XMLHelper$SecurityFeature;Ljava/lang/String;Z)Z

    new-instance v1, Lorg/apache/poi/util/c0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/util/c0;-><init>(ILjava/lang/Object;)V

    const-string v2, "http://javax.xml.XMLConstants/property/accessExternalDTD"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lorg/apache/poi/util/XMLHelper;->quietSet(Lorg/apache/poi/util/XMLHelper$SecurityProperty;Ljava/lang/String;Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/poi/util/d0;

    invoke-direct {v1, v0}, Lorg/apache/poi/util/d0;-><init>(Ljava/lang/Object;)V

    const-string v2, "http://javax.xml.XMLConstants/property/accessExternalStylesheet"

    invoke-static {v1, v2, v3}, Lorg/apache/poi/util/XMLHelper;->quietSet(Lorg/apache/poi/util/XMLHelper$SecurityProperty;Ljava/lang/String;Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/poi/util/b0;

    invoke-direct {v1, v0}, Lorg/apache/poi/util/b0;-><init>(Ljavax/xml/validation/SchemaFactory;)V

    const-string v2, "http://javax.xml.XMLConstants/property/accessExternalSchema"

    invoke-static {v1, v2, v3}, Lorg/apache/poi/util/XMLHelper;->quietSet(Lorg/apache/poi/util/XMLHelper$SecurityProperty;Ljava/lang/String;Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getTransformerFactory()Ljavax/xml/transform/TransformerFactory;
    .locals 5

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/apache/poi/util/i0;

    invoke-direct {v1, v0}, Lorg/apache/poi/util/i0;-><init>(Ljavax/xml/transform/TransformerFactory;)V

    const-string v2, "http://javax.xml.XMLConstants/feature/secure-processing"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lorg/apache/poi/util/XMLHelper;->trySet(Lorg/apache/poi/util/XMLHelper$SecurityFeature;Ljava/lang/String;Z)Z

    new-instance v1, Lorg/apache/poi/util/a0;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/util/a0;-><init>(ILjava/lang/Object;)V

    const-string v2, "http://javax.xml.XMLConstants/property/accessExternalDTD"

    const-string v4, ""

    invoke-static {v1, v2, v4}, Lorg/apache/poi/util/XMLHelper;->quietSet(Lorg/apache/poi/util/XMLHelper$SecurityProperty;Ljava/lang/String;Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/poi/util/c0;

    invoke-direct {v1, v3, v0}, Lorg/apache/poi/util/c0;-><init>(ILjava/lang/Object;)V

    const-string v2, "http://javax.xml.XMLConstants/property/accessExternalStylesheet"

    invoke-static {v1, v2, v4}, Lorg/apache/poi/util/XMLHelper;->quietSet(Lorg/apache/poi/util/XMLHelper$SecurityProperty;Ljava/lang/String;Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/poi/util/i0;

    invoke-direct {v1, v0}, Lorg/apache/poi/util/i0;-><init>(Ljavax/xml/transform/TransformerFactory;)V

    const-string v2, "http://javax.xml.XMLConstants/property/accessExternalSchema"

    invoke-static {v1, v2, v4}, Lorg/apache/poi/util/XMLHelper;->quietSet(Lorg/apache/poi/util/XMLHelper$SecurityProperty;Ljava/lang/String;Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static getXercesSecurityManager()Ljava/lang/Object;
    .locals 11

    sget-object v0, Lorg/apache/poi/util/XMLHelper;->SECURITY_MANAGERS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "setEntityExpansionLimit"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v2

    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v5

    :catchall_0
    move-exception v5

    invoke-static {v5}, Lorg/apache/poi/util/ExceptionUtil;->isFatal(Ljava/lang/Throwable;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5}, Lorg/apache/poi/util/ExceptionUtil;->rethrow(Ljava/lang/Throwable;)V

    :cond_0
    const-string v6, "SAX Feature unsupported"

    invoke-static {v5, v6, v4}, Lorg/apache/poi/util/XMLHelper;->logThrowable(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static ignoreEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 1

    new-instance p0, Lorg/xml/sax/InputSource;

    new-instance p1, Ljava/io/StringReader;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    return-object p0
.end method

.method private static synthetic lambda$getDocumentBuilderFactory$0(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setXIncludeAware(Z)V

    return-void
.end method

.method private static logThrowable(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lorg/apache/poi/util/XMLHelper;->lastLog:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v4, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    sget-object v0, Lorg/apache/poi/util/XMLHelper;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    invoke-interface {v0, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p0

    const-string v0, "{} [log suppressed for 5 minutes] {}"

    invoke-interface {p0, p1, v0, p2}, La5/b;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lorg/apache/poi/util/XMLHelper;->lastLog:J

    :cond_0
    return-void
.end method

.method public static newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .locals 3

    :try_start_0
    sget-object v0, Lorg/apache/poi/util/XMLHelper;->documentBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/util/h0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    new-instance v1, Lorg/apache/poi/util/XMLHelper$DocHelperErrorHandler;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/apache/poi/util/XMLHelper$DocHelperErrorHandler;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cannot create a DocumentBuilder"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static newTransformer()Ljavax/xml/transform/Transformer;
    .locals 3

    invoke-static {}, Lorg/apache/poi/util/XMLHelper;->getTransformerFactory()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    const-string v1, "encoding"

    const-string v2, "UTF-8"

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "indent"

    const-string v2, "no"

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "method"

    const-string v2, "xml"

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static newXMLEventFactory()Ljavax/xml/stream/XMLEventFactory;
    .locals 1

    invoke-static {}, Ljavax/xml/stream/XMLEventFactory;->newInstance()Ljavax/xml/stream/XMLEventFactory;

    move-result-object v0

    return-object v0
.end method

.method public static newXMLInputFactory()Ljavax/xml/stream/XMLInputFactory;
    .locals 5

    invoke-static {}, Ljavax/xml/stream/XMLInputFactory;->newInstance()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/apache/poi/util/z;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/util/z;-><init>(Ljavax/xml/stream/XMLInputFactory;I)V

    const-string v3, "javax.xml.stream.isNamespaceAware"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lorg/apache/poi/util/XMLHelper;->trySet(Lorg/apache/poi/util/XMLHelper$SecurityFeature;Ljava/lang/String;Z)Z

    new-instance v1, Lorg/apache/poi/util/a0;

    const/4 v3, 0x4

    invoke-direct {v1, v3, v0}, Lorg/apache/poi/util/a0;-><init>(ILjava/lang/Object;)V

    const-string v3, "javax.xml.stream.isValidating"

    invoke-static {v1, v3, v2}, Lorg/apache/poi/util/XMLHelper;->trySet(Lorg/apache/poi/util/XMLHelper$SecurityFeature;Ljava/lang/String;Z)Z

    new-instance v1, Lorg/apache/poi/util/c0;

    const/4 v3, 0x2

    invoke-direct {v1, v3, v0}, Lorg/apache/poi/util/c0;-><init>(ILjava/lang/Object;)V

    const-string v3, "javax.xml.stream.supportDTD"

    invoke-static {v1, v3, v2}, Lorg/apache/poi/util/XMLHelper;->trySet(Lorg/apache/poi/util/XMLHelper$SecurityFeature;Ljava/lang/String;Z)Z

    new-instance v1, Lorg/apache/poi/util/z;

    invoke-direct {v1, v0, v4}, Lorg/apache/poi/util/z;-><init>(Ljavax/xml/stream/XMLInputFactory;I)V

    const-string v3, "javax.xml.stream.isSupportingExternalEntities"

    invoke-static {v1, v3, v2}, Lorg/apache/poi/util/XMLHelper;->trySet(Lorg/apache/poi/util/XMLHelper$SecurityFeature;Ljava/lang/String;Z)Z

    return-object v0
.end method

.method public static newXMLOutputFactory()Ljavax/xml/stream/XMLOutputFactory;
    .locals 4

    invoke-static {}, Ljavax/xml/stream/XMLOutputFactory;->newInstance()Ljavax/xml/stream/XMLOutputFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/apache/poi/util/a0;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/util/a0;-><init>(ILjava/lang/Object;)V

    const-string v3, "javax.xml.stream.isRepairingNamespaces"

    invoke-static {v1, v3, v2}, Lorg/apache/poi/util/XMLHelper;->trySet(Lorg/apache/poi/util/XMLHelper$SecurityFeature;Ljava/lang/String;Z)Z

    return-object v0
.end method

.method public static newXMLReader()Lorg/xml/sax/XMLReader;
    .locals 5

    sget-object v0, Lorg/apache/poi/util/XMLHelper;->saxFactory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/util/x;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/poi/util/x;-><init>(I)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    new-instance v1, Lorg/apache/poi/util/XMLHelper$DocHelperErrorHandler;

    invoke-direct {v1, v2}, Lorg/apache/poi/util/XMLHelper$DocHelperErrorHandler;-><init>(Z)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    new-instance v1, Lorg/apache/poi/util/y;

    invoke-direct {v1, v0}, Lorg/apache/poi/util/y;-><init>(Lorg/xml/sax/XMLReader;)V

    const-string v3, "http://javax.xml.XMLConstants/feature/secure-processing"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lorg/apache/poi/util/XMLHelper;->trySet(Lorg/apache/poi/util/XMLHelper$SecurityFeature;Ljava/lang/String;Z)Z

    new-instance v1, Lorg/apache/poi/util/d0;

    invoke-direct {v1, v0}, Lorg/apache/poi/util/d0;-><init>(Ljava/lang/Object;)V

    const-string v3, "http://xml.org/sax/features/external-general-entities"

    invoke-static {v1, v3, v2}, Lorg/apache/poi/util/XMLHelper;->trySet(Lorg/apache/poi/util/XMLHelper$SecurityFeature;Ljava/lang/String;Z)Z

    invoke-static {}, Lorg/apache/poi/util/XMLHelper;->getXercesSecurityManager()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lorg/apache/poi/util/a0;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v0}, Lorg/apache/poi/util/a0;-><init>(ILjava/lang/Object;)V

    const-string v3, "http://apache.org/xml/properties/security-manager"

    invoke-static {v2, v3, v1}, Lorg/apache/poi/util/XMLHelper;->trySet(Lorg/apache/poi/util/XMLHelper$SecurityProperty;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lorg/apache/poi/util/y;

    invoke-direct {v1, v0}, Lorg/apache/poi/util/y;-><init>(Lorg/xml/sax/XMLReader;)V

    const-string v2, "http://www.oracle.com/xml/jaxp/properties/entityExpansionLimit"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/apache/poi/util/XMLHelper;->trySet(Lorg/apache/poi/util/XMLHelper$SecurityProperty;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private static quietSet(Lorg/apache/poi/util/XMLHelper$SecurityProperty;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lorg/apache/poi/util/XMLHelper$SecurityProperty;->accept(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lorg/apache/poi/util/ExceptionUtil;->isFatal(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lorg/apache/poi/util/ExceptionUtil;->rethrow(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static trySet(Lorg/apache/poi/util/XMLHelper$SecurityFeature;Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0, p1, p2}, Lorg/apache/poi/util/XMLHelper$SecurityFeature;->accept(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 2
    invoke-static {p0}, Lorg/apache/poi/util/ExceptionUtil;->isFatal(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-static {p0}, Lorg/apache/poi/util/ExceptionUtil;->rethrow(Ljava/lang/Throwable;)V

    :cond_0
    const-string p2, "Cannot set SAX feature because outdated XML parser in classpath"

    .line 4
    invoke-static {p0, p2, p1}, Lorg/apache/poi/util/XMLHelper;->logThrowable(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 5
    invoke-static {p0}, Lorg/apache/poi/util/ExceptionUtil;->isFatal(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    invoke-static {p0}, Lorg/apache/poi/util/ExceptionUtil;->rethrow(Ljava/lang/Throwable;)V

    :cond_1
    const-string p2, "SAX Feature unsupported"

    .line 7
    invoke-static {p0, p2, p1}, Lorg/apache/poi/util/XMLHelper;->logThrowable(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static trySet(Lorg/apache/poi/util/XMLHelper$SecurityProperty;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    .line 8
    :try_start_0
    invoke-interface {p0, p1, p2}, Lorg/apache/poi/util/XMLHelper$SecurityProperty;->accept(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 9
    invoke-static {p0}, Lorg/apache/poi/util/ExceptionUtil;->isFatal(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 10
    invoke-static {p0}, Lorg/apache/poi/util/ExceptionUtil;->rethrow(Ljava/lang/Throwable;)V

    :cond_0
    const-string p2, "Cannot set SAX feature because outdated XML parser in classpath"

    .line 11
    invoke-static {p0, p2, p1}, Lorg/apache/poi/util/XMLHelper;->logThrowable(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 12
    invoke-static {p0}, Lorg/apache/poi/util/ExceptionUtil;->isFatal(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 13
    invoke-static {p0}, Lorg/apache/poi/util/ExceptionUtil;->rethrow(Ljava/lang/Throwable;)V

    :cond_1
    const-string p2, "SAX Feature unsupported"

    .line 14
    invoke-static {p0, p2, p1}, Lorg/apache/poi/util/XMLHelper;->logThrowable(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method
