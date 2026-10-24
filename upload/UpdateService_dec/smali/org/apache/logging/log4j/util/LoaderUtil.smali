.class public final Lorg/apache/logging/log4j/util/LoaderUtil;
.super Ljava/lang/Object;
.source "LoaderUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/util/LoaderUtil$UrlResource;,
        Lorg/apache/logging/log4j/util/LoaderUtil$ThreadContextClassLoaderGetter;
    }
.end annotation


# static fields
.field private static final EMPTY_CLASS_LOADER_ARRAY:[Ljava/lang/ClassLoader;

.field private static final GET_CLASS_LOADER_DISABLED:Z

.field public static final IGNORE_TCCL_PROPERTY:Ljava/lang/String; = "log4j.ignoreTCL"

.field private static final SECURITY_MANAGER:Ljava/lang/SecurityManager;

.field private static final TCCL_GETTER:Ljava/security/PrivilegedAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/security/PrivilegedAction<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private static ignoreTCCL:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/ClassLoader;

    sput-object v1, Lorg/apache/logging/log4j/util/LoaderUtil;->EMPTY_CLASS_LOADER_ARRAY:[Ljava/lang/ClassLoader;

    .line 48
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    sput-object v1, Lorg/apache/logging/log4j/util/LoaderUtil;->SECURITY_MANAGER:Ljava/lang/SecurityManager;

    .line 56
    new-instance v1, Lorg/apache/logging/log4j/util/LoaderUtil$ThreadContextClassLoaderGetter;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/logging/log4j/util/LoaderUtil$ThreadContextClassLoaderGetter;-><init>(Lorg/apache/logging/log4j/util/LoaderUtil$1;)V

    sput-object v1, Lorg/apache/logging/log4j/util/LoaderUtil;->TCCL_GETTER:Ljava/security/PrivilegedAction;

    .line 59
    sget-object v1, Lorg/apache/logging/log4j/util/LoaderUtil;->SECURITY_MANAGER:Ljava/lang/SecurityManager;

    if-eqz v1, :cond_0

    .line 62
    :try_start_0
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v2, "getClassLoader"

    invoke-direct {v0, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    const/4 v0, 0x0

    .line 66
    .local v0, "getClassLoaderDisabled":Z
    goto :goto_0

    .line 64
    .end local v0    # "getClassLoaderDisabled":Z
    :catch_0
    move-exception v0

    .line 65
    .local v0, "ignored":Ljava/lang/SecurityException;
    const/4 v1, 0x1

    move v0, v1

    .line 67
    .local v0, "getClassLoaderDisabled":Z
    :goto_0
    sput-boolean v0, Lorg/apache/logging/log4j/util/LoaderUtil;->GET_CLASS_LOADER_DISABLED:Z

    .line 68
    .end local v0    # "getClassLoaderDisabled":Z
    goto :goto_1

    .line 69
    :cond_0
    sput-boolean v0, Lorg/apache/logging/log4j/util/LoaderUtil;->GET_CLASS_LOADER_DISABLED:Z

    .line 71
    :goto_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 37
    sget-boolean v0, Lorg/apache/logging/log4j/util/LoaderUtil;->GET_CLASS_LOADER_DISABLED:Z

    return v0
.end method

.method private static accumulateClassLoaders(Ljava/lang/ClassLoader;Ljava/util/Collection;)V
    .locals 1
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "loader",
            "loaders"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Collection<",
            "Ljava/lang/ClassLoader;",
            ">;)V"
        }
    .end annotation

    .line 129
    .local p1, "loaders":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ClassLoader;>;"
    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/logging/log4j/util/LoaderUtil;->accumulateClassLoaders(Ljava/lang/ClassLoader;Ljava/util/Collection;)V

    .line 132
    :cond_0
    return-void
.end method

.method public static findResources(Ljava/lang/String;)Ljava/util/Collection;
    .locals 5
    .param p0, "resource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "resource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 275
    invoke-static {p0}, Lorg/apache/logging/log4j/util/LoaderUtil;->findUrlResources(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 276
    .local v0, "urlResources":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/logging/log4j/util/LoaderUtil$UrlResource;>;"
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 277
    .local v1, "resources":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/URL;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/util/LoaderUtil$UrlResource;

    .line 278
    .local v3, "urlResource":Lorg/apache/logging/log4j/util/LoaderUtil$UrlResource;
    invoke-virtual {v3}, Lorg/apache/logging/log4j/util/LoaderUtil$UrlResource;->getUrl()Ljava/net/URL;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 279
    .end local v3    # "urlResource":Lorg/apache/logging/log4j/util/LoaderUtil$UrlResource;
    goto :goto_0

    .line 280
    :cond_0
    return-object v1
.end method

.method static findUrlResources(Ljava/lang/String;)Ljava/util/Collection;
    .locals 8
    .param p0, "resource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "resource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/apache/logging/log4j/util/LoaderUtil$UrlResource;",
            ">;"
        }
    .end annotation

    .line 285
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/ClassLoader;

    .line 286
    invoke-static {}, Lorg/apache/logging/log4j/util/LoaderUtil;->getThreadContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lorg/apache/logging/log4j/util/LoaderUtil;

    .line 287
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-boolean v1, Lorg/apache/logging/log4j/util/LoaderUtil;->GET_CLASS_LOADER_DISABLED:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 288
    :cond_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    :goto_0
    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 290
    .local v0, "candidates":[Ljava/lang/ClassLoader;
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 291
    .local v1, "resources":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/logging/log4j/util/LoaderUtil$UrlResource;>;"
    array-length v3, v0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 292
    .local v4, "cl":Ljava/lang/ClassLoader;
    if-eqz v4, :cond_2

    .line 294
    :try_start_0
    invoke-virtual {v4, p0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v5

    .line 295
    .local v5, "resourceEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 296
    new-instance v6, Lorg/apache/logging/log4j/util/LoaderUtil$UrlResource;

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/URL;

    invoke-direct {v6, v4, v7}, Lorg/apache/logging/log4j/util/LoaderUtil$UrlResource;-><init>(Ljava/lang/ClassLoader;Ljava/net/URL;)V

    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 300
    .end local v5    # "resourceEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :cond_1
    goto :goto_3

    .line 298
    :catch_0
    move-exception v5

    .line 299
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v5}, Lorg/apache/logging/log4j/util/LowLevelLogUtil;->logException(Ljava/lang/Throwable;)V

    .line 291
    .end local v4    # "cl":Ljava/lang/ClassLoader;
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 303
    :cond_3
    return-object v1
.end method

.method public static getClassLoaders()[Ljava/lang/ClassLoader;
    .locals 4

    .line 109
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 110
    .local v0, "classLoaders":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ClassLoader;>;"
    invoke-static {}, Lorg/apache/logging/log4j/util/LoaderUtil;->getThreadContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 111
    .local v1, "tcl":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_0

    .line 112
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_0
    const-class v2, Lorg/apache/logging/log4j/util/LoaderUtil;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/apache/logging/log4j/util/LoaderUtil;->accumulateClassLoaders(Ljava/lang/ClassLoader;Ljava/util/Collection;)V

    .line 115
    if-nez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    :goto_0
    invoke-static {v2, v0}, Lorg/apache/logging/log4j/util/LoaderUtil;->accumulateClassLoaders(Ljava/lang/ClassLoader;Ljava/util/Collection;)V

    .line 116
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 117
    .local v2, "systemClassLoader":Ljava/lang/ClassLoader;
    if-eqz v2, :cond_2

    .line 118
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_2
    sget-object v3, Lorg/apache/logging/log4j/util/LoaderUtil;->EMPTY_CLASS_LOADER_ARRAY:[Ljava/lang/ClassLoader;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/ClassLoader;

    return-object v3
.end method

.method public static getThreadContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 85
    sget-boolean v0, Lorg/apache/logging/log4j/util/LoaderUtil;->GET_CLASS_LOADER_DISABLED:Z

    if-eqz v0, :cond_0

    .line 88
    const-class v0, Lorg/apache/logging/log4j/util/LoaderUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    .line 90
    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/util/LoaderUtil;->SECURITY_MANAGER:Ljava/lang/SecurityManager;

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/logging/log4j/util/LoaderUtil;->TCCL_GETTER:Ljava/security/PrivilegedAction;

    invoke-interface {v0}, Ljava/security/PrivilegedAction;->run()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/logging/log4j/util/LoaderUtil;->TCCL_GETTER:Ljava/security/PrivilegedAction;

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static isClassAvailable(Ljava/lang/String;)Z
    .locals 4
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "className"
        }
    .end annotation

    .line 143
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lorg/apache/logging/log4j/util/LoaderUtil;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 147
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown error checking for existence of class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/apache/logging/log4j/util/LowLevelLogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    return v0

    .line 145
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    .line 146
    .restart local v1    # "e":Ljava/lang/Throwable;
    return v0
.end method

.method private static isIgnoreTccl()Z
    .locals 3

    .line 260
    sget-object v0, Lorg/apache/logging/log4j/util/LoaderUtil;->ignoreTCCL:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 261
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "log4j.ignoreTCL"

    invoke-virtual {v0, v2, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "ignoreTccl":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lorg/apache/logging/log4j/util/LoaderUtil;->ignoreTCCL:Ljava/lang/Boolean;

    .line 264
    .end local v0    # "ignoreTccl":Ljava/lang/String;
    :cond_1
    sget-object v0, Lorg/apache/logging/log4j/util/LoaderUtil;->ignoreTCCL:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "className"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 163
    invoke-static {}, Lorg/apache/logging/log4j/util/LoaderUtil;->isIgnoreTccl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 167
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/apache/logging/log4j/util/LoaderUtil;->getThreadContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 168
    .local v0, "tccl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 172
    .end local v0    # "tccl":Ljava/lang/ClassLoader;
    :cond_1
    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    .line 173
    :goto_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static newCheckedInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "className",
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 231
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lorg/apache/logging/log4j/util/LoaderUtil;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static newCheckedInstanceOfProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p0, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "propertyName",
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 251
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 253
    const/4 v1, 0x0

    return-object v1

    .line 255
    :cond_0
    invoke-static {v0, p1}, Lorg/apache/logging/log4j/util/LoaderUtil;->newCheckedInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static newInstanceOf(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 190
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 191
    :catch_0
    move-exception v0

    .line 193
    .local v0, "ignored":Ljava/lang/NoSuchMethodException;
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "className"
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
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 211
    invoke-static {p0}, Lorg/apache/logging/log4j/util/LoaderUtil;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/util/LoaderUtil;->newInstanceOf(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
