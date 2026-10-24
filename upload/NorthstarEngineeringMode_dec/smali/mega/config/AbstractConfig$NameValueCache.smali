.class final Lmega/config/AbstractConfig$NameValueCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/config/AbstractConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NameValueCache"
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "NameValueCache"


# instance fields
.field private final mCallGetCommand:Ljava/lang/String;

.field private final mCallSetCommand:Ljava/lang/String;

.field private final mExtras:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mGenerationTracker:Lmega/config/GenerationTracker;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mProviderHolder:Lmega/config/AbstractConfig$ContentProviderHolder;

.field private final mUri:Landroid/net/Uri;

.field private final mValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lmega/config/AbstractConfig$ContentProviderHolder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmega/config/AbstractConfig$NameValueCache;->mValues:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmega/config/AbstractConfig$NameValueCache;->mExtras:Ljava/util/HashMap;

    iput-object p1, p0, Lmega/config/AbstractConfig$NameValueCache;->mUri:Landroid/net/Uri;

    iput-object p2, p0, Lmega/config/AbstractConfig$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    iput-object p3, p0, Lmega/config/AbstractConfig$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    iput-object p4, p0, Lmega/config/AbstractConfig$NameValueCache;->mProviderHolder:Lmega/config/AbstractConfig$ContentProviderHolder;

    return-void
.end method

.method public static synthetic a(Lmega/config/AbstractConfig$NameValueCache;)V
    .locals 0

    invoke-direct {p0}, Lmega/config/AbstractConfig$NameValueCache;->lambda$handleGenerationTracker$0()V

    return-void
.end method

.method private callGetMethod(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lmega/config/AbstractConfig$NameValueCache;->mProviderHolder:Lmega/config/AbstractConfig$ContentProviderHolder;

    invoke-virtual {v1, p1}, Lmega/config/AbstractConfig$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/ContentProviderClient;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v1, p0, Lmega/config/AbstractConfig$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    if-nez v1, :cond_0

    sget-object p1, Lmega/config/AbstractConfig$NameValueCache;->TAG:Ljava/lang/String;

    const-string p2, "Can\'t get key "

    const-string v1, " from "

    invoke-static {p2, p3, v1}, Landroidx/activity/result/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lmega/config/AbstractConfig$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": callGetCommand is null"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    monitor-enter p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v2, p0, Lmega/config/AbstractConfig$NameValueCache;->mGenerationTracker:Lmega/config/GenerationTracker;

    if-nez v2, :cond_1

    const-string v2, "_track_generation"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v3, "_domain"

    invoke-virtual {v1, v3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lmega/config/AbstractConfig$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lmega/config/AbstractConfig$NameValueCache;->handleGenerationTracker(Landroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    return-object p1

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_3
    sget-object p2, Lmega/config/AbstractConfig$NameValueCache;->TAG:Ljava/lang/String;

    const-string v1, "Can\'t get key "

    const-string v2, " from "

    invoke-static {v1, p3, v2}, Landroidx/activity/result/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p0, p0, Lmega/config/AbstractConfig$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :catch_1
    move-exception p1

    sget-object p2, Lmega/config/AbstractConfig$NameValueCache;->TAG:Ljava/lang/String;

    const-string v1, "Can\'t get key "

    const-string v2, " from "

    invoke-static {v1, p3, v2}, Landroidx/activity/result/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p0, p0, Lmega/config/AbstractConfig$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private declared-synchronized ensureCacheValid()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmega/config/AbstractConfig$NameValueCache;->mGenerationTracker:Lmega/config/GenerationTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmega/config/GenerationTracker;->isGenerationChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmega/config/AbstractConfig$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lmega/config/AbstractConfig$NameValueCache;->mExtras:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleGenerationTracker(Landroid/os/Bundle;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "_track_generation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/util/MemoryIntArray;

    const-string v1, "_generation_index"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v0, :cond_1

    if-ltz v1, :cond_1

    const-string v2, "_generation"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object v2, p0, Lmega/config/AbstractConfig$NameValueCache;->mGenerationTracker:Lmega/config/GenerationTracker;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lmega/config/GenerationTracker;->destroy()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v2, Lmega/config/GenerationTracker;

    new-instance v3, Lmega/config/a;

    invoke-direct {v3, p0}, Lmega/config/a;-><init>(Lmega/config/AbstractConfig$NameValueCache;)V

    invoke-direct {v2, v0, v1, p1, v3}, Lmega/config/GenerationTracker;-><init>(Landroid/util/MemoryIntArray;IILjava/lang/Runnable;)V

    iput-object v2, p0, Lmega/config/AbstractConfig$NameValueCache;->mGenerationTracker:Lmega/config/GenerationTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private synthetic lambda$handleGenerationTracker$0()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lmega/config/AbstractConfig$NameValueCache;->TAG:Ljava/lang/String;

    const-string v1, "Error accessing generation tracker - removing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmega/config/AbstractConfig$NameValueCache;->mGenerationTracker:Lmega/config/GenerationTracker;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lmega/config/AbstractConfig$NameValueCache;->mGenerationTracker:Lmega/config/GenerationTracker;

    invoke-virtual {v0}, Lmega/config/GenerationTracker;->destroy()V

    iget-object v0, p0, Lmega/config/AbstractConfig$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lmega/config/AbstractConfig$NameValueCache;->mExtras:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public clearGenerationTrackerForTest()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmega/config/AbstractConfig$NameValueCache;->mGenerationTracker:Lmega/config/GenerationTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmega/config/GenerationTracker;->destroy()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lmega/config/AbstractConfig$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lmega/config/AbstractConfig$NameValueCache;->mExtras:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmega/config/AbstractConfig$NameValueCache;->mGenerationTracker:Lmega/config/GenerationTracker;

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getExtra(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    invoke-direct {p0}, Lmega/config/AbstractConfig$NameValueCache;->ensureCacheValid()V

    iget-object v0, p0, Lmega/config/AbstractConfig$NameValueCache;->mExtras:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmega/config/AbstractConfig$NameValueCache;->mExtras:Ljava/util/HashMap;

    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lmega/config/AbstractConfig$NameValueCache;->callGetMethod(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string p2, "extra"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lmega/config/AbstractConfig$NameValueCache;->mExtras:Ljava/util/HashMap;

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lmega/config/AbstractConfig$NameValueCache;->ensureCacheValid()V

    iget-object v0, p0, Lmega/config/AbstractConfig$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmega/config/AbstractConfig$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lmega/config/AbstractConfig$NameValueCache;->callGetMethod(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string/jumbo p2, "value"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lmega/config/AbstractConfig$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "_domain"

    invoke-virtual {v0, p4, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lmega/config/AbstractConfig$NameValueCache;->mProviderHolder:Lmega/config/AbstractConfig$ContentProviderHolder;

    invoke-virtual {p2, p1}, Lmega/config/AbstractConfig$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/ContentProviderClient;

    move-result-object p1

    iget-object p2, p0, Lmega/config/AbstractConfig$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    sget-object p2, Lmega/config/AbstractConfig$NameValueCache;->TAG:Ljava/lang/String;

    const-string p4, "Can\'t set key "

    const-string v0, " in "

    invoke-static {p4, p3, v0}, Landroidx/activity/result/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p0, p0, Lmega/config/AbstractConfig$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method
