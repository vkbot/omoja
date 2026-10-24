.class public final Ln2/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static g:Ln2/l; = null

.field public static h:Z = false


# instance fields
.field public a:Z

.field public final b:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field public d:Ljava/io/OutputStream;

.field public e:Ljava/io/FileInputStream;

.field public f:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ln2/l;->a:Z

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Ln2/l;->b:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/mega/engineeringmode/EngineeringModeApplication;->b:Lcom/mega/engineeringmode/EngineeringModeApplication;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    new-instance v1, Ln2/l$a;

    invoke-direct {v1, p0}, Ln2/l$a;-><init>(Ln2/l;)V

    invoke-static {v0, v1}, Lb1/a;->s(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageEventListener;)V

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getDirectory()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/storage/dvr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v1, p0, Ln2/l;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static declared-synchronized a()Ln2/l;
    .locals 2

    const-class v0, Ln2/l;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ln2/l;->g:Ln2/l;

    if-nez v1, :cond_0

    new-instance v1, Ln2/l;

    invoke-direct {v1}, Ln2/l;-><init>()V

    sput-object v1, Ln2/l;->g:Ln2/l;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Ln2/l;->g:Ln2/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method
