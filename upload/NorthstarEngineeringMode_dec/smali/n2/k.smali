.class public final synthetic Ln2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Z:Ljava/lang/String;

.field public final synthetic c:Ln2/l;

.field public final synthetic r:Ljava/io/File;

.field public final synthetic x:Landroid/graphics/Bitmap;

.field public final synthetic y:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ln2/l;Ljava/io/File;Landroid/graphics/Bitmap;Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln2/k;->c:Ln2/l;

    iput-object p2, p0, Ln2/k;->r:Ljava/io/File;

    iput-object p3, p0, Ln2/k;->x:Landroid/graphics/Bitmap;

    iput-object p4, p0, Ln2/k;->y:Landroid/content/Context;

    iput-object p5, p0, Ln2/k;->Z:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Ln2/k;->r:Ljava/io/File;

    iget-object v1, p0, Ln2/k;->x:Landroid/graphics/Bitmap;

    iget-object v2, p0, Ln2/k;->y:Landroid/content/Context;

    iget-object v3, p0, Ln2/k;->Z:Ljava/lang/String;

    iget-object p0, p0, Ln2/k;->c:Ln2/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    new-array v5, v4, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v5}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Ln2/l;->d:Ljava/io/OutputStream;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v1, v5, v6, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-static {}, Ld/f;->B()Landroid/os/Handler;

    move-result-object v0

    new-instance v5, Landroidx/constraintlayout/motion/widget/a;

    const/4 v6, 0x6

    invoke-direct {v5, v6, v2, v3}, Landroidx/constraintlayout/motion/widget/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Ln2/l;->d:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iget-object p0, p0, Ln2/l;->d:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    :try_start_2
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f1201c8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v4}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V

    sput-boolean v4, Ln2/l;->h:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Ln2/l;->d:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iget-object p0, p0, Ln2/l;->d:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_0

    :goto_2
    return-void

    :goto_3
    :try_start_4
    iget-object v2, p0, Ln2/l;->d:Ljava/io/OutputStream;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    iget-object p0, p0, Ln2/l;->d:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    throw v0
.end method
