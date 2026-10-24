.class public final Ls/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ljava/io/File;

.field public static volatile f:Ls/l;


# instance fields
.field public final a:Z

.field public final b:I

.field public c:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public d:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/fd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Ls/l;->e:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls/l;->d:Z

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    iput-boolean v0, p0, Ls/l;->a:Z

    const/16 v0, 0x4e20

    iput v0, p0, Ls/l;->b:I

    return-void
.end method

.method public static a()Ls/l;
    .locals 2

    sget-object v0, Ls/l;->f:Ls/l;

    if-nez v0, :cond_1

    const-class v0, Ls/l;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ls/l;->f:Ls/l;

    if-nez v1, :cond_0

    new-instance v1, Ls/l;

    invoke-direct {v1}, Ls/l;-><init>()V

    sput-object v1, Ls/l;->f:Ls/l;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Ls/l;->f:Ls/l;

    return-object v0
.end method


# virtual methods
.method public final b(IIZZ)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    iget-boolean p3, p0, Ls/l;->a:Z

    if-eqz p3, :cond_3

    if-eqz p4, :cond_0

    goto :goto_3

    :cond_0
    if-ltz p1, :cond_3

    if-ltz p2, :cond_3

    const-string p1, "Excluding HARDWARE bitmap config because we\'re over the file descriptor limit, file descriptors "

    monitor-enter p0

    :try_start_0
    iget p2, p0, Ls/l;->c:I

    const/4 p3, 0x1

    add-int/2addr p2, p3

    iput p2, p0, Ls/l;->c:I

    const/16 p4, 0x32

    if-lt p2, p4, :cond_2

    iput v0, p0, Ls/l;->c:I

    sget-object p2, Ls/l;->e:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p2

    array-length p2, p2

    iget p4, p0, Ls/l;->b:I

    if-ge p2, p4, :cond_1

    move p4, p3

    goto :goto_0

    :cond_1
    move p4, v0

    :goto_0
    iput-boolean p4, p0, Ls/l;->d:Z

    if-nez p4, :cond_2

    const-string p4, "Downsampler"

    const/4 v1, 0x5

    invoke-static {p4, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p4

    if-eqz p4, :cond_2

    const-string p4, "Downsampler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", limit "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Ls/l;->b:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    iget-boolean p1, p0, Ls/l;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz p1, :cond_3

    move v0, p3

    goto :goto_3

    :goto_2
    monitor-exit p0

    throw p1

    :cond_3
    :goto_3
    return v0
.end method
