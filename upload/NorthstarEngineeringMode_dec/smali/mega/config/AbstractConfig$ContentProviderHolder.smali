.class public final Lmega/config/AbstractConfig$ContentProviderHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/config/AbstractConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ContentProviderHolder"
.end annotation


# instance fields
.field private mContentProvider:Landroid/content/ContentProviderClient;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mUri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final synthetic this$0:Lmega/config/AbstractConfig;


# direct methods
.method public constructor <init>(Lmega/config/AbstractConfig;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lmega/config/AbstractConfig$ContentProviderHolder;->this$0:Lmega/config/AbstractConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmega/config/AbstractConfig$ContentProviderHolder;->mLock:Ljava/lang/Object;

    iput-object p2, p0, Lmega/config/AbstractConfig$ContentProviderHolder;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public clearProviderForTest()V
    .locals 2

    iget-object v0, p0, Lmega/config/AbstractConfig$ContentProviderHolder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lmega/config/AbstractConfig$ContentProviderHolder;->mContentProvider:Landroid/content/ContentProviderClient;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getProvider(Landroid/content/ContentResolver;)Landroid/content/ContentProviderClient;
    .locals 3

    const-string v0, "cannot get ContentProviderClient from : "

    iget-object v1, p0, Lmega/config/AbstractConfig$ContentProviderHolder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lmega/config/AbstractConfig$ContentProviderHolder;->mContentProvider:Landroid/content/ContentProviderClient;

    if-nez v2, :cond_1

    iget-object v2, p0, Lmega/config/AbstractConfig$ContentProviderHolder;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1

    iput-object p1, p0, Lmega/config/AbstractConfig$ContentProviderHolder;->mContentProvider:Landroid/content/ContentProviderClient;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lmega/config/AbstractConfig$ContentProviderHolder;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lmega/config/AbstractConfig$ContentProviderHolder;->mContentProvider:Landroid/content/ContentProviderClient;

    monitor-exit v1

    return-object p0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
