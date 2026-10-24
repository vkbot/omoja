.class public final Lcom/github/mjdev/libaums/fs/UsbFileStreamFactory;
.super Ljava/lang/Object;
.source "UsbFileStreamFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/fs/UsbFileStreamFactory;",
        "",
        "()V",
        "createBufferedInputStream",
        "Ljava/io/BufferedInputStream;",
        "file",
        "Lcom/github/mjdev/libaums/fs/UsbFile;",
        "fs",
        "Lcom/github/mjdev/libaums/fs/FileSystem;",
        "createBufferedOutputStream",
        "Ljava/io/BufferedOutputStream;",
        "libaums_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/github/mjdev/libaums/fs/UsbFileStreamFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/github/mjdev/libaums/fs/UsbFileStreamFactory;

    invoke-direct {v0}, Lcom/github/mjdev/libaums/fs/UsbFileStreamFactory;-><init>()V

    sput-object v0, Lcom/github/mjdev/libaums/fs/UsbFileStreamFactory;->INSTANCE:Lcom/github/mjdev/libaums/fs/UsbFileStreamFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createBufferedInputStream(Lcom/github/mjdev/libaums/fs/UsbFile;Lcom/github/mjdev/libaums/fs/FileSystem;)Ljava/io/BufferedInputStream;
    .locals 3
    .param p0, "file"    # Lcom/github/mjdev/libaums/fs/UsbFile;
    .param p1, "fs"    # Lcom/github/mjdev/libaums/fs/FileSystem;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "file"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Lcom/github/mjdev/libaums/fs/UsbFileInputStream;

    invoke-direct {v1, p0}, Lcom/github/mjdev/libaums/fs/UsbFileInputStream;-><init>(Lcom/github/mjdev/libaums/fs/UsbFile;)V

    check-cast v1, Ljava/io/InputStream;

    invoke-interface {p1}, Lcom/github/mjdev/libaums/fs/FileSystem;->getChunkSize()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public static final createBufferedOutputStream(Lcom/github/mjdev/libaums/fs/UsbFile;Lcom/github/mjdev/libaums/fs/FileSystem;)Ljava/io/BufferedOutputStream;
    .locals 5
    .param p0, "file"    # Lcom/github/mjdev/libaums/fs/UsbFile;
    .param p1, "fs"    # Lcom/github/mjdev/libaums/fs/FileSystem;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "file"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Lcom/github/mjdev/libaums/fs/UsbFileOutputStream;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/github/mjdev/libaums/fs/UsbFileOutputStream;-><init>(Lcom/github/mjdev/libaums/fs/UsbFile;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Ljava/io/OutputStream;

    invoke-interface {p1}, Lcom/github/mjdev/libaums/fs/FileSystem;->getChunkSize()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method
