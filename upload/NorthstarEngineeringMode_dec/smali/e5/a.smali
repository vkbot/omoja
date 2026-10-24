.class public abstract Le5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le5/g;
.implements Ljava/io/Serializable;


# static fields
.field public static final Z:La5/f;

.field public static final b1:La5/f;

.field public static final c1:La5/f;

.field public static final d1:La5/f;

.field public static final e1:La5/f;

.field public static final f1:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lc5/g;",
            ">;"
        }
    .end annotation
.end field

.field public static final g1:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lc5/d;",
            ">;"
        }
    .end annotation
.end field

.field public static final h1:Ljava/lang/String;

.field public static final i1:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final j1:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lb5/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final y:La5/f;


# instance fields
.field public final c:Ljava/lang/String;

.field public final r:Lc5/f;

.field public final x:Lc5/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "FLOW"

    invoke-static {v0}, La5/g;->a(Ljava/lang/String;)La5/f;

    move-result-object v0

    sput-object v0, Le5/a;->y:La5/f;

    const-string v1, "ENTER"

    invoke-static {v1}, La5/g;->a(Ljava/lang/String;)La5/f;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [La5/f;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v3}, La5/f;->y0([La5/f;)La5/g$a;

    const-string v1, "EXIT"

    invoke-static {v1}, La5/g;->a(Ljava/lang/String;)La5/f;

    move-result-object v1

    new-array v3, v2, [La5/f;

    aput-object v0, v3, v4

    invoke-interface {v1, v3}, La5/f;->y0([La5/f;)La5/g$a;

    const-string v0, "EXCEPTION"

    invoke-static {v0}, La5/g;->a(Ljava/lang/String;)La5/f;

    move-result-object v0

    sput-object v0, Le5/a;->c1:La5/f;

    const-string v1, "THROWING"

    invoke-static {v1}, La5/g;->a(Ljava/lang/String;)La5/f;

    move-result-object v1

    new-array v3, v2, [La5/f;

    aput-object v0, v3, v4

    invoke-interface {v1, v3}, La5/f;->y0([La5/f;)La5/g$a;

    const-string v1, "CATCHING"

    invoke-static {v1}, La5/g;->a(Ljava/lang/String;)La5/f;

    move-result-object v1

    new-array v2, v2, [La5/f;

    aput-object v0, v2, v4

    invoke-interface {v1, v2}, La5/f;->y0([La5/f;)La5/g$a;

    const-class v0, Lc5/j;

    sput-object v0, Le5/a;->f1:Ljava/lang/Class;

    const-class v0, Lc5/c;

    sput-object v0, Le5/a;->g1:Ljava/lang/Class;

    const-class v0, Le5/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le5/a;->h1:Ljava/lang/String;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Le5/a;->i1:Ljava/lang/ThreadLocal;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/g;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/g;-><init>(I)V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Le5/a;->j1:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Le5/a;->c:Ljava/lang/String;

    :try_start_0
    sget-object v0, Le5/a;->f1:Ljava/lang/Class;

    .line 4
    invoke-static {v0}, Lg5/g;->d(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc5/g;

    .line 5
    instance-of v1, v0, Lc5/f;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Lc5/f;

    goto :goto_1

    .line 7
    :cond_1
    new-instance v1, Le5/l;

    invoke-direct {v1, v0}, Le5/l;-><init>(Lc5/g;)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Le5/a;->r:Lc5/f;

    :try_start_1
    sget-object v0, Le5/a;->g1:Ljava/lang/Class;

    .line 8
    invoke-static {v0}, Lg5/g;->d(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc5/d;
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0

    iput-object v0, p0, Le5/a;->x:Lc5/d;

    return-void

    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 10
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Lc5/k;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le5/a;->c:Ljava/lang/String;

    if-nez p2, :cond_1

    :try_start_0
    sget-object p1, Le5/a;->f1:Ljava/lang/Class;

    .line 12
    invoke-static {p1}, Lg5/g;->d(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc5/g;

    .line 13
    instance-of p2, p1, Lc5/f;

    if-eqz p2, :cond_0

    .line 14
    check-cast p1, Lc5/f;

    move-object p2, p1

    goto :goto_0

    .line 15
    :cond_0
    new-instance p2, Le5/l;

    invoke-direct {p2, p1}, Le5/l;-><init>(Lc5/g;)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 16
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, Le5/a;->r:Lc5/f;

    :try_start_1
    sget-object p1, Le5/a;->g1:Ljava/lang/Class;

    .line 17
    invoke-static {p1}, Lg5/g;->d(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc5/d;
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    iput-object p1, p0, Le5/a;->x:Lc5/d;

    return-void

    :catch_1
    move-exception p0

    .line 18
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static D(Ljava/lang/Throwable;Ljava/lang/String;Lc5/e;)V
    .locals 9

    instance-of v0, p0, La5/e;

    if-nez v0, :cond_1

    sget-object v0, Lf5/d;->p1:La5/a;

    sget-object v1, Lf5/d$b;->a:Lf5/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Lc5/e;->getFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Le5/a;->h1:Ljava/lang/String;

    sget-object v0, La5/a;->b1:La5/a;

    const/4 v8, 0x0

    invoke-virtual {v1, v0}, Lf5/d;->I(La5/a;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Le5/a;->r:Lc5/f;

    move-object v3, p1

    move-object v7, p0

    invoke-interface/range {v2 .. v7}, Lc5/f;->f(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lc5/e;

    move-result-object v5

    invoke-interface {v5}, Lc5/e;->E1()Ljava/lang/Throwable;

    move-result-object v6

    move-object v2, p2

    move-object v3, v0

    move-object v4, v8

    invoke-virtual/range {v1 .. v6}, Le5/a;->H(Ljava/lang/String;La5/a;La5/f;Lc5/e;Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :cond_1
    check-cast p0, La5/e;

    throw p0
.end method

.method public static x()V
    .locals 4

    sget-object v0, Le5/a;->i1:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    new-array v1, v2, [I

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    aget v3, v1, v0

    sub-int/2addr v3, v2

    aput v3, v1, v0

    if-ltz v3, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recursion depth became negative: "

    invoke-static {v1, v3}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final A(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Le5/a;->h1:Ljava/lang/String;

    sget-object v1, La5/a;->Z:La5/a;

    invoke-virtual {p0, v0, v1, p2, p1}, Le5/a;->E(Ljava/lang/String;La5/a;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final B(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Exception;)V
    .locals 6

    sget-object v1, Le5/a;->h1:Ljava/lang/String;

    sget-object v2, La5/a;->Z:La5/a;

    const/4 v3, 0x0

    invoke-interface {p0, v2}, Le5/g;->u(La5/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le5/a;->r:Lc5/f;

    invoke-interface {v0, p1, p2, p3, p4}, Lc5/f;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/io/Serializable;)Lc5/e;

    move-result-object v4

    invoke-interface {v4}, Lc5/e;->E1()Ljava/lang/Throwable;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Le5/a;->H(Ljava/lang/String;La5/a;La5/f;Lc5/e;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final C(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Le5/a;->h1:Ljava/lang/String;

    sget-object v1, La5/a;->Z:La5/a;

    invoke-virtual {p0, v0, v1, p1, p2}, Le5/a;->G(Ljava/lang/String;La5/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final E(Ljava/lang/String;La5/a;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    const/4 v3, 0x0

    invoke-interface {p0, p2}, Le5/g;->r(La5/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le5/a;->r:Lc5/f;

    invoke-interface {v0, p4, p3}, Lc5/f;->a(Ljava/lang/Object;Ljava/lang/String;)Lc5/e;

    move-result-object v4

    invoke-interface {v4}, Lc5/e;->E1()Ljava/lang/Throwable;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Le5/a;->H(Ljava/lang/String;La5/a;La5/f;Lc5/e;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final F(Ljava/lang/String;La5/a;Ljava/lang/String;Ljava/lang/Object;Ljava/io/Serializable;)V
    .locals 6

    const/4 v3, 0x0

    invoke-interface {p0, p2}, Le5/g;->t(La5/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le5/a;->r:Lc5/f;

    invoke-interface {v0, p4, p3, p5}, Lc5/f;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/io/Serializable;)Lc5/e;

    move-result-object v4

    invoke-interface {v4}, Lc5/e;->E1()Ljava/lang/Throwable;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Le5/a;->H(Ljava/lang/String;La5/a;La5/f;Lc5/e;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final G(Ljava/lang/String;La5/a;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    const/4 v3, 0x0

    invoke-interface {p0, p2}, Le5/g;->k(La5/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le5/a;->r:Lc5/f;

    invoke-interface {v0, p3}, Lc5/g;->d(Ljava/lang/String;)Lc5/e;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Le5/a;->H(Ljava/lang/String;La5/a;La5/f;Lc5/e;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final H(Ljava/lang/String;La5/a;La5/f;Lc5/e;Ljava/lang/Throwable;)V
    .locals 3

    :try_start_0
    sget-object p3, Le5/a;->i1:Ljava/lang/ThreadLocal;

    invoke-virtual {p3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-array v0, v1, [I

    invoke-virtual {p3, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 p3, 0x0

    aget v2, v0, p3

    add-int/2addr v2, v1

    aput v2, v0, p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-interface {p0, p1, p2, p4, p5}, Le5/g;->m(Ljava/lang/String;La5/a;Lc5/e;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-static {p0, p1, p4}, Le5/a;->D(Ljava/lang/Throwable;Ljava/lang/String;Lc5/e;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    :try_start_3
    invoke-static {}, Le5/a;->x()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {p4}, Lc5/l;->i(Lc5/e;)V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_1

    :catchall_2
    move-exception p0

    :try_start_4
    invoke-static {}, Le5/a;->x()V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_1
    invoke-static {p4}, Lc5/l;->i(Lc5/e;)V

    throw p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Throwable;La5/a;Lc5/e;)V
    .locals 4

    :try_start_0
    sget-object v0, Le5/a;->i1:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    new-array v1, v2, [I

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    aget v3, v1, v0

    add-int/2addr v3, v2

    aput v3, v1, v0

    invoke-interface {p0, p1, p3, p4, p2}, Le5/g;->m(Ljava/lang/String;La5/a;Lc5/e;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {}, Le5/a;->x()V

    invoke-static {p4}, Lc5/l;->i(Lc5/e;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0, p1, p4}, Le5/a;->D(Ljava/lang/Throwable;Ljava/lang/String;Lc5/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception p0

    invoke-static {}, Le5/a;->x()V

    invoke-static {p4}, Lc5/l;->i(Lc5/e;)V

    throw p0
.end method

.method public final c()Lc5/f;
    .locals 0

    iget-object p0, p0, Le5/a;->r:Lc5/f;

    return-object p0
.end method

.method public final d(Ljava/io/Serializable;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Le5/a;->h1:Ljava/lang/String;

    sget-object v1, La5/a;->b1:La5/a;

    invoke-virtual {p0, v0, v1, p2, p1}, Le5/a;->E(Ljava/lang/String;La5/a;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final e()La5/b;
    .locals 1

    sget-object v0, La5/a;->d1:La5/a;

    invoke-virtual {p0, v0}, Le5/a;->i(La5/a;)La5/b;

    move-result-object p0

    return-object p0
.end method

.method public final f()La5/b;
    .locals 1

    sget-object v0, La5/a;->c1:La5/a;

    invoke-virtual {p0, v0}, Le5/a;->i(La5/a;)La5/b;

    move-result-object p0

    return-object p0
.end method

.method public final g()La5/b;
    .locals 1

    sget-object v0, La5/a;->b1:La5/a;

    invoke-virtual {p0, v0}, Le5/a;->i(La5/a;)La5/b;

    move-result-object p0

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Le5/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final h()La5/b;
    .locals 1

    sget-object v0, La5/a;->Z:La5/a;

    invoke-virtual {p0, v0}, Le5/a;->i(La5/a;)La5/b;

    move-result-object p0

    return-object p0
.end method

.method public final i(La5/a;)La5/b;
    .locals 2

    invoke-interface {p0, p1}, Le5/g;->a(La5/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lg5/a;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Le5/a;->j1:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/a;

    iget-boolean v1, v0, Lb5/a;->e:Z

    if-nez v1, :cond_0

    iput-object p0, v0, Lb5/a;->b:Le5/g;

    iput-object p1, v0, Lb5/a;->c:La5/a;

    const/4 p0, 0x0

    iput-object p0, v0, Lb5/a;->d:Ljava/lang/Throwable;

    const/4 p0, 0x1

    iput-boolean p0, v0, Lb5/a;->e:Z

    goto :goto_0

    :cond_0
    new-instance v0, Lb5/a;

    invoke-direct {v0, p0, p1}, Lb5/a;-><init>(Le5/g;La5/a;)V

    :goto_0
    return-object v0

    :cond_1
    sget-object p0, La5/b;->a:La5/b$a;

    return-object p0
.end method

.method public final n(Ljava/lang/Object;Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 6

    sget-object v1, Le5/a;->h1:Ljava/lang/String;

    sget-object v2, La5/a;->b1:La5/a;

    move-object v0, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Le5/a;->F(Ljava/lang/String;La5/a;Ljava/lang/String;Ljava/lang/Object;Ljava/io/Serializable;)V

    return-void
.end method

.method public final q()La5/b;
    .locals 1

    sget-object v0, La5/a;->e1:La5/a;

    invoke-virtual {p0, v0}, Le5/a;->i(La5/a;)La5/b;

    move-result-object p0

    return-object p0
.end method

.method public final s(Ljava/lang/String;)V
    .locals 3

    sget-object v0, La5/a;->b1:La5/a;

    const/4 v1, 0x0

    sget-object v2, Le5/a;->h1:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, p1, v1}, Le5/a;->G(Ljava/lang/String;La5/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final y()V
    .locals 4

    sget-object v0, La5/a;->Z:La5/a;

    const/4 v1, 0x0

    sget-object v2, Le5/a;->h1:Ljava/lang/String;

    const-string v3, "Log4j2 could not find a logging implementation. Please add log4j-core to the classpath. Using SimpleLogger to log to the console..."

    invoke-virtual {p0, v2, v0, v3, v1}, Le5/a;->G(Ljava/lang/String;La5/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final z(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    sget-object v1, Le5/a;->h1:Ljava/lang/String;

    sget-object v2, La5/a;->Z:La5/a;

    move-object v0, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Le5/a;->F(Ljava/lang/String;La5/a;Ljava/lang/String;Ljava/lang/Object;Ljava/io/Serializable;)V

    return-void
.end method
