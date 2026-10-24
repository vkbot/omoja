.class public final Lc5/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/f;
.implements Ljava/io/Serializable;


# instance fields
.field public final transient c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lc5/m;",
            ">;"
        }
    .end annotation
.end field

.field public final transient r:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lc5/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc5/l;

    invoke-direct {v0}, Lc5/l;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lc5/l;->c:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lc5/l;->r:Ljava/lang/ThreadLocal;

    new-instance p0, Ljava/lang/ThreadLocal;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method public static i(Lc5/e;)V
    .locals 1

    instance-of v0, p0, Lc5/b;

    if-eqz v0, :cond_0

    check-cast p0, Lc5/b;

    invoke-interface {p0}, Lc5/b;->clear()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;)Lc5/e;
    .locals 2

    invoke-virtual {p0}, Lc5/l;->h()Lc5/m;

    move-result-object p0

    iget-object v0, p0, Lc5/m;->b1:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p2, p1}, Lc5/m;->b([Ljava/lang/Object;Ljava/lang/String;I)V

    return-object p0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/String;Ljava/io/Serializable;)Lc5/e;
    .locals 2

    invoke-virtual {p0}, Lc5/l;->h()Lc5/m;

    move-result-object p0

    iget-object v0, p0, Lc5/m;->b1:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p3, v0, p1

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p2, p1}, Lc5/m;->b([Ljava/lang/Object;Ljava/lang/String;I)V

    return-object p0
.end method

.method public final varargs c(Ljava/lang/String;[Ljava/lang/Object;)Lc5/e;
    .locals 1

    invoke-virtual {p0}, Lc5/l;->h()Lc5/m;

    move-result-object p0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p2

    :goto_0
    invoke-virtual {p0, p2, p1, v0}, Lc5/m;->b([Ljava/lang/Object;Ljava/lang/String;I)V

    iput-object p2, p0, Lc5/m;->Z:[Ljava/lang/Object;

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lc5/e;
    .locals 1

    iget-object p0, p0, Lc5/l;->r:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc5/n;

    if-nez v0, :cond_0

    new-instance v0, Lc5/n;

    invoke-direct {v0}, Lc5/n;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    iput-object p1, v0, Lc5/n;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/io/Serializable;)Lc5/e;
    .locals 2

    invoke-virtual {p0}, Lc5/l;->h()Lc5/m;

    move-result-object p0

    iget-object v0, p0, Lc5/m;->b1:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    const/4 p2, 0x3

    invoke-virtual {p0, v0, p1, p2}, Lc5/m;->b([Ljava/lang/Object;Ljava/lang/String;I)V

    return-object p0
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lc5/e;
    .locals 2

    invoke-virtual {p0}, Lc5/l;->h()Lc5/m;

    move-result-object p0

    iget-object v0, p0, Lc5/m;->b1:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    aput-object p5, v0, p1

    const/4 p1, 0x5

    const-string/jumbo p2, "{} caught {} logging {}: {}"

    invoke-virtual {p0, v0, p2, p1}, Lc5/m;->b([Ljava/lang/Object;Ljava/lang/String;I)V

    return-object p0
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Lc5/e;
    .locals 2

    invoke-virtual {p0}, Lc5/l;->h()Lc5/m;

    move-result-object p0

    iget-object v0, p0, Lc5/m;->b1:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    const-string p2, "Unable to load OSGI services: The bundle has no valid BundleContext for serviceType = {}, lookup = {}, lookupClass = {}, bundle = {}"

    invoke-virtual {p0, v0, p2, p1}, Lc5/m;->b([Ljava/lang/Object;Ljava/lang/String;I)V

    return-object p0
.end method

.method public final h()Lc5/m;
    .locals 2

    iget-object p0, p0, Lc5/l;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc5/m;

    if-nez v0, :cond_0

    new-instance v0, Lc5/m;

    invoke-direct {v0}, Lc5/m;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    iget-boolean p0, v0, Lc5/m;->d1:Z

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    new-instance v0, Lc5/m;

    invoke-direct {v0}, Lc5/m;-><init>()V

    :cond_1
    iput-boolean v1, v0, Lc5/m;->d1:Z

    return-object v0
.end method
