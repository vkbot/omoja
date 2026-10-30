.class public final Lorg/apache/commons/net/util/KeyManagerUtils;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;,
        Lorg/apache/commons/net/util/KeyManagerUtils$X509KeyManager;
    }
.end annotation


# static fields
.field private static final DEFAULT_STORE_TYPE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lorg/apache/commons/net/util/KeyManagerUtils;->DEFAULT_STORE_TYPE:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static createClientKeyManager(Ljava/io/File;Ljava/lang/String;)Ljavax/net/ssl/KeyManager;
    .locals 2

    .line 20
    sget-object v0, Lorg/apache/commons/net/util/KeyManagerUtils;->DEFAULT_STORE_TYPE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p1}, Lorg/apache/commons/net/util/KeyManagerUtils;->createClientKeyManager(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManager;

    move-result-object p0

    return-object p0
.end method

.method public static createClientKeyManager(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManager;
    .locals 1

    .line 19
    sget-object v0, Lorg/apache/commons/net/util/KeyManagerUtils;->DEFAULT_STORE_TYPE:Ljava/lang/String;

    invoke-static {v0, p0, p1, p2, p1}, Lorg/apache/commons/net/util/KeyManagerUtils;->createClientKeyManager(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManager;

    move-result-object p0

    return-object p0
.end method

.method public static createClientKeyManager(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManager;
    .locals 0

    .line 21
    invoke-static {p0, p1, p2}, Lorg/apache/commons/net/util/KeyManagerUtils;->loadStore(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p0

    invoke-static {p0, p3, p4}, Lorg/apache/commons/net/util/KeyManagerUtils;->createClientKeyManager(Ljava/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManager;

    move-result-object p0

    return-object p0
.end method

.method public static createClientKeyManager(Ljava/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManager;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/net/util/KeyManagerUtils;->findAlias(Ljava/security/KeyStore;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;-><init>(Ljava/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance p0, Lorg/apache/commons/net/util/KeyManagerUtils$X509KeyManager;

    .line 14
    .line 15
    invoke-direct {p0, v0}, Lorg/apache/commons/net/util/KeyManagerUtils$X509KeyManager;-><init>(Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;)V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method private static findAlias(Ljava/security/KeyStore;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_1
    new-instance p0, Ljava/security/KeyStoreException;

    .line 25
    .line 26
    const-string v0, "Cannot find a private key entry"

    .line 27
    .line 28
    invoke-direct {p0, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method private static loadStore(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/io/FileInputStream;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, v0, p1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_1
    move-exception p1

    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    throw p0
.end method
