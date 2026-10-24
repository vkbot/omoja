.class Lcom/android/managedprovisioning/task/DownloadPackageTask$1;
.super Landroid/content/BroadcastReceiver;
.source "DownloadPackageTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/managedprovisioning/task/DownloadPackageTask;->createDownloadReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/managedprovisioning/task/DownloadPackageTask;


# direct methods
.method constructor <init>(Lcom/android/managedprovisioning/task/DownloadPackageTask;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/android/managedprovisioning/task/DownloadPackageTask$1;->this$0:Lcom/android/managedprovisioning/task/DownloadPackageTask;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 170
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 171
    new-instance p1, Landroid/app/DownloadManager$Query;

    invoke-direct {p1}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 p2, 0x1

    new-array p2, p2, [J

    const/4 v0, 0x0

    .line 172
    iget-object v1, p0, Lcom/android/managedprovisioning/task/DownloadPackageTask$1;->this$0:Lcom/android/managedprovisioning/task/DownloadPackageTask;

    invoke-static {v1}, Lcom/android/managedprovisioning/task/DownloadPackageTask;->access$000(Lcom/android/managedprovisioning/task/DownloadPackageTask;)J

    move-result-wide v1

    aput-wide v1, p2, v0

    invoke-virtual {p1, p2}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 173
    iget-object p2, p0, Lcom/android/managedprovisioning/task/DownloadPackageTask$1;->this$0:Lcom/android/managedprovisioning/task/DownloadPackageTask;

    invoke-static {p2}, Lcom/android/managedprovisioning/task/DownloadPackageTask;->access$100(Lcom/android/managedprovisioning/task/DownloadPackageTask;)Landroid/app/DownloadManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p1

    .line 174
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "status"

    .line 175
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x8

    .line 176
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 177
    iget-object p2, p0, Lcom/android/managedprovisioning/task/DownloadPackageTask$1;->this$0:Lcom/android/managedprovisioning/task/DownloadPackageTask;

    const-string v0, "local_filename"

    .line 178
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 177
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/managedprovisioning/task/DownloadPackageTask;->access$202(Lcom/android/managedprovisioning/task/DownloadPackageTask;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 180
    iget-object p0, p0, Lcom/android/managedprovisioning/task/DownloadPackageTask$1;->this$0:Lcom/android/managedprovisioning/task/DownloadPackageTask;

    invoke-static {p0}, Lcom/android/managedprovisioning/task/DownloadPackageTask;->access$300(Lcom/android/managedprovisioning/task/DownloadPackageTask;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    .line 181
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-ne v0, p2, :cond_1

    const-string p2, "reason"

    .line 183
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 184
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 185
    iget-object p0, p0, Lcom/android/managedprovisioning/task/DownloadPackageTask$1;->this$0:Lcom/android/managedprovisioning/task/DownloadPackageTask;

    invoke-static {p0, p2}, Lcom/android/managedprovisioning/task/DownloadPackageTask;->access$400(Lcom/android/managedprovisioning/task/DownloadPackageTask;I)V

    :cond_1
    :goto_0
    return-void
.end method
