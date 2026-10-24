.class public final Ln/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln/j$b;
    }
.end annotation


# instance fields
.field public final a:Lf0/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf0/f<",
            "Li/f;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lg0/a$c;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf0/f;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Lf0/f;-><init>(J)V

    iput-object v0, p0, Ln/j;->a:Lf0/f;

    new-instance v0, Ln/j$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0xa

    invoke-static {v1, v0}, Lg0/a;->a(ILg0/a$b;)Lg0/a$c;

    move-result-object v0

    iput-object v0, p0, Ln/j;->b:Lg0/a$c;

    return-void
.end method


# virtual methods
.method public final a(Li/f;)Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Ln/j;->a:Lf0/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ln/j;->a:Lf0/f;

    invoke-virtual {v1, p1}, Lf0/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v1, :cond_1

    iget-object v0, p0, Ln/j;->b:Lg0/a$c;

    invoke-virtual {v0}, Lg0/a$c;->acquire()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lf0/i;->b(Ljava/lang/Object;)V

    check-cast v0, Ln/j$b;

    :try_start_1
    iget-object v1, v0, Ln/j$b;->c:Ljava/security/MessageDigest;

    invoke-interface {p1, v1}, Li/f;->a(Ljava/security/MessageDigest;)V

    iget-object v1, v0, Ln/j$b;->c:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    sget-object v2, Lf0/j;->b:[C

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x0

    :goto_0
    :try_start_2
    array-length v4, v1

    if-ge v3, v4, :cond_0

    aget-byte v4, v1, v3

    and-int/lit16 v5, v4, 0xff

    mul-int/lit8 v6, v3, 0x2

    ushr-int/lit8 v5, v5, 0x4

    sget-object v7, Lf0/j;->a:[C

    aget-char v5, v7, v5

    aput-char v5, v2, v6

    add-int/lit8 v6, v6, 0x1

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v7, v4

    aput-char v4, v2, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, p0, Ln/j;->b:Lg0/a$c;

    invoke-virtual {v2, v0}, Lg0/a$c;->release(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    iget-object p0, p0, Ln/j;->b:Lg0/a$c;

    invoke-virtual {p0, v0}, Lg0/a$c;->release(Ljava/lang/Object;)Z

    throw p1

    :cond_1
    :goto_1
    iget-object v2, p0, Ln/j;->a:Lf0/f;

    monitor-enter v2

    :try_start_5
    iget-object p0, p0, Ln/j;->a:Lf0/f;

    invoke-virtual {p0, p1, v1}, Lf0/f;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    return-object v1

    :catchall_2
    move-exception p0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0
.end method
