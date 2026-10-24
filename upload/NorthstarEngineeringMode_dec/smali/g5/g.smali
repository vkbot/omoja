.class public final Lg5/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg5/g$b;,
        Lg5/g$a;
    }
.end annotation


# static fields
.field public static final a:Lf5/d;

.field public static b:Ljava/lang/Boolean;

.field public static final c:Ljava/lang/RuntimePermission;

.field public static final d:Lg5/c;

.field public static final e:Lg5/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lf5/d;->p1:La5/a;

    sget-object v0, Lf5/d$b;->a:Lf5/d;

    sput-object v0, Lg5/g;->a:Lf5/d;

    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "getClassLoader"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lg5/g;->c:Ljava/lang/RuntimePermission;

    new-instance v0, Lg5/c;

    new-instance v1, Lg5/e;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lg5/c;-><init>(Lg5/e;)V

    sput-object v0, Lg5/g;->d:Lg5/c;

    new-instance v0, Lg5/g$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg5/g;->e:Lg5/g$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Z)Ljava/util/LinkedHashSet;
    .locals 7

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/ClassLoader;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lg5/g;->b()Ljava/lang/ClassLoader;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    const/4 v3, 0x0

    aput-object p1, v1, v3

    const-class p1, Lg5/g;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v1, v4

    sget-object p1, Lg5/g;->d:Lg5/c;

    invoke-virtual {p1}, Lg5/c;->getAsBoolean()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    :goto_1
    const/4 p1, 0x2

    aput-object v2, v1, p1

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    :goto_2
    if-ge v3, v0, :cond_3

    aget-object v2, v1, v3

    if-eqz v2, :cond_2

    :try_start_0
    invoke-virtual {v2, p0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Lg5/g$b;

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/URL;

    invoke-direct {v5, v2, v6}, Lg5/g$b;-><init>(Ljava/lang/ClassLoader;Ljava/net/URL;)V

    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    sget-object v4, Lg5/g;->a:Lf5/d;

    const-string v5, "failed to collect resources of name `{}`"

    invoke-virtual {v4, p0, v5, v2}, Le5/a;->z(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-object p1
.end method

.method public static b()Ljava/lang/ClassLoader;
    .locals 2

    :try_start_0
    sget-object v0, Lg5/g;->d:Lg5/c;

    invoke-virtual {v0}, Lg5/c;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lg5/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_1

    :cond_0
    sget-object v0, Lg5/g;->e:Lg5/g$a;

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lg5/g$a;->run()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lg5/g;->b:Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-static {}, Lg5/n;->b()Lg5/n;

    move-result-object v0

    const-string v2, "log4j.ignoreTCL"

    invoke-virtual {v0, v2}, Lg5/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_1

    const-string v2, "false"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lg5/g;->b:Ljava/lang/Boolean;

    :cond_2
    sget-object v0, Lg5/g;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-class v2, Lg5/g;

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {}, Lg5/g;->b()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_4

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_4
    invoke-static {p0, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
