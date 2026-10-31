.class public abstract Lu7/e;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:Z

.field public static final c:La9/w;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const-class v0, Lu7/e;

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
    sput-object v0, Lu7/e;->a:Ljava/util/logging/Logger;

    .line 12
    .line 13
    const-string v0, "GRPC_CLIENT_CALL_REJECT_RUNNABLE"

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Li4/d;->a(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_24

    .line 24
    .line 25
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_24

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    const/4 v0, 0x0

    .line 38
    :goto_25
    sput-boolean v0, Lu7/e;->b:Z

    .line 39
    .line 40
    new-instance v0, La9/w;

    .line 41
    .line 42
    const/4 v1, 0x3

    .line 43
    const-string v2, "internal-stub-type"

    .line 44
    .line 45
    invoke-direct {v0, v2, v1}, La9/w;-><init>(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lu7/e;->c:La9/w;

    .line 49
    .line 50
    return-void
.end method

.method public static a(Ln7/t;Ljava/lang/Throwable;)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-virtual {p0, v0, p1}, Ln7/t;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_4} :catch_7
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_4} :catch_5

    .line 3
    .line 4
    .line 5
    goto :goto_11

    .line 6
    :catch_5
    move-exception p0

    .line 7
    goto :goto_8

    .line 8
    :catch_7
    move-exception p0

    .line 9
    :goto_8
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 10
    .line 11
    const-string v1, "RuntimeException encountered while closing call"

    .line 12
    .line 13
    sget-object v2, Lu7/e;->a:Ljava/util/logging/Logger;

    .line 14
    .line 15
    invoke-virtual {v2, v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    :goto_11
    instance-of p0, p1, Ljava/lang/RuntimeException;

    .line 19
    .line 20
    if-nez p0, :cond_22

    .line 21
    .line 22
    instance-of p0, p1, Ljava/lang/Error;

    .line 23
    .line 24
    if-eqz p0, :cond_1c

    .line 25
    .line 26
    check-cast p1, Ljava/lang/Error;

    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1c
    new-instance p0, Ljava/lang/AssertionError;

    .line 30
    .line 31
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    throw p0

    .line 35
    :cond_22
    check-cast p1, Ljava/lang/RuntimeException;

    .line 36
    .line 37
    throw p1
.end method

.method public static b(Ln7/t;Ly5/g;)Lu7/a;
    .registers 5

    .line 1
    new-instance v0, Lu7/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lu7/a;-><init>(Ln7/t;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lu7/d;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lu7/d;-><init>(Lu7/a;)V

    .line 9
    .line 10
    .line 11
    new-instance v2, Ln7/v0;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1, v2}, Ln7/t;->o(Ln7/e;Ln7/v0;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ln7/t;->k()V

    .line 20
    .line 21
    .line 22
    :try_start_15
    invoke-virtual {p0, p1}, Ln7/t;->m(Ly5/g;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ln7/t;->g()V
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_1b} :catch_1e
    .catch Ljava/lang/Error; {:try_start_15 .. :try_end_1b} :catch_1c

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :catch_1c
    move-exception p1

    .line 30
    goto :goto_1f

    .line 31
    :catch_1e
    move-exception p1

    .line 32
    :goto_1f
    invoke-static {p0, p1}, Lu7/e;->a(Ln7/t;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    throw p0
.end method

.method public static c(Lu7/a;)Ljava/lang/Object;
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lm4/m;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_4} :catch_47
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_4} :catch_5

    .line 5
    return-object p0

    .line 6
    :catch_5
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "t"

    .line 12
    .line 13
    invoke-static {p0, v0}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    move-object v0, p0

    .line 17
    :goto_10
    if-eqz v0, :cond_36

    .line 18
    .line 19
    instance-of v1, v0, Ln7/g1;

    .line 20
    .line 21
    if-nez v1, :cond_2b

    .line 22
    .line 23
    instance-of v1, v0, Ln7/h1;

    .line 24
    .line 25
    if-nez v1, :cond_1f

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_10

    .line 32
    :cond_1f
    check-cast v0, Ln7/h1;

    .line 33
    .line 34
    new-instance p0, Ln7/h1;

    .line 35
    .line 36
    iget-object v1, v0, Ln7/h1;->b:Ln7/f1;

    .line 37
    .line 38
    iget-object v0, v0, Ln7/h1;->c:Ln7/v0;

    .line 39
    .line 40
    invoke-direct {p0, v1, v0}, Ln7/h1;-><init>(Ln7/f1;Ln7/v0;)V

    .line 41
    .line 42
    .line 43
    goto :goto_46

    .line 44
    :cond_2b
    check-cast v0, Ln7/g1;

    .line 45
    .line 46
    new-instance p0, Ln7/h1;

    .line 47
    .line 48
    iget-object v0, v0, Ln7/g1;->b:Ln7/f1;

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, v0, v1}, Ln7/h1;-><init>(Ln7/f1;Ln7/v0;)V

    .line 52
    .line 53
    .line 54
    goto :goto_46

    .line 55
    :cond_36
    sget-object v0, Ln7/f1;->g:Ln7/f1;

    .line 56
    .line 57
    const-string v1, "unexpected exception"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0, p0}, Ln7/f1;->g(Ljava/lang/Throwable;)Ln7/f1;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0}, Ln7/f1;->a()Ln7/h1;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    :goto_46
    throw p0

    .line 72
    :catch_47
    move-exception p0

    .line 73
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 78
    .line 79
    .line 80
    sget-object v0, Ln7/f1;->f:Ln7/f1;

    .line 81
    .line 82
    const-string v1, "Thread interrupted"

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0, p0}, Ln7/f1;->g(Ljava/lang/Throwable;)Ln7/f1;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p0}, Ln7/f1;->a()Ln7/h1;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    throw p0
.end method
