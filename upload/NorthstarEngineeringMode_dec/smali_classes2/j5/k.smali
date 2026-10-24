.class public final Lj5/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le5/g;

.field public static b:J

.field public static final c:Lorg/apache/poi/util/x;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lj5/k;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lj5/k;->a:Le5/g;

    new-instance v0, Lorg/apache/poi/util/x;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/poi/util/x;-><init>(I)V

    sput-object v0, Lj5/k;->c:Lorg/apache/poi/util/x;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Li5/z1;)Lorg/xml/sax/XMLReader;
    .locals 15

    sget-object v0, Li5/z1$a;->Q1:Li5/z1$a;

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    const-string v4, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-static {v1, v4, v3}, Lj5/k;->b(Ljavax/xml/parsers/SAXParserFactory;Ljava/lang/String;Z)V

    sget-object v5, Li5/z1$a;->R1:Li5/z1$a;

    iget-object v6, p0, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    const-string v6, "http://apache.org/xml/features/nonvalidating/load-dtd-grammar"

    invoke-static {v1, v6, v5}, Lj5/k;->b(Ljavax/xml/parsers/SAXParserFactory;Ljava/lang/String;Z)V

    sget-object v5, Li5/z1$a;->S1:Li5/z1$a;

    iget-object v6, p0, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    const-string v6, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    invoke-static {v1, v6, v5}, Lj5/k;->b(Ljavax/xml/parsers/SAXParserFactory;Ljava/lang/String;Z)V

    sget-object v5, Li5/z1$a;->T1:Li5/z1$a;

    iget-object v6, p0, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    const-string v6, "http://apache.org/xml/features/disallow-doctype-decl"

    invoke-static {v1, v6, v5}, Lj5/k;->b(Ljavax/xml/parsers/SAXParserFactory;Ljava/lang/String;Z)V

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    sget-object v5, Lj5/k;->c:Lorg/apache/poi/util/x;

    invoke-interface {v1, v5}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    sget-object v5, Lj5/k;->a:Le5/g;

    :try_start_0
    invoke-interface {v1, v4, v3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v6

    invoke-interface {v5}, La5/d;->g()La5/b;

    move-result-object v7

    invoke-interface {v7, v6}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object v6

    const-string v7, "Cannot set SAX feature {} because outdated XML parser in classpath"

    invoke-interface {v6, v4, v7}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v6

    invoke-interface {v5}, La5/d;->g()La5/b;

    move-result-object v7

    invoke-interface {v7, v6}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object v6

    const-string v7, "SAX Feature unsupported: {}"

    invoke-interface {v6, v4, v7}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    const-string v4, "SAX Security Manager could not be setup [log suppressed for 5 minutes]"

    const-string v6, "org.apache.xerces.util.SecurityManager"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v2

    const/4 v7, 0x0

    const/16 v8, 0x800

    const-wide/16 v9, 0x5

    :try_start_1
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-array v11, v2, [Ljava/lang/Class;

    invoke-virtual {v6, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v11

    new-array v12, v2, [Ljava/lang/Object;

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "setEntityExpansionLimit"

    new-array v13, v3, [Ljava/lang/Class;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v13, v2

    invoke-virtual {v6, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v12, p0, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    if-nez v12, :cond_3

    move v12, v8

    goto :goto_4

    :cond_3
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :goto_4
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v2

    invoke-virtual {v6, v11, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "http://apache.org/xml/properties/security-manager"

    invoke-interface {v1, v2, v11}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v2

    invoke-static {v2}, Ld/f;->L(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v11, Lj5/k;->b:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    add-long/2addr v13, v11

    cmp-long v3, v6, v13

    if-lez v3, :cond_5

    invoke-interface {v5}, La5/d;->g()La5/b;

    move-result-object v3

    invoke-interface {v3, v2}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object v2

    invoke-interface {v2, v4}, La5/b;->f(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lj5/k;->b:J

    goto :goto_5

    :cond_4
    invoke-static {v2}, Ld/f;->W(Ljava/lang/Throwable;)V

    throw v7

    :catchall_1
    move-exception v2

    invoke-static {v2}, Ld/f;->L(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_5
    :goto_5
    :try_start_3
    const-string v2, "http://www.oracle.com/xml/jaxp/properties/entityExpansionLimit"

    iget-object p0, p0, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_6
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, v2, p0}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    :catch_2
    move-exception p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v6, Lj5/k;->b:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    add-long/2addr v8, v6

    cmp-long v0, v2, v8

    if-lez v0, :cond_7

    invoke-interface {v5}, La5/d;->g()La5/b;

    move-result-object v0

    invoke-interface {v0, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p0

    invoke-interface {p0, v4}, La5/b;->f(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lj5/k;->b:J

    :cond_7
    :goto_7
    return-object v1

    :cond_8
    invoke-static {v2}, Ld/f;->W(Ljava/lang/Throwable;)V

    throw v7
.end method

.method public static b(Ljavax/xml/parsers/SAXParserFactory;Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lj5/k;->a:Le5/g;

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object p2

    invoke-interface {p2, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p0

    const-string p2, "Cannot set SAX feature {} because outdated XML parser in classpath"

    invoke-interface {p0, p1, p2}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object p2

    invoke-interface {p2, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p0

    const-string p2, "SAX Feature unsupported: {}"

    invoke-interface {p0, p1, p2}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
