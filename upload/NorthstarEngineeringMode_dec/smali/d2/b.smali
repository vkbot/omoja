.class public final Ld2/b;
.super Landroid/os/storage/StorageEventListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/upgrade/a;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/upgrade/a;)V
    .locals 0

    iput-object p1, p0, Ld2/b;->a:Lcom/mega/engineeringmode/function/upgrade/a;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "usbChange() description=="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ID=="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", path=="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", state=="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "TBoxUpgradeDialog"

    invoke-static {p2, p3, v0}, Landroidx/activity/result/a;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 p2, 0x2

    if-eq p3, p2, :cond_0

    const/4 p2, 0x3

    if-ne p3, p2, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ld/f;->x()Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Ls0/h;

    const/16 v0, 0x9

    invoke-direct {p3, v0, p0, p1}, Ls0/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
