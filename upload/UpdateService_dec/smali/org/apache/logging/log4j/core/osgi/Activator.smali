.class public final Lorg/apache/logging/log4j/core/osgi/Activator;
.super Ljava/lang/Object;
.source "Activator.java"

# interfaces
.implements Lorg/osgi/framework/BundleActivator;
.implements Lorg/osgi/framework/SynchronousBundleListener;


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field contextDataRegistration:Lorg/osgi/framework/ServiceRegistration;

.field private final contextRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/osgi/framework/BundleContext;",
            ">;"
        }
    .end annotation
.end field

.field provideRegistration:Lorg/osgi/framework/ServiceRegistration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/osgi/Activator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/osgi/Activator;->contextRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/osgi/Activator;->provideRegistration:Lorg/osgi/framework/ServiceRegistration;

    .line 55
    iput-object v0, p0, Lorg/apache/logging/log4j/core/osgi/Activator;->contextDataRegistration:Lorg/osgi/framework/ServiceRegistration;

    return-void
.end method

.method private static loadContextProviders(Lorg/osgi/framework/BundleContext;)V
    .locals 5
    .param p0, "bundleContext"    # Lorg/osgi/framework/BundleContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bundleContext"
        }
    .end annotation

    .line 98
    :try_start_0
    const-class v0, Lorg/apache/logging/log4j/core/util/ContextDataProvider;

    const/4 v1, 0x0

    .line 99
    invoke-interface {p0, v0, v1}, Lorg/osgi/framework/BundleContext;->getServiceReferences(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 100
    .local v0, "serviceReferences":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/osgi/framework/ServiceReference<Lorg/apache/logging/log4j/core/util/ContextDataProvider;>;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osgi/framework/ServiceReference;

    .line 101
    .local v2, "serviceReference":Lorg/osgi/framework/ServiceReference;, "Lorg/osgi/framework/ServiceReference<Lorg/apache/logging/log4j/core/util/ContextDataProvider;>;"
    invoke-interface {p0, v2}, Lorg/osgi/framework/BundleContext;->getService(Lorg/osgi/framework/ServiceReference;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/util/ContextDataProvider;

    .line 102
    .local v3, "provider":Lorg/apache/logging/log4j/core/util/ContextDataProvider;
    sget-object v4, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector;->contextDataProviders:Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/osgi/framework/InvalidSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    nop

    .end local v2    # "serviceReference":Lorg/osgi/framework/ServiceReference;, "Lorg/osgi/framework/ServiceReference<Lorg/apache/logging/log4j/core/util/ContextDataProvider;>;"
    .end local v3    # "provider":Lorg/apache/logging/log4j/core/util/ContextDataProvider;
    goto :goto_0

    .line 106
    .end local v0    # "serviceReferences":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/osgi/framework/ServiceReference<Lorg/apache/logging/log4j/core/util/ContextDataProvider;>;>;"
    :cond_0
    goto :goto_1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "ex":Lorg/osgi/framework/InvalidSyntaxException;
    sget-object v1, Lorg/apache/logging/log4j/core/osgi/Activator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Error accessing context data provider"

    invoke-interface {v1, v2, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    .end local v0    # "ex":Lorg/osgi/framework/InvalidSyntaxException;
    :goto_1
    return-void
.end method

.method private static scanBundleForPlugins(Lorg/osgi/framework/Bundle;)V
    .locals 6
    .param p0, "bundle"    # Lorg/osgi/framework/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 87
    invoke-interface {p0}, Lorg/osgi/framework/Bundle;->getBundleId()J

    move-result-wide v0

    .line 89
    .local v0, "bundleId":J
    invoke-interface {p0}, Lorg/osgi/framework/Bundle;->getState()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 90
    sget-object v2, Lorg/apache/logging/log4j/core/osgi/Activator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/osgi/framework/Bundle;->getSymbolicName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Scanning bundle [{}, id=%d] for plugins."

    invoke-interface {v2, v5, v3, v4}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    invoke-static {}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->getInstance()Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;

    move-result-object v2

    const-class v3, Lorg/osgi/framework/wiring/BundleWiring;

    .line 92
    invoke-interface {p0, v3}, Lorg/osgi/framework/Bundle;->adapt(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osgi/framework/wiring/BundleWiring;

    invoke-interface {v3}, Lorg/osgi/framework/wiring/BundleWiring;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 91
    invoke-virtual {v2, v0, v1, v3}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->loadFromBundle(JLjava/lang/ClassLoader;)Ljava/util/Map;

    .line 94
    :cond_0
    return-void
.end method

.method private static scanInstalledBundlesForPlugins(Lorg/osgi/framework/BundleContext;)V
    .locals 4
    .param p0, "context"    # Lorg/osgi/framework/BundleContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 79
    invoke-interface {p0}, Lorg/osgi/framework/BundleContext;->getBundles()[Lorg/osgi/framework/Bundle;

    move-result-object v0

    .line 80
    .local v0, "bundles":[Lorg/osgi/framework/Bundle;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 82
    .local v3, "bundle":Lorg/osgi/framework/Bundle;
    invoke-static {v3}, Lorg/apache/logging/log4j/core/osgi/Activator;->scanBundleForPlugins(Lorg/osgi/framework/Bundle;)V

    .line 80
    .end local v3    # "bundle":Lorg/osgi/framework/Bundle;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method

.method private static stopBundlePlugins(Lorg/osgi/framework/Bundle;)V
    .locals 3
    .param p0, "bundle"    # Lorg/osgi/framework/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 110
    sget-object v0, Lorg/apache/logging/log4j/core/osgi/Activator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/osgi/framework/Bundle;->getSymbolicName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Stopping bundle [{}] plugins."

    invoke-interface {v0, v2, v1}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    invoke-static {}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->getInstance()Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;

    move-result-object v0

    invoke-interface {p0}, Lorg/osgi/framework/Bundle;->getBundleId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->clearBundlePlugins(J)V

    .line 113
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

    .line 125
    invoke-virtual {p1}, Lorg/osgi/framework/BundleEvent;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p1}, Lorg/osgi/framework/BundleEvent;->getBundle()Lorg/osgi/framework/Bundle;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/osgi/Activator;->stopBundlePlugins(Lorg/osgi/framework/Bundle;)V

    .line 133
    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p1}, Lorg/osgi/framework/BundleEvent;->getBundle()Lorg/osgi/framework/Bundle;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/osgi/Activator;->scanBundleForPlugins(Lorg/osgi/framework/Bundle;)V

    .line 129
    nop

    .line 138
    :goto_0
    return-void
.end method

.method public start(Lorg/osgi/framework/BundleContext;)V
    .locals 6
    .param p1, "context"    # Lorg/osgi/framework/BundleContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    new-instance v0, Lorg/apache/logging/log4j/core/impl/Log4jProvider;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/impl/Log4jProvider;-><init>()V

    .line 60
    .local v0, "provider":Lorg/apache/logging/log4j/spi/Provider;
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 61
    .local v1, "props":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "APIVersion"

    const-string v3, "2.60"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v2, Lorg/apache/logging/log4j/core/impl/ThreadContextDataProvider;

    invoke-direct {v2}, Lorg/apache/logging/log4j/core/impl/ThreadContextDataProvider;-><init>()V

    .line 63
    .local v2, "threadContextProvider":Lorg/apache/logging/log4j/core/util/ContextDataProvider;
    const-class v3, Lorg/apache/logging/log4j/spi/Provider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3, v0, v1}, Lorg/osgi/framework/BundleContext;->registerService(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Dictionary;)Lorg/osgi/framework/ServiceRegistration;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/logging/log4j/core/osgi/Activator;->provideRegistration:Lorg/osgi/framework/ServiceRegistration;

    .line 64
    const-class v3, Lorg/apache/logging/log4j/core/util/ContextDataProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p1, v3, v2, v4}, Lorg/osgi/framework/BundleContext;->registerService(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Dictionary;)Lorg/osgi/framework/ServiceRegistration;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/logging/log4j/core/osgi/Activator;->contextDataRegistration:Lorg/osgi/framework/ServiceRegistration;

    .line 66
    invoke-static {p1}, Lorg/apache/logging/log4j/core/osgi/Activator;->loadContextProviders(Lorg/osgi/framework/BundleContext;)V

    .line 68
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v3

    const-string v5, "Log4jContextSelector"

    invoke-virtual {v3, v5}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 69
    const-class v3, Lorg/apache/logging/log4j/core/osgi/BundleContextSelector;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    :cond_0
    iget-object v3, p0, Lorg/apache/logging/log4j/core/osgi/Activator;->contextRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v4, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    invoke-interface {p1, p0}, Lorg/osgi/framework/BundleContext;->addBundleListener(Lorg/osgi/framework/BundleListener;)V

    .line 74
    invoke-static {p1}, Lorg/apache/logging/log4j/core/osgi/Activator;->scanInstalledBundlesForPlugins(Lorg/osgi/framework/BundleContext;)V

    .line 76
    :cond_1
    return-void
.end method

.method public stop(Lorg/osgi/framework/BundleContext;)V
    .locals 2
    .param p1, "context"    # Lorg/osgi/framework/BundleContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lorg/apache/logging/log4j/core/osgi/Activator;->provideRegistration:Lorg/osgi/framework/ServiceRegistration;

    invoke-interface {v0}, Lorg/osgi/framework/ServiceRegistration;->unregister()V

    .line 118
    iget-object v0, p0, Lorg/apache/logging/log4j/core/osgi/Activator;->contextDataRegistration:Lorg/osgi/framework/ServiceRegistration;

    invoke-interface {v0}, Lorg/osgi/framework/ServiceRegistration;->unregister()V

    .line 119
    iget-object v0, p0, Lorg/apache/logging/log4j/core/osgi/Activator;->contextRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    invoke-static {}, Lorg/apache/logging/log4j/LogManager;->shutdown()V

    .line 121
    return-void
.end method
