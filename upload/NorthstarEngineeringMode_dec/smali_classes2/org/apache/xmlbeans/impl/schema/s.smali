.class public abstract Lorg/apache/xmlbeans/impl/schema/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/d0;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final USER_AGENT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "XMLBeans/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Li5/l0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Li5/l0;->a:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, La4/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/s;->USER_AGENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doCompilePath(Ljava/lang/String;Li5/z1;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lr5/g;->a(Ljava/lang/String;Li5/z1;)Lr5/a;

    return-object p0
.end method

.method private static doCompileQuery(Ljava/lang/String;Li5/z1;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lr5/g;->a:Ljava/util/WeakHashMap;

    const-class v0, Lr5/g;

    monitor-enter v0

    :try_start_0
    const-class v1, Lr5/g;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p1}, Lr5/g;->d(Li5/z1;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p1}, Lr5/g;->c(Ljava/lang/String;Ljava/lang/String;Li5/z1;)Ls5/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v1

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public compilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/s;->compilePath(Ljava/lang/String;Li5/z1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public compilePath(Ljava/lang/String;Li5/z1;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p1, p2}, Lorg/apache/xmlbeans/impl/schema/s;->doCompilePath(Ljava/lang/String;Li5/z1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public compileQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/s;->compileQuery(Ljava/lang/String;Li5/z1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public compileQuery(Ljava/lang/String;Li5/z1;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p1, p2}, Lorg/apache/xmlbeans/impl/schema/s;->doCompileQuery(Ljava/lang/String;Li5/z1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public findAttribute(Ljavax/xml/namespace/QName;)Li5/t;
    .locals 0

    invoke-interface {p0, p1}, Li5/d0;->findAttributeRef(Ljavax/xml/namespace/QName;)Li5/t$a;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/t;

    return-object p0
.end method

.method public findAttributeGroup(Ljavax/xml/namespace/QName;)Li5/p;
    .locals 0

    invoke-interface {p0, p1}, Li5/d0;->findAttributeGroupRef(Ljavax/xml/namespace/QName;)Li5/p$a;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/p;

    return-object p0
.end method

.method public findAttributeType(Ljavax/xml/namespace/QName;)Li5/c0;
    .locals 0

    invoke-interface {p0, p1}, Li5/d0;->findAttributeTypeRef(Ljavax/xml/namespace/QName;)Li5/c0$a;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/c0;

    return-object p0
.end method

.method public findDocumentType(Ljavax/xml/namespace/QName;)Li5/c0;
    .locals 0

    invoke-interface {p0, p1}, Li5/d0;->findDocumentTypeRef(Ljavax/xml/namespace/QName;)Li5/c0$a;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/c0;

    return-object p0
.end method

.method public findElement(Ljavax/xml/namespace/QName;)Li5/u;
    .locals 0

    invoke-interface {p0, p1}, Li5/d0;->findElementRef(Ljavax/xml/namespace/QName;)Li5/u$a;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/u;

    return-object p0
.end method

.method public findModelGroup(Ljavax/xml/namespace/QName;)Li5/y;
    .locals 0

    invoke-interface {p0, p1}, Li5/d0;->findModelGroupRef(Ljavax/xml/namespace/QName;)Li5/y$a;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/y;

    return-object p0
.end method

.method public findType(Ljavax/xml/namespace/QName;)Li5/c0;
    .locals 0

    invoke-interface {p0, p1}, Li5/d0;->findTypeRef(Ljavax/xml/namespace/QName;)Li5/c0$a;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/c0;

    return-object p0
.end method

.method public newDomImplementation(Li5/z1;)Lorg/w3c/dom/DOMImplementation;
    .locals 0

    invoke-static {p0, p1}, Lm5/z0;->t(Li5/d0;Li5/z1;)Lm5/z0;

    move-result-object p0

    return-object p0
.end method

.method public newInstance(Li5/c0;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    invoke-static {}, Li5/a1$a;->a()Li5/a1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Li5/a1;->g()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    new-instance v0, Lf2/c;

    invoke-direct {v0, p2, p1}, Lf2/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, p2, v0}, Lm5/z0;->I(Li5/d0;Li5/z1;Lm5/z0$j;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public newXmlSaxHandler(Li5/c0;Li5/z1;)Li5/d2;
    .locals 1

    invoke-static {}, Li5/a1$a;->a()Li5/a1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Li5/a1;->c()Li5/d2;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/apache/poi/xssf/usermodel/c;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, p2, v0}, Lm5/z0;->I(Li5/d0;Li5/z1;Lm5/z0$j;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/d2;
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public parse(Ljava/io/File;Li5/c0;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;
    .locals 3

    .line 11
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Li5/z1$a;->G1:Li5/z1$a;

    if-nez p3, :cond_0

    .line 12
    new-instance p3, Li5/z1;

    invoke-direct {p3}, Li5/z1;-><init>()V

    iget-object v2, p3, Li5/z1;->c:Ljava/util/Map;

    .line 13
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_0
    iget-object v2, p3, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 15
    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    .line 16
    new-instance v2, Li5/z1;

    invoke-direct {v2, p3}, Li5/z1;-><init>(Li5/z1;)V

    iget-object p3, v2, Li5/z1;->c:Ljava/util/Map;

    .line 17
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p3, v2

    .line 18
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1

    .line 19
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/schema/s;->parse(Ljava/io/InputStream;Li5/c0;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 20
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    .line 21
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_3

    .line 22
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p2
.end method

.method public parse(Ljava/io/InputStream;Li5/c0;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;
    .locals 3

    .line 44
    invoke-static {}, Li5/a1$a;->a()Li5/a1;

    move-result-object v0

    if-eqz p3, :cond_0

    sget-object v1, Li5/z1$a;->y1:Li5/z1$a;

    .line 45
    iget-object v2, p3, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "SHA"

    .line 46
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    new-instance v2, Ljava/security/DigestInputStream;

    invoke-direct {v2, p1, v1}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    move-object p1, v2

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 48
    invoke-interface {v0}, Li5/a1;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0

    .line 49
    :cond_1
    new-instance v0, Lm5/y0;

    invoke-direct {v0, p1, p2, p3}, Lm5/y0;-><init>(Ljava/io/InputStream;Li5/c0;Li5/z1;)V

    invoke-static {p0, p3, v0}, Lm5/z0;->I(Li5/d0;Li5/z1;Lm5/z0$j;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    if-eqz v2, :cond_2

    .line 50
    invoke-interface {p0}, Li5/j2;->documentProperties()Li5/t0;

    move-result-object p1

    invoke-virtual {v2}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object p2

    invoke-virtual {p2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p2

    .line 51
    sget-object p3, Li5/t0;->h:Ljava/lang/Object;

    .line 52
    invoke-virtual {p1, p3, p2}, Li5/t0;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p0
.end method

.method public parse(Ljava/io/Reader;Li5/c0;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    .line 53
    invoke-static {}, Li5/a1$a;->a()Li5/a1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0}, Li5/a1;->b()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0

    .line 55
    :cond_0
    new-instance v0, Lc2/a;

    const/4 v1, 0x5

    invoke-direct {v0, p3, p1, v1, p2}, Lc2/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {p0, p3, v0}, Lm5/z0;->I(Li5/d0;Li5/z1;Lm5/z0$j;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    return-object p0
.end method

.method public parse(Ljava/lang/String;Li5/c0;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    .line 1
    invoke-static {}, Li5/a1$a;->a()Li5/a1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Li5/a1;->f()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Lorg/apache/poi/ss/formula/g;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p3, v1, p2}, Lorg/apache/poi/ss/formula/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {p0, p3, v0}, Lm5/z0;->I(Li5/d0;Li5/z1;Lm5/z0$j;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Li5/z0;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    throw p1
.end method

.method public parse(Ljava/net/URL;Li5/c0;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;
    .locals 6

    sget-object v0, Li5/z1$a;->G1:Li5/z1$a;

    if-nez p3, :cond_0

    .line 23
    new-instance p3, Li5/z1;

    invoke-direct {p3}, Li5/z1;-><init>()V

    .line 24
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p3, Li5/z1;->c:Ljava/util/Map;

    .line 25
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 26
    :cond_0
    iget-object v1, p3, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 28
    new-instance v1, Li5/z1;

    invoke-direct {v1, p3}, Li5/z1;-><init>(Li5/z1;)V

    .line 29
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v2, v1, Li5/z1;->c:Ljava/util/Map;

    .line 30
    invoke-interface {v2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p3, v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 31
    :cond_2
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    const-string v4, "User-Agent"

    sget-object v5, Lorg/apache/xmlbeans/impl/schema/s;->USER_AGENT:Ljava/lang/String;

    .line 32
    invoke-virtual {v3, v4, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Accept"

    const-string v5, "application/xml, text/xml, */*"

    .line 33
    invoke-virtual {v3, v4, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    instance-of v4, v3, Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_8

    .line 35
    move-object v2, v3

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 36
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0x12d

    if-eq v4, v5, :cond_4

    const/16 v5, 0x12e

    if-ne v4, v5, :cond_3

    goto :goto_1

    :cond_3
    move v4, v0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_5

    const/4 v5, 0x5

    if-le v1, v5, :cond_5

    move v4, v0

    :cond_5
    if-eqz v4, :cond_7

    const-string v5, "Location"

    .line 37
    invoke-virtual {v2, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v0

    goto :goto_3

    .line 38
    :cond_6
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    :cond_7
    move v2, v4

    :cond_8
    :goto_3
    if-nez v2, :cond_2

    .line 39
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 40
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/schema/s;->parse(Ljava/io/InputStream;Li5/c0;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_9

    .line 41
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_9
    return-object p0

    :catchall_0
    move-exception p0

    .line 42
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_a

    .line 43
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_4
    throw p2
.end method

.method public parse(Ljavax/xml/stream/XMLStreamReader;Li5/c0;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    .line 7
    invoke-static {}, Li5/a1$a;->a()Li5/a1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0}, Li5/a1;->d()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0

    .line 9
    :cond_0
    :try_start_0
    new-instance v0, Lm5/y0;

    invoke-direct {v0, p1, p2, p3}, Lm5/y0;-><init>(Ljavax/xml/stream/XMLStreamReader;Li5/c0;Li5/z1;)V

    invoke-static {p0, p3, v0}, Lm5/z0;->I(Li5/d0;Li5/z1;Lm5/z0$j;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 10
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public parse(Lorg/w3c/dom/Node;Li5/c0;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    .line 56
    invoke-static {}, Li5/a1$a;->a()Li5/a1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0}, Li5/a1;->e()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0

    .line 58
    :cond_0
    :try_start_0
    new-instance v0, Lorg/apache/poi/ss/formula/g;

    const/4 v1, 0x3

    invoke-direct {v0, p3, p1, v1, p2}, Lorg/apache/poi/ss/formula/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {p0, p3, v0}, Lm5/z0;->I(Li5/d0;Li5/z1;Lm5/z0$j;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 59
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public typeForSignature(Ljava/lang/String;)Li5/c0;
    .locals 12

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, ""

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    const/4 v5, 0x1

    if-ge v4, v0, :cond_5

    const/16 v6, 0x3a

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    const/16 v7, 0x7c

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-gez v6, :cond_1

    move v6, v7

    goto :goto_2

    :cond_1
    if-gez v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_2
    if-ltz v6, :cond_3

    if-le v6, v0, :cond_4

    :cond_3
    move v6, v0

    :cond_4
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v6, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v5

    const/4 v0, 0x0

    move-object v4, v0

    :goto_3
    if-ltz p1, :cond_25

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v5, :cond_24

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_6

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x3d

    if-ne v7, v9, :cond_6

    move v7, v8

    goto :goto_4

    :cond_6
    move v7, v5

    :goto_4
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x49

    const/4 v11, 0x3

    if-eq v9, v10, :cond_1f

    const/16 v10, 0x4d

    if-eq v9, v10, :cond_1b

    const/16 v8, 0x51

    if-eq v9, v8, :cond_15

    const/16 v8, 0x52

    if-eq v9, v8, :cond_13

    const/16 v8, 0x54

    if-eq v9, v8, :cond_11

    const/16 v8, 0x55

    if-eq v9, v8, :cond_b

    packed-switch v9, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    if-nez v4, :cond_7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lj5/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/s;->findDocumentType(Ljavax/xml/namespace/QName;)Li5/c0;

    move-result-object v4

    if-nez v4, :cond_22

    return-object v0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_1
    if-eqz v4, :cond_a

    invoke-interface {v4}, Li5/c0;->B0()I

    move-result v6

    if-eq v6, v5, :cond_8

    return-object v0

    :cond_8
    invoke-interface {v4}, Li5/c0;->v()[Li5/c0;

    move-result-object v4

    array-length v6, v4

    if-eq v6, v5, :cond_9

    return-object v0

    :cond_9
    aget-object v4, v4, v3

    goto/16 :goto_8

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_b
    :pswitch_2
    if-eqz v4, :cond_f

    invoke-interface {v4}, Li5/c0;->getContentType()I

    move-result v8

    if-ge v8, v11, :cond_c

    return-object v0

    :cond_c
    invoke-interface {v4}, Li5/c0;->v()[Li5/c0;

    move-result-object v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    array-length v7, v4

    move v8, v3

    :goto_5
    if-ge v8, v7, :cond_e

    aget-object v9, v4, v8

    invoke-interface {v9}, Li5/c0;->V()Li5/s;

    move-result-object v10

    if-eqz v10, :cond_d

    invoke-interface {v10}, Li5/s;->b()Z

    move-result v11

    if-nez v11, :cond_d

    invoke-interface {v10}, Li5/s;->getName()Ljavax/xml/namespace/QName;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    :goto_6
    move-object v4, v9

    goto/16 :goto_8

    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_e
    return-object v0

    :cond_f
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lj5/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/s;->findElement(Ljavax/xml/namespace/QName;)Li5/u;

    move-result-object v4

    if-nez v4, :cond_10

    return-object v0

    :cond_10
    invoke-interface {v4}, Li5/s;->getType()Li5/c0;

    move-result-object v4

    goto/16 :goto_8

    :cond_11
    if-nez v4, :cond_12

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lj5/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/s;->findType(Ljavax/xml/namespace/QName;)Li5/c0;

    move-result-object v4

    if-nez v4, :cond_22

    return-object v0

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_13
    :pswitch_3
    if-nez v4, :cond_14

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lj5/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/s;->findAttributeType(Ljavax/xml/namespace/QName;)Li5/c0;

    move-result-object v4

    if-nez v4, :cond_22

    return-object v0

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_15
    :pswitch_4
    if-eqz v4, :cond_19

    invoke-interface {v4}, Li5/c0;->f0()Z

    move-result v8

    if-eqz v8, :cond_16

    return-object v0

    :cond_16
    invoke-interface {v4}, Li5/c0;->v()[Li5/c0;

    move-result-object v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    array-length v7, v4

    move v8, v3

    :goto_7
    if-ge v8, v7, :cond_18

    aget-object v9, v4, v8

    invoke-interface {v9}, Li5/c0;->V()Li5/s;

    move-result-object v10

    if-eqz v10, :cond_17

    invoke-interface {v10}, Li5/s;->b()Z

    move-result v11

    if-eqz v11, :cond_17

    invoke-interface {v10}, Li5/s;->getName()Ljavax/xml/namespace/QName;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    goto :goto_6

    :cond_17
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_18
    return-object v0

    :cond_19
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lj5/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/s;->findAttribute(Ljavax/xml/namespace/QName;)Li5/t;

    move-result-object v4

    if-nez v4, :cond_1a

    return-object v0

    :cond_1a
    invoke-interface {v4}, Li5/s;->getType()Li5/c0;

    move-result-object v4

    goto :goto_8

    :cond_1b
    if-eqz v4, :cond_1e

    :try_start_0
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v4}, Li5/c0;->B0()I

    move-result v7

    if-eq v7, v8, :cond_1c

    return-object v0

    :cond_1c
    invoke-interface {v4}, Li5/c0;->v()[Li5/c0;

    move-result-object v4

    array-length v7, v4

    if-gt v7, v6, :cond_1d

    return-object v0

    :cond_1d
    aget-object v4, v4, v6

    goto :goto_8

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1f
    if-eqz v4, :cond_23

    invoke-interface {v4}, Li5/c0;->B0()I

    move-result v6

    if-eq v6, v11, :cond_20

    return-object v0

    :cond_20
    invoke-interface {v4}, Li5/c0;->v()[Li5/c0;

    move-result-object v4

    array-length v6, v4

    if-eq v6, v5, :cond_21

    return-object v0

    :cond_21
    aget-object v4, v4, v3

    :cond_22
    :goto_8
    add-int/lit8 p1, p1, -0x1

    goto/16 :goto_3

    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_25
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
