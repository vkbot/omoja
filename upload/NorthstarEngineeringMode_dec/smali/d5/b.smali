.class public final Ld5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:Ld5/b;


# instance fields
.field public final a:Lg5/n;

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Ljava/lang/String;

.field public final g:La5/a;

.field public final h:Ljava/io/PrintStream;

.field public final i:Le5/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le5/k<",
            "Le5/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld5/b;

    invoke-direct {v0}, Ld5/b;-><init>()V

    sput-object v0, Ld5/b;->j:Ld5/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 6
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Opens a file retrieved from configuration (Log4j properties)"
        value = {
            "PATH_TRAVERSAL_OUT"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Le5/k;

    invoke-direct {v0}, Le5/k;-><init>()V

    iput-object v0, p0, Ld5/b;->i:Le5/k;

    new-instance v0, Lg5/n;

    const-string v1, "log4j2.simplelog.properties"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lg5/n;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Ld5/b;->a:Lg5/n;

    const-string/jumbo v1, "org.apache.logging.log4j.simplelog.showContextMap"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lg5/n;->a(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ld5/b;->e:Z

    const-string/jumbo v1, "org.apache.logging.log4j.simplelog.showlogname"

    invoke-virtual {v0, v1, v3}, Lg5/n;->a(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ld5/b;->b:Z

    const-string/jumbo v1, "org.apache.logging.log4j.simplelog.showShortLogname"

    invoke-virtual {v0, v1, v2}, Lg5/n;->a(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ld5/b;->c:Z

    const-string/jumbo v1, "org.apache.logging.log4j.simplelog.showdatetime"

    invoke-virtual {v0, v1, v3}, Lg5/n;->a(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ld5/b;->d:Z

    const-string/jumbo v2, "org.apache.logging.log4j.simplelog.level"

    invoke-virtual {v0, v2}, Lg5/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, La5/a;->Z:La5/a;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v4, La5/a;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La5/a;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    iput-object v3, p0, Ld5/b;->g:La5/a;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "org.apache.logging.log4j.simplelog.dateTimeFormat"

    invoke-virtual {v0, v1}, Lg5/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "yyyy/MM/dd HH:mm:ss:SSS zzz"

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    iput-object v1, p0, Ld5/b;->f:Ljava/lang/String;

    const-string/jumbo v1, "org.apache.logging.log4j.simplelog.logFile"

    invoke-virtual {v0, v1}, Lg5/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "system.err"

    if-nez v0, :cond_4

    move-object v0, v1

    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    goto :goto_2

    :cond_5
    const-string/jumbo v1, "system.out"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    goto :goto_2

    :cond_6
    :try_start_0
    new-instance v1, Ljava/io/PrintStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_2

    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    :goto_2
    iput-object v0, p0, Ld5/b;->h:Ljava/io/PrintStream;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Le5/g;
    .locals 13

    iget-object v1, p0, Ld5/b;->i:Le5/k;

    iget-object v2, v1, Le5/k;->b:Ljava/util/Map;

    sget-object v11, Le5/k;->c:Ljava/lang/String;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-nez v3, :cond_0

    iget-object v1, v1, Le5/k;->a:Le5/k$b;

    invoke-interface {v1}, Le5/k$b;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-interface {v2, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le5/g;

    if-eqz v1, :cond_1

    invoke-interface {v1}, La5/d;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, La5/d;->c()Lc5/f;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Le5/a;->f1:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lf5/d;->p1:La5/a;

    sget-object v5, Lf5/d$b;->a:Lf5/d;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Le5/a;->h1:Ljava/lang/String;

    sget-object v7, La5/a;->b1:La5/a;

    const/4 v8, 0x0

    invoke-virtual {v5, v7}, Lf5/d;->u(La5/a;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v5, Le5/a;->r:Lc5/f;

    const-string v9, "The Logger {} was created with the message factory {} and is now requested with a null message factory (defaults to {}), which may create log events with unexpected formatting."

    invoke-interface {v4, v9, v0, v2, v3}, Lc5/f;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/io/Serializable;)Lc5/e;

    move-result-object v9

    invoke-interface {v9}, Lc5/e;->E1()Ljava/lang/Throwable;

    move-result-object v10

    invoke-virtual/range {v5 .. v10}, Le5/a;->H(Ljava/lang/String;La5/a;La5/f;Lc5/e;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    new-instance v12, Ld5/a;

    iget-object v3, p0, Ld5/b;->g:La5/a;

    iget-boolean v4, p0, Ld5/b;->b:Z

    iget-boolean v5, p0, Ld5/b;->c:Z

    iget-boolean v6, p0, Ld5/b;->d:Z

    iget-boolean v7, p0, Ld5/b;->e:Z

    iget-object v8, p0, Ld5/b;->f:Ljava/lang/String;

    iget-object v9, p0, Ld5/b;->a:Lg5/n;

    iget-object v10, p0, Ld5/b;->h:Ljava/io/PrintStream;

    move-object v1, v12

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Ld5/a;-><init>(Ljava/lang/String;La5/a;ZZZZLjava/lang/String;Lg5/n;Ljava/io/PrintStream;)V

    iget-object v1, p0, Ld5/b;->i:Le5/k;

    iget-object v2, v1, Le5/k;->b:Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-nez v3, :cond_2

    iget-object v3, v1, Le5/k;->a:Le5/k$b;

    invoke-interface {v3}, Le5/k$b;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-interface {v2, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, v1, Le5/k;->a:Le5/k$b;

    invoke-interface {v1, v3, p1, v12}, Le5/k$b;->b(Ljava/util/Map;Ljava/lang/String;Ld5/a;)V

    iget-object v0, p0, Ld5/b;->i:Le5/k;

    iget-object v1, v0, Le5/k;->b:Ljava/util/Map;

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_3

    iget-object v0, v0, Le5/k;->a:Le5/k$b;

    invoke-interface {v0}, Le5/k$b;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Le5/g;

    :cond_4
    :goto_0
    return-object v1
.end method
