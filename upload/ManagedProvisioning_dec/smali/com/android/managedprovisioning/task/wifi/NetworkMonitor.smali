.class public Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/managedprovisioning/task/wifi/NetworkMonitor$NetworkConnectedCallback;
    }
.end annotation


# static fields
.field static final FILTER:Landroid/content/IntentFilter;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/managedprovisioning/task/wifi/NetworkMonitor$NetworkConnectedCallback;

.field private final mContext:Landroid/content/Context;

.field private final mUtils:Lcom/android/managedprovisioning/common/Utils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;->FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;->FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 67
    new-instance v0, Lcom/android/managedprovisioning/common/Utils;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/Utils;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/common/Utils;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/common/Utils;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;->mCallback:Lcom/android/managedprovisioning/task/wifi/NetworkMonitor$NetworkConnectedCallback;

    .line 97
    new-instance v0, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor$1;-><init>(Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;)V

    iput-object v0, p0, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;->mContext:Landroid/content/Context;

    .line 73
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/common/Utils;

    iput-object p1, p0, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    return-void
.end method

.method static synthetic access$000(Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;)Lcom/android/managedprovisioning/common/Utils;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;)Lcom/android/managedprovisioning/task/wifi/NetworkMonitor$NetworkConnectedCallback;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;->mCallback:Lcom/android/managedprovisioning/task/wifi/NetworkMonitor$NetworkConnectedCallback;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized startListening(Lcom/android/managedprovisioning/task/wifi/NetworkMonitor$NetworkConnectedCallback;)V
    .locals 2

    monitor-enter p0

    .line 81
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor$NetworkConnectedCallback;

    iput-object p1, p0, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;->mCallback:Lcom/android/managedprovisioning/task/wifi/NetworkMonitor$NetworkConnectedCallback;

    .line 82
    iget-object p1, p0, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;->FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopListening()V
    .locals 2

    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;->mCallback:Lcom/android/managedprovisioning/task/wifi/NetworkMonitor$NetworkConnectedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 90
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 93
    :try_start_1
    iput-object v0, p0, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;->mCallback:Lcom/android/managedprovisioning/task/wifi/NetworkMonitor$NetworkConnectedCallback;

    .line 94
    iget-object v0, p0, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
