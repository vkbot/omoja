.class public Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;
.super Ljava/lang/Object;
.source "ResolverUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;
    }
.end annotation


# static fields
.field private static final BUNDLE_RESOURCE:Ljava/lang/String; = "bundleresource"

.field private static final JAR:Ljava/lang/String; = "jar"

.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field private static final VFS:Ljava/lang/String; = "vfs"

.field private static final VFSZIP:Ljava/lang/String; = "vfszip"


# instance fields
.field private final classMatches:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private classloader:Ljava/lang/ClassLoader;

.field private final resourceMatches:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->classMatches:Ljava/util/Set;

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->resourceMatches:Ljava/util/Set;

    return-void
.end method

.method private close(Ljava/util/jar/JarInputStream;Ljava/lang/Object;)V
    .locals 3
    .param p1, "jarStream"    # Ljava/util/jar/JarInputStream;
    .param p2, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "jarStream",
            "source"
        }
    .end annotation

    .line 393
    if-eqz p1, :cond_0

    .line 395
    :try_start_0
    invoke-virtual {p1}, Ljava/util/jar/JarInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Error closing JAR file stream for {}"

    invoke-interface {v1, v2, p2, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 400
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method private isTestApplicable(Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;Ljava/lang/String;)Z
    .locals 1
    .param p1, "test"    # Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "test",
            "path"
        }
    .end annotation

    .line 326
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;->doesMatchResource()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".class"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;->doesMatchClass()Z

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

.method private loadImplementationsInBundle(Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;Ljava/lang/String;)V
    .locals 4
    .param p1, "test"    # Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "test",
            "packageName"
        }
    .end annotation

    .line 282
    const-class v0, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;

    invoke-static {v0}, Lorg/osgi/framework/FrameworkUtil;->getBundle(Ljava/lang/Class;)Lorg/osgi/framework/Bundle;

    move-result-object v0

    const-class v1, Lorg/osgi/framework/wiring/BundleWiring;

    invoke-interface {v0, v1}, Lorg/osgi/framework/Bundle;->adapt(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osgi/framework/wiring/BundleWiring;

    .line 283
    .local v0, "wiring":Lorg/osgi/framework/wiring/BundleWiring;
    const-string v1, "*.class"

    const/4 v2, 0x1

    invoke-interface {v0, p2, v1, v2}, Lorg/osgi/framework/wiring/BundleWiring;->listResources(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Collection;

    move-result-object v1

    .line 285
    .local v1, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 286
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p0, p1, v3}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->addIfMatching(Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;Ljava/lang/String;)V

    .line 287
    .end local v3    # "name":Ljava/lang/String;
    goto :goto_0

    .line 288
    :cond_0
    return-void
.end method

.method private loadImplementationsInDirectory(Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;Ljava/lang/String;Ljava/io/File;)V
    .locals 7
    .param p1, "test"    # Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;
    .param p2, "parent"    # Ljava/lang/String;
    .param p3, "location"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "test",
            "parent",
            "location"
        }
    .end annotation

    .line 306
    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 307
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_0

    .line 308
    return-void

    .line 312
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 313
    .local v3, "file":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .local v4, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    if-nez p2, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 317
    .local v5, "packageOrClass":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 318
    invoke-direct {p0, p1, v5, v3}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->loadImplementationsInDirectory(Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_2

    .line 319
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->isTestApplicable(Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 320
    invoke-virtual {p0, p1, v5}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->addIfMatching(Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;Ljava/lang/String;)V

    .line 312
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "packageOrClass":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    :cond_4
    return-void
.end method

.method private loadImplementationsInJar(Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;Ljava/lang/String;Ljava/io/File;)V
    .locals 4
    .param p1, "test"    # Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;
    .param p2, "parent"    # Ljava/lang/String;
    .param p3, "jarFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "test",
            "parent",
            "jarFile"
        }
    .end annotation

    .line 376
    const/4 v0, 0x0

    .line 378
    .local v0, "jarStream":Ljava/util/jar/JarInputStream;
    :try_start_0
    new-instance v1, Ljava/util/jar/JarInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 379
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1, v0}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->loadImplementationsInJar(Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;Ljava/lang/String;Ljava/lang/String;Ljava/util/jar/JarInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 384
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 380
    :catch_0
    move-exception v1

    .line 381
    .local v1, "ex":Ljava/io/IOException;
    :try_start_1
    sget-object v2, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Could not search JAR file \'{}\' for classes matching criteria {}, file not found"

    invoke-interface {v2, v3, p3, p1, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_0
    invoke-direct {p0, v0, p3}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->close(Ljava/util/jar/JarInputStream;Ljava/lang/Object;)V

    .line 385
    nop

    .line 386
    return-void

    .line 384
    :goto_1
    invoke-direct {p0, v0, p3}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->close(Ljava/util/jar/JarInputStream;Ljava/lang/Object;)V

    throw v1
.end method

.method private loadImplementationsInJar(Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;Ljava/lang/String;Ljava/lang/String;Ljava/util/jar/JarInputStream;)V
    .locals 3
    .param p1, "test"    # Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;
    .param p2, "parent"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "stream"    # Ljava/util/jar/JarInputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "test",
            "parent",
            "path",
            "stream"
        }
    .end annotation

    .line 419
    :goto_0
    :try_start_0
    invoke-virtual {p4}, Ljava/util/jar/JarInputStream;->getNextJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v0

    move-object v1, v0

    .local v1, "entry":Ljava/util/jar/JarEntry;
    if-eqz v0, :cond_1

    .line 420
    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->isTestApplicable(Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 422
    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->addIfMatching(Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 428
    .end local v1    # "entry":Ljava/util/jar/JarEntry;
    :cond_1
    goto :goto_1

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "ioe":Ljava/io/IOException;
    sget-object v1, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Could not search JAR file \'{}\' for classes matching criteria {} due to an IOException"

    invoke-interface {v1, v2, p3, p1, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 429
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method private loadImplementationsInJar(Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;Ljava/lang/String;Ljava/net/URL;)V
    .locals 6
    .param p1, "test"    # Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;
    .param p2, "parent"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "test",
            "parent",
            "url"
        }
    .end annotation

    .line 341
    const/4 v0, 0x0

    .line 343
    .local v0, "connection":Ljava/net/JarURLConnection;
    :try_start_0
    invoke-virtual {p3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/JarURLConnection;

    move-object v0, v1

    .line 344
    if-eqz v0, :cond_3

    .line 345
    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .local v1, "jarFile":Ljava/util/jar/JarFile;
    :try_start_1
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 347
    .local v2, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 348
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/jar/JarEntry;

    .line 349
    .local v3, "entry":Ljava/util/jar/JarEntry;
    invoke-virtual {v3}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 350
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, p1, v4}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->isTestApplicable(Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 351
    invoke-virtual {p0, p1, v4}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->addIfMatching(Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    .end local v3    # "entry":Ljava/util/jar/JarEntry;
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 354
    .end local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_1
    if-eqz v1, :cond_4

    :try_start_2
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 345
    :catchall_0
    move-exception v2

    .end local v0    # "connection":Ljava/net/JarURLConnection;
    .end local v1    # "jarFile":Ljava/util/jar/JarFile;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;
    .end local p1    # "test":Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;
    .end local p2    # "parent":Ljava/lang/String;
    .end local p3    # "url":Ljava/net/URL;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 354
    .restart local v0    # "connection":Ljava/net/JarURLConnection;
    .restart local v1    # "jarFile":Ljava/util/jar/JarFile;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;
    .restart local p1    # "test":Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;
    .restart local p2    # "parent":Ljava/lang/String;
    .restart local p3    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "connection":Ljava/net/JarURLConnection;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;
    .end local p1    # "test":Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;
    .end local p2    # "parent":Ljava/lang/String;
    .end local p3    # "url":Ljava/net/URL;
    :cond_2
    :goto_1
    throw v3

    .line 356
    .end local v1    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v0    # "connection":Ljava/net/JarURLConnection;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;
    .restart local p1    # "test":Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;
    .restart local p2    # "parent":Ljava/lang/String;
    .restart local p3    # "url":Ljava/net/URL;
    :cond_3
    sget-object v1, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Could not establish connection to {}"

    invoke-virtual {p3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 361
    :cond_4
    :goto_2
    goto :goto_3

    .line 358
    :catch_0
    move-exception v1

    .line 359
    .local v1, "ex":Ljava/io/IOException;
    sget-object v2, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 360
    invoke-virtual {p3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    .line 359
    const-string v4, "Could not search JAR file \'{}\' for classes matching criteria {}, file not found"

    invoke-interface {v2, v4, v3, p1, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 362
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_3
    return-void
.end method


# virtual methods
.method protected addIfMatching(Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;Ljava/lang/String;)V
    .locals 4
    .param p1, "test"    # Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;
    .param p2, "fqn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "test",
            "fqn"
        }
    .end annotation

    .line 442
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 443
    .local v0, "loader":Ljava/lang/ClassLoader;
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;->doesMatchClass()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 444
    const/4 v1, 0x0

    const/16 v2, 0x2e

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2f

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, "externalName":Ljava/lang/String;
    sget-object v2, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2}, Lorg/apache/logging/log4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 446
    sget-object v2, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Checking to see if class {} matches criteria {}"

    invoke-interface {v2, v3, v1, p1}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 449
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 450
    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p1, v2}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;->matches(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 451
    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->classMatches:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 454
    .end local v1    # "externalName":Ljava/lang/String;
    .end local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;->doesMatchResource()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 455
    invoke-virtual {v0, p2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 456
    .local v1, "url":Ljava/net/URL;
    if-nez v1, :cond_2

    .line 457
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    move-object v1, v2

    .line 459
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;->matches(Ljava/net/URI;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 460
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->resourceMatches:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    .end local v0    # "loader":Ljava/lang/ClassLoader;
    .end local v1    # "url":Ljava/net/URL;
    :cond_3
    goto :goto_0

    .line 463
    :catchall_0
    move-exception v0

    .line 464
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Could not examine class {}"

    invoke-interface {v1, v2, p2, v0}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 466
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method extractPath(Ljava/net/URL;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 249
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "urlPath":Ljava/lang/String;
    const-string v1, "jar:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    :cond_0
    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 261
    :cond_1
    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 262
    .local v1, "bangIndex":I
    if-lez v1, :cond_2

    .line 263
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 268
    :cond_2
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, "protocol":Ljava/lang/String;
    const-string v3, "vfs"

    const-string v4, "vfszip"

    const-string v5, "bundleresource"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 270
    .local v3, "neverDecode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 271
    return-object v0

    .line 273
    :cond_3
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 274
    .local v4, "cleanPath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 276
    return-object v4

    .line 278
    :cond_4
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public varargs find(Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;[Ljava/lang/String;)V
    .locals 3
    .param p1, "test"    # Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "test",
            "packageNames"
        }
    .end annotation

    .line 157
    if-nez p2, :cond_0

    .line 158
    return-void

    .line 161
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 162
    .local v2, "pkg":Ljava/lang/String;
    invoke-virtual {p0, p1, v2}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->findInPackage(Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;Ljava/lang/String;)V

    .line 161
    .end local v2    # "pkg":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :cond_1
    return-void
.end method

.method public findInPackage(Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;Ljava/lang/String;)V
    .locals 12
    .param p1, "test"    # Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "test",
            "packageName"
        }
    .end annotation

    .line 177
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 178
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 182
    .local v0, "loader":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 186
    .local v1, "urls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    nop

    .line 188
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 190
    :try_start_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    .line 191
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {p0, v2}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->extractPath(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "urlPath":Ljava/lang/String;
    sget-object v4, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v5, "Scanning for classes in \'{}\' matching criteria {}"

    invoke-interface {v4, v5, v3, p1}, Lorg/apache/logging/log4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    const-string v4, "vfszip"

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 196
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v4, v6

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 197
    .local v4, "path":Ljava/lang/String;
    new-instance v5, Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .local v5, "newURL":Ljava/net/URL;
    new-instance v6, Ljava/util/jar/JarInputStream;

    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 201
    .local v6, "stream":Ljava/util/jar/JarInputStream;
    :try_start_2
    invoke-direct {p0, p1, p2, v4, v6}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->loadImplementationsInJar(Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;Ljava/lang/String;Ljava/lang/String;Ljava/util/jar/JarInputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    :try_start_3
    invoke-direct {p0, v6, v5}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->close(Ljava/util/jar/JarInputStream;Ljava/lang/Object;)V

    .line 204
    nop

    .line 205
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "newURL":Ljava/net/URL;
    .end local v6    # "stream":Ljava/util/jar/JarInputStream;
    goto/16 :goto_4

    .line 203
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v5    # "newURL":Ljava/net/URL;
    .restart local v6    # "stream":Ljava/util/jar/JarInputStream;
    :catchall_0
    move-exception v7

    invoke-direct {p0, v6, v5}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->close(Ljava/util/jar/JarInputStream;Ljava/lang/Object;)V

    .end local v0    # "loader":Ljava/lang/ClassLoader;
    .end local v1    # "urls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    .end local p0    # "this":Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;
    .end local p1    # "test":Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;
    .end local p2    # "packageName":Ljava/lang/String;
    throw v7

    .line 205
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "newURL":Ljava/net/URL;
    .end local v6    # "stream":Ljava/util/jar/JarInputStream;
    .restart local v0    # "loader":Ljava/lang/ClassLoader;
    .restart local v1    # "urls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;
    .restart local p1    # "test":Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;
    .restart local p2    # "packageName":Ljava/lang/String;
    :cond_0
    const-string v4, "vfs"

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 206
    const/4 v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, "containerPath":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    .local v6, "containerFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 209
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 210
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v5}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->loadImplementationsInDirectory(Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_2

    .line 212
    :cond_1
    invoke-direct {p0, p1, p2, v6}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->loadImplementationsInJar(Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_2

    .line 217
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 218
    .local v5, "path":Ljava/lang/String;
    new-instance v7, Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .local v7, "newURL":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0

    .line 222
    .local v8, "is":Ljava/io/InputStream;
    :try_start_4
    instance-of v9, v8, Ljava/util/jar/JarInputStream;

    if-eqz v9, :cond_3

    .line 223
    move-object v9, v8

    check-cast v9, Ljava/util/jar/JarInputStream;

    .local v9, "jarStream":Ljava/util/jar/JarInputStream;
    goto :goto_1

    .line 225
    .end local v9    # "jarStream":Ljava/util/jar/JarInputStream;
    :cond_3
    new-instance v9, Ljava/util/jar/JarInputStream;

    invoke-direct {v9, v8}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;)V

    .line 227
    .restart local v9    # "jarStream":Ljava/util/jar/JarInputStream;
    :goto_1
    invoke-direct {p0, p1, p2, v5, v9}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->loadImplementationsInJar(Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;Ljava/lang/String;Ljava/lang/String;Ljava/util/jar/JarInputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 228
    .end local v9    # "jarStream":Ljava/util/jar/JarInputStream;
    if-eqz v8, :cond_4

    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_0

    .line 230
    .end local v4    # "containerPath":Ljava/lang/String;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "containerFile":Ljava/io/File;
    .end local v7    # "newURL":Ljava/net/URL;
    .end local v8    # "is":Ljava/io/InputStream;
    :cond_4
    :goto_2
    goto :goto_4

    .line 220
    .restart local v4    # "containerPath":Ljava/lang/String;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v6    # "containerFile":Ljava/io/File;
    .restart local v7    # "newURL":Ljava/net/URL;
    .restart local v8    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v9

    .end local v0    # "loader":Ljava/lang/ClassLoader;
    .end local v1    # "urls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "urlPath":Ljava/lang/String;
    .end local v4    # "containerPath":Ljava/lang/String;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "containerFile":Ljava/io/File;
    .end local v7    # "newURL":Ljava/net/URL;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;
    .end local p1    # "test":Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;
    .end local p2    # "packageName":Ljava/lang/String;
    :try_start_6
    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 228
    .restart local v0    # "loader":Ljava/lang/ClassLoader;
    .restart local v1    # "urls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    .restart local v2    # "url":Ljava/net/URL;
    .restart local v3    # "urlPath":Ljava/lang/String;
    .restart local v4    # "containerPath":Ljava/lang/String;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v6    # "containerFile":Ljava/io/File;
    .restart local v7    # "newURL":Ljava/net/URL;
    .restart local v8    # "is":Ljava/io/InputStream;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;
    .restart local p1    # "test":Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;
    .restart local p2    # "packageName":Ljava/lang/String;
    :catchall_2
    move-exception v10

    if-eqz v8, :cond_5

    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v11

    :try_start_8
    invoke-virtual {v9, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "loader":Ljava/lang/ClassLoader;
    .end local v1    # "urls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    .end local p0    # "this":Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;
    .end local p1    # "test":Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;
    .end local p2    # "packageName":Ljava/lang/String;
    :cond_5
    :goto_3
    throw v10

    .line 230
    .end local v4    # "containerPath":Ljava/lang/String;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "containerFile":Ljava/io/File;
    .end local v7    # "newURL":Ljava/net/URL;
    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v0    # "loader":Ljava/lang/ClassLoader;
    .restart local v1    # "urls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;
    .restart local p1    # "test":Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;
    .restart local p2    # "packageName":Ljava/lang/String;
    :cond_6
    const-string v4, "bundleresource"

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 231
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->loadImplementationsInBundle(Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;Ljava/lang/String;)V

    goto :goto_4

    .line 232
    :cond_7
    const-string v4, "jar"

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 233
    invoke-direct {p0, p1, p2, v2}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->loadImplementationsInJar(Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;Ljava/lang/String;Ljava/net/URL;)V

    goto :goto_4

    .line 235
    :cond_8
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 237
    invoke-direct {p0, p1, p2, v4}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->loadImplementationsInDirectory(Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_4

    .line 239
    :cond_9
    invoke-direct {p0, p1, p2, v4}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->loadImplementationsInJar(Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;Ljava/lang/String;Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_4

    .line 242
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "urlPath":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 243
    .local v2, "ioe":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v4, "Could not read entries"

    invoke-interface {v3, v4, v2}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    .end local v2    # "ioe":Ljava/lang/Exception;
    :goto_4
    goto/16 :goto_0

    .line 246
    :cond_a
    return-void

    .line 183
    .end local v1    # "urls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :catch_1
    move-exception v1

    .line 184
    .local v1, "ioe":Ljava/io/IOException;
    sget-object v2, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Could not read package: {}"

    invoke-interface {v2, v3, p2, v1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    return-void
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .line 133
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->classloader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-class v0, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/core/util/Loader;->getClassLoader(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->classloader:Ljava/lang/ClassLoader;

    :goto_0
    return-object v0
.end method

.method public getClasses()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->classMatches:Ljava/util/Set;

    return-object v0
.end method

.method public getResources()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->resourceMatches:Ljava/util/Set;

    return-object v0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "aClassloader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "aClassloader"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->classloader:Ljava/lang/ClassLoader;

    .line 145
    return-void
.end method
