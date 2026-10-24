.class public final Landroid/os/NativeHandle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private mFds:[Ljava/io/FileDescriptor;

.field private mInts:[I

.field private mOwn:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/io/FileDescriptor;

    new-array v2, v0, [I

    .line 1
    invoke-direct {p0, v1, v2, v0}, Landroid/os/NativeHandle;-><init>([Ljava/io/FileDescriptor;[IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;Z)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-array p1, v1, [I

    .line 2
    invoke-direct {p0, v0, p1, p2}, Landroid/os/NativeHandle;-><init>([Ljava/io/FileDescriptor;[IZ)V

    return-void
.end method

.method private constructor <init>([I[IZ)V
    .locals 0

    .line 3
    invoke-static {p1}, Landroid/os/NativeHandle;->createFileDescriptorArray([I)[Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/os/NativeHandle;-><init>([Ljava/io/FileDescriptor;[IZ)V

    return-void
.end method

.method public constructor <init>([Ljava/io/FileDescriptor;[IZ)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/os/NativeHandle;->mOwn:Z

    .line 6
    invoke-virtual {p1}, [Ljava/io/FileDescriptor;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/io/FileDescriptor;

    iput-object p1, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    .line 7
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Landroid/os/NativeHandle;->mInts:[I

    .line 8
    iput-boolean p3, p0, Landroid/os/NativeHandle;->mOwn:Z

    return-void
.end method

.method private checkOpen()V
    .locals 1

    iget-object p0, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "NativeHandle is invalidated after close."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createFileDescriptorArray([I)[Ljava/io/FileDescriptor;
    .locals 4

    array-length v0, p0

    new-array v0, v0, [Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    aget v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/io/FileDescriptor;->setInt$(I)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getFdsAsIntArray()[I
    .locals 4

    invoke-direct {p0}, Landroid/os/NativeHandle;->checkOpen()V

    iget-object v0, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/NativeHandle;->checkOpen()V

    iget-boolean v0, p0, Landroid/os/NativeHandle;->mOwn:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    :cond_0
    iput-boolean v0, p0, Landroid/os/NativeHandle;->mOwn:Z

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    iput-object v0, p0, Landroid/os/NativeHandle;->mInts:[I

    return-void
.end method

.method public dup()Landroid/os/NativeHandle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    array-length v0, v0

    new-array v0, v0, [Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v3, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/io/FileDescriptor;

    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    iget-object v4, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    aget-object v4, v4, v2

    sget v5, Landroid/system/OsConstants;->F_DUPFD_CLOEXEC:I

    invoke-static {v4, v5, v1}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/FileDescriptor;->setInt$(I)V

    aput-object v3, v0, v2
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    :cond_0
    new-instance v1, Landroid/os/NativeHandle;

    iget-object p0, p0, Landroid/os/NativeHandle;->mInts:[I

    const/4 v2, 0x1

    invoke-direct {v1, v0, p0, v2}, Landroid/os/NativeHandle;-><init>([Ljava/io/FileDescriptor;[IZ)V

    return-object v1
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    invoke-direct {p0}, Landroid/os/NativeHandle;->checkOpen()V

    invoke-virtual {p0}, Landroid/os/NativeHandle;->hasSingleFileDescriptor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "NativeHandle is not single file descriptor. Contents must be retreived through getFileDescriptors and getInts."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFileDescriptors()[Ljava/io/FileDescriptor;
    .locals 0

    invoke-direct {p0}, Landroid/os/NativeHandle;->checkOpen()V

    iget-object p0, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public getInts()[I
    .locals 0

    invoke-direct {p0}, Landroid/os/NativeHandle;->checkOpen()V

    iget-object p0, p0, Landroid/os/NativeHandle;->mInts:[I

    return-object p0
.end method

.method public hasSingleFileDescriptor()Z
    .locals 2

    invoke-direct {p0}, Landroid/os/NativeHandle;->checkOpen()V

    iget-object v0, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroid/os/NativeHandle;->mInts:[I

    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
