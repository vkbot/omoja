.class public Lcom/android/managedprovisioning/parser/DeviceAdminIconParser;
.super Ljava/lang/Object;
.source "DeviceAdminIconParser.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFileIcon:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/managedprovisioning/parser/DeviceAdminIconParser;->mContext:Landroid/content/Context;

    .line 38
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/managedprovisioning/parser/DeviceAdminIconParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "provisioning_params_file_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device_admin_icon_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/managedprovisioning/parser/DeviceAdminIconParser;->mFileIcon:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public parse(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/android/managedprovisioning/parser/DeviceAdminIconParser;->mFileIcon:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 52
    iget-object v1, p0, Lcom/android/managedprovisioning/parser/DeviceAdminIconParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/managedprovisioning/parser/DeviceAdminIconParser;->mFileIcon:Ljava/io/File;

    invoke-static {v1, p1, v2}, Lcom/android/managedprovisioning/common/StoreUtils;->copyUriIntoFile(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 53
    iget-object p0, p0, Lcom/android/managedprovisioning/parser/DeviceAdminIconParser;->mFileIcon:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method
