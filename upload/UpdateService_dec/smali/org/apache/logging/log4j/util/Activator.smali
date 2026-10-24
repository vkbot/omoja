.class public Lorg/apache/logging/log4j/util/Activator;
.super Ljava/lang/Object;
.source "Activator.java"

# interfaces
.implements Lorg/osgi/framework/BundleActivator;
.implements Lorg/osgi/framework/SynchronousBundleListener;


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field private static final SECURITY_MANAGER:Ljava/lang/SecurityManager;


# instance fields
.field private lockingProviderUtil:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/util/Activator;->SECURITY_MANAGER:Ljava/lang/SecurityManager;

    .line 51
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/util/Activator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkPermission(Ljava/security/Permission;)V
    .locals 1
    .param p0, "permission"    # Ljava/security/Permission;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "permission"
        }
    .end annotation

    .line 58
    sget-object v0, Lorg/apache/logging/log4j/util/Activator;->SECURITY_MANAGER:Ljava/lang/SecurityManager;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 61
    :cond_0
    return-void
.end method

.method private loadProvider(Lorg/osgi/framework/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Lorg/osgi/framework/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 64
    invoke-interface {p1}, Lorg/osgi/framework/Bundle;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 65
    return-void

    .line 68
    :cond_0
    :try_start_0
    new-instance v0, Lorg/osgi/framework/AdminPermission;

    const-string v1, "resource"

    invoke-direct {v0, p1, v1}, Lorg/osgi/framework/AdminPermission;-><init>(Lorg/osgi/framework/Bundle;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/logging/log4j/util/Activator;->checkPermission(Ljava/security/Permission;)V

    .line 69
    new-instance v0, Lorg/osgi/framework/AdaptPermission;

    const-class v1, Lorg/osgi/framework/wiring/BundleWiring;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adapt"

    invoke-direct {v0, v1, p1, v2}, Lorg/osgi/framework/AdaptPermission;-><init>(Ljava/lang/String;Lorg/osgi/framework/Bundle;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/logging/log4j/util/Activator;->checkPermission(Ljava/security/Permission;)V

    .line 70
    invoke-interface {p1}, Lorg/osgi/framework/Bundle;->getBundleContext()Lorg/osgi/framework/BundleContext;

    move-result-object v0

    .line 71
    .local v0, "bundleContext":Lorg/osgi/framework/BundleContext;
    if-nez v0, :cond_1

    .line 72
    sget-object v1, Lorg/apache/logging/log4j/util/Activator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Bundle {} has no context (state={}), skipping loading provider"

    invoke-interface {p1}, Lorg/osgi/framework/Bundle;->getSymbolicName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/osgi/framework/Bundle;->getState()I

    move-result v4

    invoke-direct {p0, v4}, Lorg/apache/logging/log4j/util/Activator;->toStateString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    :cond_1
    const-class v1, Lorg/osgi/framework/wiring/BundleWiring;

    invoke-interface {p1, v1}, Lorg/osgi/framework/Bundle;->adapt(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osgi/framework/wiring/BundleWiring;

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/util/Activator;->loadProvider(Lorg/osgi/framework/BundleContext;Lorg/osgi/framework/wiring/BundleWiring;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    .end local v0    # "bundleContext":Lorg/osgi/framework/BundleContext;
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/apache/logging/log4j/util/Activator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/osgi/framework/Bundle;->getSymbolicName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Problem checking bundle {} for Log4j 2 provider."

    invoke-interface {v1, v3, v2, v0}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 76
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Lorg/apache/logging/log4j/util/Activator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/osgi/framework/Bundle;->getSymbolicName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cannot access bundle [{}] contents. Ignoring."

    invoke-interface {v1, v3, v2, v0}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_0
    nop

    .line 81
    :goto_1
    return-void
.end method

.method private loadProvider(Lorg/osgi/framework/BundleContext;Lorg/osgi/framework/wiring/BundleWiring;)V
    .locals 8
    .param p1, "bundleContext"    # Lorg/osgi/framework/BundleContext;
    .param p2, "bundleWiring"    # Lorg/osgi/framework/wiring/BundleWiring;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "bundleContext",
            "bundleWiring"
        }
    .end annotation

    .line 103
    const-string v0, "(APIVersion>=2.6.0)"

    .line 105
    .local v0, "filter":Ljava/lang/String;
    :try_start_0
    const-class v1, Lorg/apache/logging/log4j/spi/Provider;

    const-string v2, "(APIVersion>=2.6.0)"

    invoke-interface {p1, v1, v2}, Lorg/osgi/framework/BundleContext;->getServiceReferences(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 106
    .local v1, "serviceReferences":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/osgi/framework/ServiceReference<Lorg/apache/logging/log4j/spi/Provider;>;>;"
    const/4 v2, 0x0

    .line 107
    .local v2, "maxProvider":Lorg/apache/logging/log4j/spi/Provider;
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osgi/framework/ServiceReference;

    .line 108
    .local v4, "serviceReference":Lorg/osgi/framework/ServiceReference;, "Lorg/osgi/framework/ServiceReference<Lorg/apache/logging/log4j/spi/Provider;>;"
    invoke-interface {p1, v4}, Lorg/osgi/framework/BundleContext;->getService(Lorg/osgi/framework/ServiceReference;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/logging/log4j/spi/Provider;

    .line 109
    .local v5, "provider":Lorg/apache/logging/log4j/spi/Provider;
    if-eqz v2, :cond_0

    invoke-virtual {v5}, Lorg/apache/logging/log4j/spi/Provider;->getPriority()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2}, Lorg/apache/logging/log4j/spi/Provider;->getPriority()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v6, v7, :cond_1

    .line 110
    :cond_0
    move-object v2, v5

    .line 112
    .end local v4    # "serviceReference":Lorg/osgi/framework/ServiceReference;, "Lorg/osgi/framework/ServiceReference<Lorg/apache/logging/log4j/spi/Provider;>;"
    .end local v5    # "provider":Lorg/apache/logging/log4j/spi/Provider;
    :cond_1
    goto :goto_0

    .line 113
    :cond_2
    if-eqz v2, :cond_3

    .line 114
    invoke-static {v2}, Lorg/apache/logging/log4j/util/ProviderUtil;->addProvider(Lorg/apache/logging/log4j/spi/Provider;)V
    :try_end_0
    .catch Lorg/osgi/framework/InvalidSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v1    # "serviceReferences":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/osgi/framework/ServiceReference<Lorg/apache/logging/log4j/spi/Provider;>;>;"
    .end local v2    # "maxProvider":Lorg/apache/logging/log4j/spi/Provider;
    :cond_3
    goto :goto_1

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, "ex":Lorg/osgi/framework/InvalidSyntaxException;
    sget-object v2, Lorg/apache/logging/log4j/util/Activator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Invalid service filter: (APIVersion>=2.6.0)"

    invoke-interface {v2, v3, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    .end local v1    # "ex":Lorg/osgi/framework/InvalidSyntaxException;
    :goto_1
    const/4 v1, 0x0

    const-string v2, "META-INF"

    const-string v3, "log4j-provider.properties"

    invoke-interface {p2, v2, v3, v1}, Lorg/osgi/framework/wiring/BundleWiring;->findEntries(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 120
    .local v1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URL;

    .line 121
    .local v3, "url":Ljava/net/URL;
    invoke-interface {p2}, Lorg/osgi/framework/wiring/BundleWiring;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/logging/log4j/util/ProviderUtil;->loadProvider(Ljava/net/URL;Ljava/lang/ClassLoader;)V

    .line 122
    .end local v3    # "url":Ljava/net/URL;
    goto :goto_2

    .line 123
    :cond_4
    return-void
.end method

.method private toStateString(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "state"
        }
    .end annotation

    .line 84
    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 96
    :cond_0
    const-string v0, "ACTIVE"

    return-object v0

    .line 94
    :cond_1
    const-string v0, "STOPPING"

    return-object v0

    .line 92
    :cond_2
    const-string v0, "STARTING"

    return-object v0

    .line 90
    :cond_3
    const-string v0, "RESOLVED"

    return-object v0

    .line 88
    :cond_4
    const-string v0, "INSTALLED"

    return-object v0

    .line 86
    :cond_5
    const-string v0, "UNINSTALLED"

    return-object v0
.end method

.method private unlockIfReady()V
    .locals 1

    .line 143
    iget-boolean v0, p0, Lorg/apache/logging/log4j/util/Activator;->lockingProviderUtil:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/logging/log4j/util/ProviderUtil;->PROVIDERS:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    sget-object v0, Lorg/apache/logging/log4j/util/ProviderUtil;->STARTUP_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/util/Activator;->lockingProviderUtil:Z

    .line 147
    :cond_0
    return-void
.end method


# virtual methods
.method public bundleChanged(Lorg/osgi/framework/BundleEvent;)V
    .locals 2
    .param p1, "event"    # Lorg/osgi/framework/BundleEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 157
    invoke-virtual {p1}, Lorg/osgi/framework/BundleEvent;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p1}, Lorg/osgi/framework/BundleEvent;->getBundle()Lorg/osgi/framework/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/util/Activator;->loadProvider(Lorg/osgi/framework/Bundle;)V

    .line 160
    invoke-direct {p0}, Lorg/apache/logging/log4j/util/Activator;->unlockIfReady()V

    .line 161
    nop

    .line 166
    :goto_0
    return-void
.end method

.method public start(Lorg/osgi/framework/BundleContext;)V
    .locals 6
    .param p1, "bundleContext"    # Lorg/osgi/framework/BundleContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bundleContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 127
    sget-object v0, Lorg/apache/logging/log4j/util/ProviderUtil;->STARTUP_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/util/Activator;->lockingProviderUtil:Z

    .line 129
    invoke-interface {p1}, Lorg/osgi/framework/BundleContext;->getBundle()Lorg/osgi/framework/Bundle;

    move-result-object v0

    const-class v1, Lorg/osgi/framework/wiring/BundleWiring;

    invoke-interface {v0, v1}, Lorg/osgi/framework/Bundle;->adapt(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osgi/framework/wiring/BundleWiring;

    .line 130
    .local v0, "self":Lorg/osgi/framework/wiring/BundleWiring;
    const-class v1, Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/osgi/framework/wiring/BundleWiring;->getRequiredWires(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 131
    .local v1, "required":Ljava/util/List;, "Ljava/util/List<Lorg/osgi/framework/wiring/BundleWire;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osgi/framework/wiring/BundleWire;

    .line 132
    .local v3, "wire":Lorg/osgi/framework/wiring/BundleWire;
    invoke-interface {v3}, Lorg/osgi/framework/wiring/BundleWire;->getProviderWiring()Lorg/osgi/framework/wiring/BundleWiring;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lorg/apache/logging/log4j/util/Activator;->loadProvider(Lorg/osgi/framework/BundleContext;Lorg/osgi/framework/wiring/BundleWiring;)V

    .line 133
    .end local v3    # "wire":Lorg/osgi/framework/wiring/BundleWire;
    goto :goto_0

    .line 134
    :cond_0
    invoke-interface {p1, p0}, Lorg/osgi/framework/BundleContext;->addBundleListener(Lorg/osgi/framework/BundleListener;)V

    .line 135
    invoke-interface {p1}, Lorg/osgi/framework/BundleContext;->getBundles()[Lorg/osgi/framework/Bundle;

    move-result-object v2

    .line 136
    .local v2, "bundles":[Lorg/osgi/framework/Bundle;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 137
    .local v5, "bundle":Lorg/osgi/framework/Bundle;
    invoke-direct {p0, v5}, Lorg/apache/logging/log4j/util/Activator;->loadProvider(Lorg/osgi/framework/Bundle;)V

    .line 136
    .end local v5    # "bundle":Lorg/osgi/framework/Bundle;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 139
    :cond_1
    invoke-direct {p0}, Lorg/apache/logging/log4j/util/Activator;->unlockIfReady()V

    .line 140
    return-void
.end method

.method public stop(Lorg/osgi/framework/BundleContext;)V
    .locals 0
    .param p1, "bundleContext"    # Lorg/osgi/framework/BundleContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bundleContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    invoke-interface {p1, p0}, Lorg/osgi/framework/BundleContext;->removeBundleListener(Lorg/osgi/framework/BundleListener;)V

    .line 152
    invoke-direct {p0}, Lorg/apache/logging/log4j/util/Activator;->unlockIfReady()V

    .line 153
    return-void
.end method
