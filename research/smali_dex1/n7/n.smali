.class public Ln7/n;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:Ln7/n;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Ln7/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Ln7/n;->a:Ljava/util/logging/Logger;

    .line 12
    .line 13
    new-instance v0, Ln7/n;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Ln7/n;->b:Ln7/n;

    .line 19
    .line 20
    return-void
.end method

.method public static b()Ln7/n;
    .registers 2

    .line 1
    sget-object v0, Ln7/l;->a:Ln7/m;

    .line 2
    .line 3
    check-cast v0, Ln7/l1;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v0, Ln7/l1;->b:Ljava/lang/ThreadLocal;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ln7/n;

    .line 15
    .line 16
    sget-object v1, Ln7/n;->b:Ln7/n;

    .line 17
    .line 18
    if-nez v0, :cond_14

    .line 19
    .line 20
    move-object v0, v1

    .line 21
    :cond_14
    if-nez v0, :cond_17

    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_17
    return-object v0
.end method


# virtual methods
.method public final a()Ln7/n;
    .registers 4

    .line 1
    sget-object v0, Ln7/l;->a:Ln7/m;

    .line 2
    .line 3
    check-cast v0, Ln7/l1;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v0, Ln7/l1;->b:Ljava/lang/ThreadLocal;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ln7/n;

    .line 15
    .line 16
    sget-object v2, Ln7/n;->b:Ln7/n;

    .line 17
    .line 18
    if-nez v1, :cond_14

    .line 19
    .line 20
    move-object v1, v2

    .line 21
    :cond_14
    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    if-nez v1, :cond_1a

    .line 25
    .line 26
    return-object v2

    .line 27
    :cond_1a
    return-object v1
.end method

.method public final c(Ln7/n;)V
    .registers 8

    .line 1
    if-eqz p1, :cond_35

    .line 2
    .line 3
    sget-object v0, Ln7/l;->a:Ln7/m;

    .line 4
    .line 5
    check-cast v0, Ln7/l1;

    .line 6
    .line 7
    sget-object v1, Ln7/l1;->b:Ljava/lang/ThreadLocal;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ln7/n;

    .line 17
    .line 18
    sget-object v2, Ln7/n;->b:Ln7/n;

    .line 19
    .line 20
    if-nez v0, :cond_16

    .line 21
    .line 22
    move-object v0, v2

    .line 23
    :cond_16
    if-eq v0, p0, :cond_2a

    .line 24
    .line 25
    sget-object v0, Ln7/l1;->a:Ljava/util/logging/Logger;

    .line 26
    .line 27
    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 28
    .line 29
    new-instance v4, Ljava/lang/Throwable;

    .line 30
    .line 31
    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const-string v5, "Context was not attached when detaching"

    .line 39
    .line 40
    invoke-virtual {v0, v3, v5, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    :cond_2a
    if-eq p1, v2, :cond_30

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_30
    const/4 p1, 0x0

    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_35
    const-string p1, "toAttach"

    .line 55
    .line 56
    invoke-static {p1}, Ln0/b;->n(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
