.class public final Lg5/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg5/b0$a;,
        Lg5/b0$b;
    }
.end annotation


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lg5/b0$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lg5/b0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    sget-object v0, Lf5/d;->p1:La5/a;

    sget-object v0, Lf5/d$b;->a:Lf5/d;

    invoke-static {}, Lg5/n;->b()Lg5/n;

    move-result-object v1

    const/16 v7, 0x20

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v9, "log4j.unbox.ringbuffer.size"

    invoke-virtual {v1, v9}, Lg5/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v10, v2

    goto :goto_0

    :cond_0
    move-object v10, v1

    :goto_0
    const/4 v11, 0x1

    :try_start_0
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge v1, v7, :cond_2

    const-string v1, "Invalid {} {}, using minimum size {}."

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Le5/a;->h1:Ljava/lang/String;

    sget-object v3, La5/a;->b1:La5/a;

    const/4 v4, 0x0

    invoke-virtual {v0, v3}, Lf5/d;->u(La5/a;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Le5/a;->r:Lc5/f;

    invoke-interface {v5, v1, v9, v10, v8}, Lc5/f;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/io/Serializable;)Lc5/e;

    move-result-object v5

    invoke-interface {v5}, Lc5/e;->E1()Ljava/lang/Throwable;

    move-result-object v6

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Le5/a;->H(Ljava/lang/String;La5/a;La5/f;Lc5/e;Ljava/lang/Throwable;)V

    :cond_1
    move v1, v7

    :cond_2
    sub-int/2addr v1, v11

    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v7, v0

    shl-int v7, v11, v7

    goto :goto_1

    :catch_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Le5/a;->h1:Ljava/lang/String;

    sget-object v3, La5/a;->b1:La5/a;

    const/4 v4, 0x0

    invoke-virtual {v0, v3}, Lf5/d;->u(La5/a;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Le5/a;->r:Lc5/f;

    const-string v5, "Invalid {} {}, using default size {}."

    invoke-interface {v1, v5, v9, v10, v8}, Lc5/f;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/io/Serializable;)Lc5/e;

    move-result-object v5

    invoke-interface {v5}, Lc5/e;->E1()Ljava/lang/Throwable;

    move-result-object v6

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Le5/a;->H(Ljava/lang/String;La5/a;La5/f;Lc5/e;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    sput v7, Lg5/b0;->a:I

    sub-int/2addr v7, v11

    sput v7, Lg5/b0;->b:I

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lg5/b0;->c:Ljava/lang/ThreadLocal;

    new-instance v0, Lg5/b0$b;

    invoke-direct {v0}, Lg5/b0$b;-><init>()V

    sput-object v0, Lg5/b0;->d:Lg5/b0$b;

    return-void
.end method

.method public static a(I)Ljava/lang/StringBuilder;
    .locals 1

    invoke-static {}, Lg5/b0;->c()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static b(S)Ljava/lang/StringBuilder;
    .locals 1

    invoke-static {}, Lg5/b0;->c()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static c()Ljava/lang/StringBuilder;
    .locals 9

    sget-boolean v0, Lg5/a;->a:Z

    const/4 v1, 0x0

    sget v2, Lg5/b0;->b:I

    if-eqz v0, :cond_1

    sget-object v0, Lg5/b0;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg5/b0$a;

    if-nez v3, :cond_0

    new-instance v3, Lg5/b0$a;

    invoke-direct {v3}, Lg5/b0$a;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    iget v0, v3, Lg5/b0$a;->b:I

    add-int/lit8 v4, v0, 0x1

    iput v4, v3, Lg5/b0$a;->b:I

    and-int/2addr v0, v2

    iget-object v2, v3, Lg5/b0$a;->a:[Ljava/lang/StringBuilder;

    aget-object v0, v2, v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    :cond_1
    sget-object v0, Lg5/b0;->d:Lg5/b0$b;

    iget-object v3, v0, Lg5/b0$b;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StringBuilder;

    iget-object v0, v0, Lg5/b0$b;->b:Ljava/lang/ThreadLocal;

    if-nez v4, :cond_3

    sget v4, Lg5/b0;->a:I

    new-array v5, v4, [Ljava/lang/StringBuilder;

    move v6, v1

    :goto_0
    if-ge v6, v4, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x15

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v3, 0x1

    new-array v3, v3, [I

    invoke-virtual {v0, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v4, v5

    :cond_3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v3, v0, v1

    add-int/lit8 v5, v3, 0x1

    aput v5, v0, v1

    and-int v0, v2, v3

    aget-object v0, v4, v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_1
    return-object v0
.end method
