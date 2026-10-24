.class public final Lg5/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lf5/d;

.field public static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    sget-object v0, Lf5/d;->p1:La5/a;

    sget-object v0, Lf5/d$b;->a:Lf5/d;

    sput-object v0, Lg5/i;->a:Lf5/d;

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "org.osgi.framework.FrameworkUtil"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getBundle"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-class v4, Lg5/i;

    aput-object v4, v2, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    move v0, v3

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lg5/i;->a:Lf5/d;

    const-string v3, "Unknown error checking OSGI environment."

    invoke-virtual {v2, v3, v1}, Le5/a;->C(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_0
    :cond_0
    :goto_0
    sput-boolean v0, Lg5/i;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/invoke/MethodHandles$Lookup;Z)Ljava/util/stream/Stream;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            "Z)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "lookup"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "lookupClass"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v0}, Lorg/osgi/framework/FrameworkUtil;->getBundle(Ljava/lang/Class;)Lorg/osgi/framework/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/osgi/framework/Bundle;->getBundleContext()Lorg/osgi/framework/BundleContext;

    move-result-object v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_1

    sget-object p2, Lf5/d;->p1:La5/a;

    sget-object v2, Lf5/d$b;->a:Lf5/d;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Le5/a;->h1:Ljava/lang/String;

    sget-object v4, La5/a;->Z:La5/a;

    const/4 v5, 0x0

    invoke-virtual {v2, v4}, Lf5/d;->I(La5/a;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, v2, Le5/a;->r:Lc5/f;

    invoke-interface {p2, p0, p1, v0, v1}, Lc5/f;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Lc5/e;

    move-result-object v6

    invoke-interface {v6}, Lc5/e;->E1()Ljava/lang/Throwable;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Le5/a;->H(Ljava/lang/String;La5/a;La5/f;Lc5/e;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :try_start_0
    invoke-interface {v2, p0, p1}, Lorg/osgi/framework/BundleContext;->getServiceReferences(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lg5/h;

    invoke-direct {v0, v2}, Lg5/h;-><init>(Lorg/osgi/framework/BundleContext;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_1

    sget-object p2, Lf5/d;->p1:La5/a;

    sget-object p2, Lf5/d$b;->a:Lf5/d;

    const-string v0, "Unable to load OSGI services for service {}"

    invoke-virtual {p2, p0, v0, p1}, Le5/a;->z(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
