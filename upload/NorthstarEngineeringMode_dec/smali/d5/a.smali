.class public final Ld5/a;
.super Le5/a;
.source "SourceFile"


# instance fields
.field public final k1:Ljava/text/SimpleDateFormat;

.field public final l1:La5/a;

.field public final m1:Z

.field public final n1:Z

.field public final o1:Ljava/io/PrintStream;

.field public final p1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;La5/a;ZZZZLjava/lang/String;Lg5/n;Ljava/io/PrintStream;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Le5/a;-><init>(Ljava/lang/String;Lc5/k;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "org.apache.logging.log4j.simplelog."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".level"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p8, v1}, Lg5/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p8

    if-nez p8, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, La5/a;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p8

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p8, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p8

    invoke-virtual {v1, p8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p8

    check-cast p8, La5/a;

    if-nez p8, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, p8

    :goto_0
    iput-object p2, p0, Ld5/a;->l1:La5/a;

    if-eqz p4, :cond_3

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-ge p2, p3, :cond_2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ld5/a;->p1:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object p1, p0, Ld5/a;->p1:Ljava/lang/String;

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    iput-object p1, p0, Ld5/a;->p1:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iput-object v0, p0, Ld5/a;->p1:Ljava/lang/String;

    :goto_1
    iput-boolean p5, p0, Ld5/a;->m1:Z

    iput-boolean p6, p0, Ld5/a;->n1:Z

    iput-object p9, p0, Ld5/a;->o1:Ljava/io/PrintStream;

    if-eqz p5, :cond_5

    :try_start_0
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-direct {p1, p7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string/jumbo p2, "yyyy/MM/dd HH:mm:ss:SSS zzz"

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_2
    iput-object p1, p0, Ld5/a;->k1:Ljava/text/SimpleDateFormat;

    goto :goto_3

    :cond_5
    iput-object v0, p0, Ld5/a;->k1:Ljava/text/SimpleDateFormat;

    :goto_3
    return-void
.end method


# virtual methods
.method public final a(La5/a;)Z
    .locals 0

    iget-object p0, p0, Ld5/a;->l1:La5/a;

    iget p0, p0, La5/a;->r:I

    iget p1, p1, La5/a;->r:I

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j(La5/a;)Z
    .locals 0

    iget-object p0, p0, Ld5/a;->l1:La5/a;

    iget p0, p0, La5/a;->r:I

    iget p1, p1, La5/a;->r:I

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final k(La5/a;)Z
    .locals 0

    iget-object p0, p0, Ld5/a;->l1:La5/a;

    iget p0, p0, La5/a;->r:I

    iget p1, p1, La5/a;->r:I

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final m(Ljava/lang/String;La5/a;Lc5/e;Ljava/lang/Throwable;)V
    .locals 4
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Log4j prints stacktraces only to logs, which should be private."
        value = {
            "INFORMATION_EXPOSURE_THROUGH_AN_ERROR_MESSAGE"
        }
    .end annotation

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Ld5/a;->m1:Z

    const/16 v1, 0x20

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v2, p0, Ld5/a;->k1:Ljava/text/SimpleDateFormat;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Ld5/a;->k1:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    iget-object p2, p2, La5/a;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p2, p0, Ld5/a;->p1:Ljava/lang/String;

    sget-object v0, Lg5/z;->a:[Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move p2, v0

    :goto_2
    xor-int/2addr p2, v0

    if-eqz p2, :cond_3

    iget-object p2, p0, Ld5/a;->p1:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-interface {p3}, Lc5/e;->B0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Ld5/a;->n1:Z

    if-eqz p2, :cond_5

    sget-object p2, La5/h;->b:Le5/r;

    invoke-interface {p2}, Le5/r;->a()Ljava/util/Map;

    move-result-object p2

    if-nez p2, :cond_4

    sget-object p2, La5/h;->a:Ljava/util/Map;

    :cond_4
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    invoke-interface {p3}, Lc5/e;->o()[Ljava/lang/Object;

    move-result-object p2

    if-nez p4, :cond_6

    if-eqz p2, :cond_6

    array-length p3, p2

    if-lez p3, :cond_6

    array-length p3, p2

    sub-int/2addr p3, v0

    aget-object p3, p2, p3

    instance-of p3, p3, Ljava/lang/Throwable;

    if-eqz p3, :cond_6

    array-length p3, p2

    sub-int/2addr p3, v0

    aget-object p2, p2, p3

    move-object p4, p2

    check-cast p4, Ljava/lang/Throwable;

    :cond_6
    iget-object p2, p0, Ld5/a;->o1:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz p4, :cond_7

    iget-object p1, p0, Ld5/a;->o1:Ljava/io/PrintStream;

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(C)V

    iget-object p0, p0, Ld5/a;->o1:Ljava/io/PrintStream;

    invoke-virtual {p4, p0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_7
    return-void
.end method

.method public final varargs p(La5/a;)Z
    .locals 0

    iget-object p0, p0, Ld5/a;->l1:La5/a;

    iget p0, p0, La5/a;->r:I

    iget p1, p1, La5/a;->r:I

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final r(La5/a;)Z
    .locals 0

    iget-object p0, p0, Ld5/a;->l1:La5/a;

    iget p0, p0, La5/a;->r:I

    iget p1, p1, La5/a;->r:I

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final t(La5/a;)Z
    .locals 0

    iget-object p0, p0, Ld5/a;->l1:La5/a;

    iget p0, p0, La5/a;->r:I

    iget p1, p1, La5/a;->r:I

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final u(La5/a;)Z
    .locals 0

    iget-object p0, p0, Ld5/a;->l1:La5/a;

    iget p0, p0, La5/a;->r:I

    iget p1, p1, La5/a;->r:I

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final v(La5/a;)Z
    .locals 0

    iget-object p0, p0, Ld5/a;->l1:La5/a;

    iget p0, p0, La5/a;->r:I

    iget p1, p1, La5/a;->r:I

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final w(La5/a;)Z
    .locals 0

    iget-object p0, p0, Ld5/a;->l1:La5/a;

    iget p0, p0, La5/a;->r:I

    iget p1, p1, La5/a;->r:I

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
