.class public final Lorg/apache/xmlbeans/impl/values/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/values/x$a;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/ThreadLocal;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/values/x;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lj5/h;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/x;->b:I

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/x;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/x;->b:I

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/x;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/values/a0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/x;->b:I

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/x;->a:Ljava/lang/Object;

    return-void
.end method

.method public static e()Lorg/apache/xmlbeans/impl/values/x$a;
    .locals 2

    sget-object v0, Lorg/apache/xmlbeans/impl/values/x;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/values/x$a;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/xmlbeans/impl/values/x$a;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/values/x$a;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public static k()V
    .locals 3

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/x;->e()Lorg/apache/xmlbeans/impl/values/x$a;

    move-result-object v0

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/values/x$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/values/x;

    iput-object v2, v0, Lorg/apache/xmlbeans/impl/values/x$a;->a:Lorg/apache/xmlbeans/impl/values/x;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/xmlbeans/impl/values/x;->c:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static t(Lorg/apache/xmlbeans/impl/values/x;)V
    .locals 3

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/x;->e()Lorg/apache/xmlbeans/impl/values/x$a;

    move-result-object v0

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/values/x$a;->b:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/apache/xmlbeans/impl/values/x$a;->a:Lorg/apache/xmlbeans/impl/values/x;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p0, v0, Lorg/apache/xmlbeans/impl/values/x$a;->a:Lorg/apache/xmlbeans/impl/values/x;

    return-void
.end method


# virtual methods
.method public final J(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "http://www.w3.org/XML/1998/namespace"

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/x;->a:Ljava/lang/Object;

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/x;->b:I

    const/4 v1, 0x1

    if-eq p0, v1, :cond_9

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_8

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    check-cast v0, Lj5/h;

    invoke-interface {v0, p1}, Lj5/h;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    check-cast v0, Lx5/a;

    invoke-interface {v0}, Lx5/a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p0

    goto :goto_0

    :cond_4
    move-object p0, v0

    :goto_0
    instance-of v1, p0, Lorg/apache/xmlbeans/impl/values/b0;

    if-eqz v1, :cond_5

    check-cast p0, Lorg/apache/xmlbeans/impl/values/b0;

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/values/b0;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    invoke-interface {p0, p1}, Lj5/h;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    move-object p0, v0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {p0}, Li5/j2;->newCursor()Li5/p0;

    move-result-object p0

    if-eqz p0, :cond_7

    :try_start_0
    invoke-interface {p0}, Li5/p0;->W0()Li5/p0$a;

    move-result-object v0

    sget-object v1, Li5/p0$a;->i:Li5/p0$a;

    if-ne v0, v1, :cond_6

    invoke-interface {p0}, Li5/p0;->X0()Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_6
    :goto_1
    invoke-interface {p0, p1}, Li5/p0;->G1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Li5/p0;->close()V

    return-object p1

    :goto_2
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_2
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v0

    :cond_7
    if-eqz p0, :cond_8

    invoke-interface {p0}, Li5/p0;->close()V

    :cond_8
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_9
    check-cast v0, Lorg/apache/xmlbeans/impl/values/a0;

    invoke-interface {v0, p1}, Lj5/h;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
