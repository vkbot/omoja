.class public Lorg/apache/logging/log4j/core/net/JndiManager;
.super Lorg/apache/logging/log4j/core/appender/AbstractManager;
.source "JndiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/net/JndiManager$JndiManagerFactory;
    }
.end annotation


# static fields
.field private static final FACTORY:Lorg/apache/logging/log4j/core/net/JndiManager$JndiManagerFactory;

.field private static final JAVA_SCHEME:Ljava/lang/String; = "java"

.field private static final PREFIX:Ljava/lang/String; = "log4j2.enableJndi"


# instance fields
.field private final context:Ljavax/naming/InitialContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lorg/apache/logging/log4j/core/net/JndiManager$JndiManagerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/net/JndiManager$JndiManagerFactory;-><init>(Lorg/apache/logging/log4j/core/net/JndiManager$1;)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/JndiManager;->FACTORY:Lorg/apache/logging/log4j/core/net/JndiManager$JndiManagerFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljavax/naming/InitialContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Ljavax/naming/InitialContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "context"
        }
    .end annotation

    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/logging/log4j/core/appender/AbstractManager;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;)V

    .line 103
    iput-object p2, p0, Lorg/apache/logging/log4j/core/net/JndiManager;->context:Ljavax/naming/InitialContext;

    .line 104
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljavax/naming/InitialContext;Lorg/apache/logging/log4j/core/net/JndiManager$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljavax/naming/InitialContext;
    .param p3, "x2"    # Lorg/apache/logging/log4j/core/net/JndiManager$1;

    .line 39
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/net/JndiManager;-><init>(Ljava/lang/String;Ljavax/naming/InitialContext;)V

    return-void
.end method

.method static synthetic access$200()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 39
    sget-object v0, Lorg/apache/logging/log4j/core/net/JndiManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method private static createManagerName()Ljava/lang/String;
    .locals 3

    .line 162
    const-class v0, Lorg/apache/logging/log4j/core/net/JndiManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;
    .locals 3
    .param p0, "initialContextFactoryName"    # Ljava/lang/String;
    .param p1, "providerURL"    # Ljava/lang/String;
    .param p2, "urlPkgPrefixes"    # Ljava/lang/String;
    .param p3, "securityPrincipal"    # Ljava/lang/String;
    .param p4, "securityCredentials"    # Ljava/lang/String;
    .param p5, "additionalProperties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "initialContextFactoryName",
            "providerURL",
            "urlPkgPrefixes",
            "securityPrincipal",
            "securityCredentials",
            "additionalProperties"
        }
    .end annotation

    .line 187
    if-nez p0, :cond_0

    .line 188
    const/4 v0, 0x0

    return-object v0

    .line 190
    :cond_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 191
    .local v0, "properties":Ljava/util/Properties;
    const-string v1, "java.naming.factory.initial"

    invoke-virtual {v0, v1, p0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    if-eqz p1, :cond_1

    .line 193
    const-string v1, "java.naming.provider.url"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 195
    :cond_1
    sget-object v1, Lorg/apache/logging/log4j/core/net/JndiManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "The JNDI InitialContextFactory class name [{}] was provided, but there was no associated provider URL. This is likely to cause problems."

    invoke-interface {v1, v2, p0}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    :goto_0
    if-eqz p2, :cond_2

    .line 199
    const-string v1, "java.naming.factory.url.pkgs"

    invoke-virtual {v0, v1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 201
    :cond_2
    if-eqz p3, :cond_4

    .line 202
    const-string v1, "java.naming.security.principal"

    invoke-virtual {v0, v1, p3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 203
    if-eqz p4, :cond_3

    .line 204
    const-string v1, "java.naming.security.credentials"

    invoke-virtual {v0, v1, p4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    .line 206
    :cond_3
    sget-object v1, Lorg/apache/logging/log4j/core/net/JndiManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "A security principal [{}] was provided, but with no corresponding security credentials."

    invoke-interface {v1, v2, p3}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    :cond_4
    :goto_1
    if-eqz p5, :cond_5

    .line 211
    invoke-virtual {v0, p5}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 213
    :cond_5
    return-object v0
.end method

.method public static getDefaultManager()Lorg/apache/logging/log4j/core/net/JndiManager;
    .locals 3

    .line 112
    const-class v0, Lorg/apache/logging/log4j/core/net/JndiManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/logging/log4j/core/net/JndiManager;->FACTORY:Lorg/apache/logging/log4j/core/net/JndiManager$JndiManagerFactory;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/apache/logging/log4j/core/net/JndiManager;->getManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/ManagerFactory;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/appender/AbstractManager;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/net/JndiManager;

    return-object v0
.end method

.method public static getDefaultManager(Ljava/lang/String;)Lorg/apache/logging/log4j/core/net/JndiManager;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 122
    sget-object v0, Lorg/apache/logging/log4j/core/net/JndiManager;->FACTORY:Lorg/apache/logging/log4j/core/net/JndiManager$JndiManagerFactory;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/logging/log4j/core/net/JndiManager;->getManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/ManagerFactory;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/appender/AbstractManager;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/net/JndiManager;

    return-object v0
.end method

.method public static getJndiManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/logging/log4j/core/net/JndiManager;
    .locals 3
    .param p0, "initialContextFactoryName"    # Ljava/lang/String;
    .param p1, "providerURL"    # Ljava/lang/String;
    .param p2, "urlPkgPrefixes"    # Ljava/lang/String;
    .param p3, "securityPrincipal"    # Ljava/lang/String;
    .param p4, "securityCredentials"    # Ljava/lang/String;
    .param p5, "additionalProperties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "initialContextFactoryName",
            "providerURL",
            "urlPkgPrefixes",
            "securityPrincipal",
            "securityCredentials",
            "additionalProperties"
        }
    .end annotation

    .line 144
    invoke-static/range {p0 .. p5}, Lorg/apache/logging/log4j/core/net/JndiManager;->createProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v0

    .line 146
    .local v0, "properties":Ljava/util/Properties;
    invoke-static {}, Lorg/apache/logging/log4j/core/net/JndiManager;->createManagerName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/logging/log4j/core/net/JndiManager;->FACTORY:Lorg/apache/logging/log4j/core/net/JndiManager$JndiManagerFactory;

    invoke-static {v1, v2, v0}, Lorg/apache/logging/log4j/core/net/JndiManager;->getManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/ManagerFactory;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/appender/AbstractManager;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/net/JndiManager;

    return-object v1
.end method

.method public static getJndiManager(Ljava/util/Properties;)Lorg/apache/logging/log4j/core/net/JndiManager;
    .locals 2
    .param p0, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "properties"
        }
    .end annotation

    .line 158
    invoke-static {}, Lorg/apache/logging/log4j/core/net/JndiManager;->createManagerName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/logging/log4j/core/net/JndiManager;->FACTORY:Lorg/apache/logging/log4j/core/net/JndiManager$JndiManagerFactory;

    invoke-static {v0, v1, p0}, Lorg/apache/logging/log4j/core/net/JndiManager;->getManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/ManagerFactory;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/appender/AbstractManager;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/net/JndiManager;

    return-object v0
.end method

.method public static isJndiContextSelectorEnabled()Z
    .locals 1

    .line 68
    const-string v0, "ContextSelector"

    invoke-static {v0}, Lorg/apache/logging/log4j/core/net/JndiManager;->isJndiEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isJndiEnabled()Z
    .locals 1

    .line 58
    invoke-static {}, Lorg/apache/logging/log4j/core/net/JndiManager;->isJndiContextSelectorEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/apache/logging/log4j/core/net/JndiManager;->isJndiJdbcEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/apache/logging/log4j/core/net/JndiManager;->isJndiJmsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/apache/logging/log4j/core/net/JndiManager;->isJndiLookupEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isJndiEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p0, "subKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "subKey"
        }
    .end annotation

    .line 48
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "log4j2.enableJndi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isJndiJdbcEnabled()Z
    .locals 1

    .line 78
    const-string v0, "Jdbc"

    invoke-static {v0}, Lorg/apache/logging/log4j/core/net/JndiManager;->isJndiEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isJndiJmsEnabled()Z
    .locals 1

    .line 88
    const-string v0, "Jms"

    invoke-static {v0}, Lorg/apache/logging/log4j/core/net/JndiManager;->isJndiEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isJndiLookupEnabled()Z
    .locals 1

    .line 98
    const-string v0, "Lookup"

    invoke-static {v0}, Lorg/apache/logging/log4j/core/net/JndiManager;->isJndiEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/JndiManager;->context:Ljavax/naming/InitialContext;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 232
    return-object v1

    .line 235
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, "uri":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "java"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 239
    :cond_1
    sget-object v2, Lorg/apache/logging/log4j/core/net/JndiManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Unsupported JNDI URI - {}"

    invoke-interface {v2, v3, p1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    .end local v0    # "uri":Ljava/net/URI;
    goto :goto_1

    .line 237
    .restart local v0    # "uri":Ljava/net/URI;
    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/net/JndiManager;->context:Ljavax/naming/InitialContext;

    invoke-virtual {v2, p1}, Ljavax/naming/InitialContext;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 240
    .end local v0    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v0

    .line 241
    .local v0, "ex":Ljava/net/URISyntaxException;
    sget-object v2, Lorg/apache/logging/log4j/core/net/JndiManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Invalid JNDI URI - {}"

    invoke-interface {v2, v3, p1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    .end local v0    # "ex":Ljava/net/URISyntaxException;
    :goto_1
    return-object v1
.end method

.method protected releaseSub(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "timeout",
            "timeUnit"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/JndiManager;->context:Ljavax/naming/InitialContext;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/JndiCloser;->closeSilently(Ljavax/naming/Context;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JndiManager [context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/JndiManager;->context:Ljavax/naming/InitialContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/logging/log4j/core/net/JndiManager;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
