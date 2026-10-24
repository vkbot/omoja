.class public Lcom/android/server/pm/AppsFilter;
.super Ljava/lang/Object;
.source "AppsFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/AppsFilter$ToString;,
        Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;,
        Lcom/android/server/pm/AppsFilter$FeatureConfig;,
        Lcom/android/server/pm/AppsFilter$StateProvider;
    }
.end annotation


# static fields
.field private static final DEBUG_ALLOW_ALL:Z = false

.field private static final DEBUG_LOGGING:Z = false

.field private static final TAG:Ljava/lang/String; = "AppsFilter"


# instance fields
.field private final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field private final mCacheLock:Ljava/lang/Object;

.field private final mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

.field private final mForceQueryable:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mForceQueryableByDevicePackageNames:[Ljava/lang/String;

.field private final mImplicitlyQueryable:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

.field private mProtectedBroadcasts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueriesViaComponent:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mQueriesViaComponentRequireRecompute:Z

.field private final mQueriesViaPackage:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mShouldFilterCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

.field private final mSystemAppsQueryable:Z

.field private mSystemSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;


# direct methods
.method constructor <init>(Lcom/android/server/pm/AppsFilter$StateProvider;Lcom/android/server/pm/AppsFilter$FeatureConfig;[Ljava/lang/String;ZLcom/android/server/om/OverlayReferenceMapper$Provider;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "stateProvider"    # Lcom/android/server/pm/AppsFilter$StateProvider;
    .param p2, "featureConfig"    # Lcom/android/server/pm/AppsFilter$FeatureConfig;
    .param p3, "forceQueryableWhitelist"    # [Ljava/lang/String;
    .param p4, "systemAppsQueryable"    # Z
    .param p5, "overlayProvider"    # Lcom/android/server/om/OverlayReferenceMapper$Provider;
    .param p6, "backgroundExecutor"    # Ljava/util/concurrent/Executor;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    .line 95
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    .line 101
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    .line 121
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    .line 137
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    .line 139
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    .line 158
    iput-object p2, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    .line 159
    iput-object p3, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryableByDevicePackageNames:[Ljava/lang/String;

    .line 160
    iput-boolean p4, p0, Lcom/android/server/pm/AppsFilter;->mSystemAppsQueryable:Z

    .line 161
    new-instance v0, Lcom/android/server/om/OverlayReferenceMapper;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p5}, Lcom/android/server/om/OverlayReferenceMapper;-><init>(ZLcom/android/server/om/OverlayReferenceMapper$Provider;)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    .line 163
    iput-object p1, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    .line 164
    iput-object p6, p0, Lcom/android/server/pm/AppsFilter;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/AppsFilter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/AppsFilter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/pm/AppsFilter;->updateShouldFilterCacheForPackage(Ljava/lang/String;)V

    return-void
.end method

.method private addPackageInternal(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;)V
    .locals 9
    .param p1, "newPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .line 545
    .local p2, "existingSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    const-string v1, "android"

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mSystemSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 550
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 551
    .local v1, "setting":Lcom/android/server/pm/PackageSetting;
    iget-object v2, p0, Lcom/android/server/pm/AppsFilter;->mSystemSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-static {v2, v1}, Lcom/android/server/pm/AppsFilter;->isSystemSigned(Landroid/content/pm/PackageParser$SigningDetails;Lcom/android/server/pm/PackageSetting;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 552
    iget-object v2, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v3, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 554
    .end local v1    # "setting":Lcom/android/server/pm/PackageSetting;
    :cond_0
    goto :goto_0

    .line 557
    :cond_1
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 558
    .local v0, "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v0, :cond_2

    .line 560
    return-void

    .line 563
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 564
    iput-boolean v2, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    .line 567
    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v3, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 568
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_5

    iget-boolean v1, p1, Lcom/android/server/pm/PackageSetting;->forceQueryableOverride:Z

    if-nez v1, :cond_5

    .line 571
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/pm/AppsFilter;->mSystemAppsQueryable:Z

    if-nez v1, :cond_5

    .line 572
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isForceQueryable()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryableByDevicePackageNames:[Ljava/lang/String;

    .line 574
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 573
    invoke-static {v1, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    :goto_1
    move v1, v2

    .line 575
    .local v1, "newIsForceQueryable":Z
    :goto_2
    if-nez v1, :cond_6

    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mSystemSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    if-eqz v4, :cond_7

    .line 577
    invoke-static {v4, p1}, Lcom/android/server/pm/AppsFilter;->isSystemSigned(Landroid/content/pm/PackageParser$SigningDetails;Lcom/android/server/pm/PackageSetting;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 578
    :cond_6
    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v5, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 581
    :cond_7
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "i":I
    :goto_3
    if-ltz v4, :cond_11

    .line 582
    invoke-virtual {p2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 583
    .local v2, "existingSetting":Lcom/android/server/pm/PackageSetting;
    iget v5, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v6, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-eq v5, v6, :cond_10

    iget-object v5, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-nez v5, :cond_8

    .line 584
    goto/16 :goto_4

    .line 586
    :cond_8
    iget-object v5, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 588
    .local v5, "existingPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v1, :cond_b

    .line 589
    iget-boolean v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    invoke-static {v5, v0, v6}, Lcom/android/server/pm/AppsFilter;->canQueryViaComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Set;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 591
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    iget v7, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v8, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 593
    :cond_9
    invoke-static {v5, v0}, Lcom/android/server/pm/AppsFilter;->canQueryViaPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 594
    invoke-static {v2, v0}, Lcom/android/server/pm/AppsFilter;->canQueryAsInstaller(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 595
    :cond_a
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    iget v7, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v8, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 599
    :cond_b
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v7, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 600
    iget-boolean v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    invoke-static {v0, v5, v6}, Lcom/android/server/pm/AppsFilter;->canQueryViaComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Set;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 602
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    iget v7, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v8, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 604
    :cond_c
    invoke-static {v0, v5}, Lcom/android/server/pm/AppsFilter;->canQueryViaPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 605
    invoke-static {p1, v5}, Lcom/android/server/pm/AppsFilter;->canQueryAsInstaller(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 606
    :cond_d
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    iget v7, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v8, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 610
    :cond_e
    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v6, :cond_10

    iget-object v6, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v6, :cond_10

    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget-object v7, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 611
    invoke-static {v6, v7}, Lcom/android/server/pm/AppsFilter;->pkgInstruments(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-nez v6, :cond_f

    iget-object v6, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget-object v7, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 612
    invoke-static {v6, v7}, Lcom/android/server/pm/AppsFilter;->pkgInstruments(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 613
    :cond_f
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    iget v7, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v8, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 614
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    iget v7, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v8, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 581
    .end local v2    # "existingSetting":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "existingPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_10
    :goto_4
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_3

    .line 618
    .end local v4    # "i":I
    :cond_11
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 619
    .local v2, "existingSize":I
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 620
    .local v4, "existingPkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_5
    if-ge v5, v2, :cond_13

    .line 621
    invoke-virtual {p2, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 622
    .local v6, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    iget-object v7, v6, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v7, :cond_12

    .line 623
    iget-object v7, v6, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget-object v8, v6, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-virtual {v4, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    .end local v6    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 626
    .end local v5    # "index":I
    :cond_13
    iget-object v5, p0, Lcom/android/server/pm/AppsFilter;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-virtual {v5, v6, v4}, Lcom/android/server/om/OverlayReferenceMapper;->addPkg(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Map;)V

    .line 627
    iget-object v5, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v5, p1, v3}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->updatePackageState(Lcom/android/server/pm/PackageSetting;Z)V

    .line 628
    return-void
.end method

.method private static canQueryAsInstaller(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 4
    .param p0, "querying"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "potentialTarget"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 396
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 397
    .local v0, "installSource":Lcom/android/server/pm/InstallSource;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 398
    return v2

    .line 400
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/pm/InstallSource;->isInitiatingPackageUninstalled:Z

    if-nez v1, :cond_1

    .line 401
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    return v2

    .line 404
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static canQueryViaComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Set;)Z
    .locals 4
    .param p0, "querying"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "potentialTarget"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 374
    .local p2, "protectedBroadcasts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 375
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 376
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v2, p1, p2}, Lcom/android/server/pm/AppsFilter;->matchesPackage(Landroid/content/Intent;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 377
    return v1

    .line 379
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    goto :goto_0

    .line 381
    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesProviders()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 382
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesProviders()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/pm/AppsFilter;->matchesProviders(Ljava/util/Set;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 383
    return v1

    .line 385
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static canQueryViaPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 2
    .param p0, "querying"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "potentialTarget"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 390
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 390
    :goto_0
    return v0
.end method

.method private collectProtectedBroadcasts(Landroid/util/ArrayMap;Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 5
    .param p2, "excludePackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 782
    .local p1, "existingSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 783
    .local v0, "ret":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 784
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 785
    .local v2, "setting":Lcom/android/server/pm/PackageSetting;
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 786
    goto :goto_1

    .line 788
    :cond_0
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object v3

    .line 789
    .local v3, "protectedBroadcasts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 790
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 783
    .end local v2    # "setting":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "protectedBroadcasts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 793
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static create(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/PackageManagerService$Injector;)Lcom/android/server/pm/AppsFilter;
    .locals 14
    .param p0, "pms"    # Landroid/content/pm/PackageManagerInternal;
    .param p1, "injector"    # Lcom/android/server/pm/PackageManagerService$Injector;

    .line 334
    nop

    .line 335
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 336
    const v1, 0x111009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 337
    .local v0, "forceSystemAppsQueryable":Z
    new-instance v1, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;-><init>(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/AppsFilter$1;)V

    .line 339
    .local v1, "featureConfig":Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;
    if-eqz v0, :cond_0

    .line 341
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    move-object v9, v2

    .local v2, "forcedQueryablePackageNames":[Ljava/lang/String;
    goto :goto_1

    .line 343
    .end local v2    # "forcedQueryablePackageNames":[Ljava/lang/String;
    :cond_0
    nop

    .line 344
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070054

    .line 345
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 346
    .restart local v2    # "forcedQueryablePackageNames":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 347
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 346
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v9, v2

    .line 350
    .end local v2    # "forcedQueryablePackageNames":[Ljava/lang/String;
    .end local v3    # "i":I
    .local v9, "forcedQueryablePackageNames":[Ljava/lang/String;
    :goto_1
    new-instance v10, Lcom/android/server/pm/-$$Lambda$AppsFilter$j5cCE_B_k1kV7DMXjxSek18KSPQ;

    .local v10, "stateProvider":Lcom/android/server/pm/AppsFilter$StateProvider;
    invoke-direct {v10, p1}, Lcom/android/server/pm/-$$Lambda$AppsFilter$j5cCE_B_k1kV7DMXjxSek18KSPQ;-><init>(Lcom/android/server/pm/PackageManagerService$Injector;)V

    .line 356
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "appsFilter"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object v11, v2

    .line 357
    .local v11, "appsFilterThread":Landroid/os/HandlerThread;
    invoke-virtual {v11}, Landroid/os/HandlerThread;->start()V

    .line 358
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v12, v2

    .line 359
    .local v12, "appsFilterHandler":Landroid/os/Handler;
    new-instance v8, Landroid/os/HandlerExecutor;

    invoke-direct {v8, v12}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 361
    .local v8, "executor":Ljava/util/concurrent/Executor;
    new-instance v13, Lcom/android/server/pm/AppsFilter;

    const/4 v7, 0x0

    move-object v2, v13

    move-object v3, v10

    move-object v4, v1

    move-object v5, v9

    move v6, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/AppsFilter;-><init>(Lcom/android/server/pm/AppsFilter$StateProvider;Lcom/android/server/pm/AppsFilter$FeatureConfig;[Ljava/lang/String;ZLcom/android/server/om/OverlayReferenceMapper$Provider;Ljava/util/concurrent/Executor;)V

    .line 363
    .local v2, "appsFilter":Lcom/android/server/pm/AppsFilter;
    invoke-virtual {v1, v2}, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->setAppsFilter(Lcom/android/server/pm/AppsFilter;)V

    .line 364
    return-object v2
.end method

.method private static dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V
    .locals 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p3, "subTitle"    # Ljava/lang/String;
    .param p4, "spacing"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/PrintWriter;",
            "TT;",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/AppsFilter$ToString<",
            "TT;>;)V"
        }
    .end annotation

    .line 1306
    .local p1, "filteringId":Ljava/lang/Object;, "TT;"
    .local p2, "targetPkgSet":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p5, "toString":Lcom/android/server/pm/AppsFilter$ToString;, "Lcom/android/server/pm/AppsFilter$ToString<TT;>;"
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_4

    if-eqz p1, :cond_0

    .line 1307
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1308
    :cond_0
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1309
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1310
    .local v1, "item":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1311
    :cond_1
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    .line 1312
    if-nez p5, :cond_2

    move-object v3, v1

    goto :goto_1

    :cond_2
    invoke-interface {p5, v1}, Lcom/android/server/pm/AppsFilter$ToString;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1314
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    :cond_3
    goto :goto_0

    .line 1316
    :cond_4
    return-void
.end method

.method private static dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V
    .locals 9
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "filteringId"    # Ljava/lang/Integer;
    .param p3, "spacing"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Integer;",
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/AppsFilter$ToString<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1278
    .local p2, "queriesMap":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<Ljava/lang/Integer;>;"
    .local p4, "toString":Lcom/android/server/pm/AppsFilter$ToString;, "Lcom/android/server/pm/AppsFilter$ToString<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseSetArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1279
    invoke-virtual {p2, v0}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1280
    .local v1, "callingId":Ljava/lang/Integer;
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1282
    const/4 v4, 0x0

    .line 1283
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v5

    .line 1284
    if-nez p4, :cond_0

    .line 1285
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_1

    .line 1286
    :cond_0
    invoke-interface {p4, v1}, Lcom/android/server/pm/AppsFilter$ToString;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 1282
    :goto_1
    move-object v3, p0

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/AppsFilter;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V

    goto :goto_3

    .line 1289
    :cond_1
    nop

    .line 1290
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v5

    .line 1291
    if-nez p4, :cond_2

    .line 1292
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_2

    .line 1293
    :cond_2
    invoke-interface {p4, v1}, Lcom/android/server/pm/AppsFilter$ToString;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 1289
    :goto_2
    move-object v3, p0

    move-object v4, p1

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/AppsFilter;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V

    .line 1278
    .end local v1    # "callingId":Ljava/lang/Integer;
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1297
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private static isSystemSigned(Landroid/content/pm/PackageParser$SigningDetails;Lcom/android/server/pm/PackageSetting;)Z
    .locals 1
    .param p0, "sysSigningDetails"    # Landroid/content/pm/PackageParser$SigningDetails;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 776
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 777
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageParser$SigningDetails;->signaturesMatchExactly(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 776
    :goto_0
    return v0
.end method

.method static synthetic lambda$create$0(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V
    .locals 3
    .param p0, "injector"    # Lcom/android/server/pm/PackageManagerService$Injector;
    .param p1, "command"    # Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;

    .line 351
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$Injector;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 352
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$Injector;->getSettings()Lcom/android/server/pm/Settings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    .line 353
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManagerInternal;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 352
    invoke-interface {p1, v1, v2}, Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;->currentState(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V

    .line 354
    monitor-exit v0

    .line 355
    return-void

    .line 354
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic lambda$dumpQueries$9(Landroid/util/SparseArray;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 5
    .param p0, "cache"    # Landroid/util/SparseArray;
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "input"    # Ljava/lang/Integer;

    .line 1238
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1239
    .local v0, "cachedValue":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1240
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/pm/PackageManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 1241
    .local v1, "packagesForUid":[Ljava/lang/String;
    const-string v2, "]"

    if-nez v1, :cond_0

    .line 1242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[unknown app id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1244
    :cond_0
    array-length v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    goto :goto_0

    .line 1245
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .line 1247
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1249
    .end local v1    # "packagesForUid":[Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method static synthetic lambda$updateEntireShouldFilterCacheAsync$3(Landroid/util/ArrayMap;Landroid/util/ArrayMap;[[Landroid/content/pm/UserInfo;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .locals 4
    .param p0, "packagesCache"    # Landroid/util/ArrayMap;
    .param p1, "settingsCopy"    # Landroid/util/ArrayMap;
    .param p2, "usersRef"    # [[Landroid/content/pm/UserInfo;
    .param p3, "settings"    # Landroid/util/ArrayMap;
    .param p4, "users"    # [Landroid/content/pm/UserInfo;

    .line 676
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 677
    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 678
    const/4 v0, 0x0

    aput-object p4, p2, v0

    .line 681
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .local v1, "max":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 682
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 683
    .local v2, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    .end local v2    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 685
    .end local v0    # "i":I
    .end local v1    # "max":I
    :cond_0
    return-void
.end method

.method static synthetic lambda$updateEntireShouldFilterCacheAsync$4(Landroid/util/ArrayMap;[ZLandroid/util/ArrayMap;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .locals 6
    .param p0, "settingsCopy"    # Landroid/util/ArrayMap;
    .param p1, "changed"    # [Z
    .param p2, "packagesCache"    # Landroid/util/ArrayMap;
    .param p3, "settings"    # Landroid/util/ArrayMap;
    .param p4, "users"    # [Landroid/content/pm/UserInfo;

    .line 691
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    .line 692
    aput-boolean v3, p1, v2

    .line 693
    return-void

    .line 695
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .local v1, "max":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 696
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    iget-object v4, v4, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 697
    .local v4, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 698
    aput-boolean v3, p1, v2

    .line 699
    return-void

    .line 695
    .end local v4    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 702
    .end local v0    # "i":I
    .end local v1    # "max":I
    :cond_2
    return-void
.end method

.method private static log(Lcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)V
    .locals 2
    .param p0, "callingSetting"    # Lcom/android/server/pm/SettingBase;
    .param p1, "targetPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "description"    # Ljava/lang/String;

    .line 1227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interaction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    if-nez p0, :cond_0

    const-string/jumbo v1, "system"

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1227
    const-string v1, "AppsFilter"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    return-void
.end method

.method private static matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Ljava/util/Set;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "+",
            "Landroid/content/pm/parsing/component/ParsedMainComponent;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 451
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<+Landroid/content/pm/parsing/component/ParsedMainComponent;>;"
    .local p2, "protectedBroadcasts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 452
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedMainComponent;

    .line 453
    .local v2, "component":Landroid/content/pm/parsing/component/ParsedMainComponent;
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedMainComponent;->isExported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 454
    goto :goto_1

    .line 456
    :cond_0
    invoke-static {p0, v2, p2}, Lcom/android/server/pm/AppsFilter;->matchesAnyFilter(Landroid/content/Intent;Landroid/content/pm/parsing/component/ParsedComponent;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 457
    return v1

    .line 451
    .end local v2    # "component":Landroid/content/pm/parsing/component/ParsedMainComponent;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 460
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static matchesAnyFilter(Landroid/content/Intent;Landroid/content/pm/parsing/component/ParsedComponent;Ljava/util/Set;)Z
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "component"    # Landroid/content/pm/parsing/component/ParsedComponent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/parsing/component/ParsedComponent;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 465
    .local p2, "protectedBroadcasts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v0

    .line 466
    .local v0, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 467
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    .line 468
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    invoke-static {p0, v3, p2}, Lcom/android/server/pm/AppsFilter;->matchesIntentFilter(Landroid/content/Intent;Landroid/content/IntentFilter;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 469
    return v2

    .line 466
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 472
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static matchesIntentFilter(Landroid/content/Intent;Landroid/content/IntentFilter;Ljava/util/Set;)Z
    .locals 9
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "intentFilter"    # Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/IntentFilter;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 477
    .local p2, "protectedBroadcasts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 478
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    .line 477
    const-string v6, "AppsFilter"

    const/4 v7, 0x1

    move-object v0, p1

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;ZLjava/util/Collection;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static matchesPackage(Landroid/content/Intent;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Set;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "potentialTarget"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 430
    .local p2, "protectedBroadcasts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 431
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v0

    .line 430
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/pm/AppsFilter;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Ljava/util/Set;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 432
    return v2

    .line 434
    :cond_0
    nop

    .line 435
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    .line 434
    invoke-static {p0, v0, v1}, Lcom/android/server/pm/AppsFilter;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    return v2

    .line 438
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/server/pm/AppsFilter;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 439
    return v2

    .line 441
    :cond_2
    nop

    .line 442
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v0

    .line 441
    invoke-static {p0, v0, v1}, Lcom/android/server/pm/AppsFilter;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 443
    return v2

    .line 445
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private static matchesProviders(Ljava/util/Set;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 7
    .param p1, "potentialTarget"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")Z"
        }
    .end annotation

    .line 409
    .local p0, "queriesAuthorities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "p":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_4

    .line 410
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedProvider;

    .line 411
    .local v3, "provider":Landroid/content/pm/parsing/component/ParsedProvider;
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedProvider;->isExported()Z

    move-result v4

    if-nez v4, :cond_0

    .line 412
    goto :goto_1

    .line 414
    :cond_0
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 415
    goto :goto_1

    .line 417
    :cond_1
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    invoke-direct {v4, v5, v6, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v2, v4

    .line 419
    .local v2, "authorities":Ljava/util/StringTokenizer;
    :cond_2
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 420
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 421
    return v1

    .line 409
    .end local v2    # "authorities":Ljava/util/StringTokenizer;
    .end local v3    # "provider":Landroid/content/pm/parsing/component/ParsedProvider;
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 425
    .end local v0    # "p":I
    :cond_4
    return v2
.end method

.method private static pkgInstruments(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 7
    .param p0, "source"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "target"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1211
    const-wide/32 v0, 0x40000

    :try_start_0
    const-string/jumbo v2, "pkgInstruments"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1212
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1213
    .local v2, "packageName":Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v3

    .line 1214
    .local v3, "inst":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedInstrumentation;>;"
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 1215
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/parsing/component/ParsedInstrumentation;

    invoke-virtual {v6}, Landroid/content/pm/parsing/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    .line 1216
    nop

    .line 1221
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1216
    return v5

    .line 1214
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1219
    .end local v4    # "i":I
    :cond_1
    const/4 v4, 0x0

    .line 1221
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1219
    return v4

    .line 1221
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "inst":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedInstrumentation;>;"
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1222
    throw v2
.end method

.method private recomputeComponentVisibility(Landroid/util/ArrayMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .line 802
    .local p1, "existingSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    invoke-virtual {v0}, Landroid/util/SparseSetArray;->clear()V

    .line 803
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    .line 804
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 805
    .local v1, "setting":Lcom/android/server/pm/PackageSetting;
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-static {v2}, Lcom/android/server/pm/AppsFilter;->requestsQueryAllPackages(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 806
    goto :goto_3

    .line 808
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_4

    .line 809
    if-ne v0, v2, :cond_1

    .line 810
    goto :goto_2

    .line 812
    :cond_1
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 813
    .local v3, "otherSetting":Lcom/android/server/pm/PackageSetting;
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v5, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 814
    goto :goto_2

    .line 816
    :cond_2
    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget-object v5, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    invoke-static {v4, v5, v6}, Lcom/android/server/pm/AppsFilter;->canQueryViaComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 817
    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    iget v5, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v6, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 808
    .end local v3    # "otherSetting":Lcom/android/server/pm/PackageSetting;
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 803
    .end local v1    # "setting":Lcom/android/server/pm/PackageSetting;
    .end local v2    # "j":I
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 821
    .end local v0    # "i":I
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    .line 822
    return-void
.end method

.method private removeAppIdFromVisibilityCache(I)V
    .locals 4
    .param p1, "appId"    # I

    .line 632
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 633
    return-void

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 636
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 637
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 638
    goto :goto_2

    .line 640
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 641
    .local v1, "targetSparseArray":Landroid/util/SparseBooleanArray;
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_3

    .line 642
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 643
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 641
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 635
    .end local v1    # "targetSparseArray":Landroid/util/SparseBooleanArray;
    .end local v2    # "j":I
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 647
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method private static requestsQueryAllPackages(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 2
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1203
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    const-string v1, "android.permission.QUERY_ALL_PACKAGES"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private shouldFilterApplicationInternal(ILcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;I)Z
    .locals 20
    .param p1, "callingUid"    # I
    .param p2, "callingSetting"    # Lcom/android/server/pm/SettingBase;
    .param p3, "targetPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p4, "targetUserId"    # I

    .line 1015
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-wide/32 v5, 0x40000

    const-string/jumbo v0, "shouldFilterApplicationInternal"

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1017
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v0}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->isGloballyEnabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    move v7, v0

    .line 1018
    .local v7, "featureEnabled":Z
    const/4 v0, 0x0

    if-nez v7, :cond_0

    .line 1022
    nop

    .line 1195
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1022
    return v0

    .line 1024
    :cond_0
    const/4 v8, 0x1

    if-nez v3, :cond_1

    .line 1025
    :try_start_1
    const-string v0, "AppsFilter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No setting found for non system uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 1026
    nop

    .line 1195
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1026
    return v8

    .line 1030
    :cond_1
    :try_start_2
    const-string v9, "callingSetting instanceof"

    invoke-static {v5, v6, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1031
    instance-of v9, v3, Lcom/android/server/pm/PackageSetting;

    if-eqz v9, :cond_3

    .line 1032
    move-object v9, v3

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    iget-object v9, v9, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v9, :cond_2

    .line 1033
    move-object v9, v3

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    .line 1034
    .local v9, "callingPkgSetting":Lcom/android/server/pm/PackageSetting;
    const/4 v10, 0x0

    .local v10, "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/PackageSetting;>;"
    goto :goto_0

    .line 1036
    .end local v9    # "callingPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v10    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/PackageSetting;>;"
    :cond_2
    const/4 v9, 0x0

    .line 1037
    .restart local v9    # "callingPkgSetting":Lcom/android/server/pm/PackageSetting;
    move-object v10, v3

    check-cast v10, Lcom/android/server/pm/PackageSetting;

    iget-object v10, v10, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v10, v10, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    .restart local v10    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/PackageSetting;>;"
    goto :goto_0

    .line 1041
    .end local v9    # "callingPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v10    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/PackageSetting;>;"
    :cond_3
    const/4 v9, 0x0

    .line 1042
    .restart local v9    # "callingPkgSetting":Lcom/android/server/pm/PackageSetting;
    move-object v10, v3

    check-cast v10, Lcom/android/server/pm/SharedUserSetting;

    iget-object v10, v10, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    .line 1044
    .restart local v10    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/PackageSetting;>;"
    :goto_0
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1046
    if-eqz v9, :cond_4

    .line 1047
    iget-object v11, v9, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v11, :cond_6

    iget-object v11, v1, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    iget-object v12, v9, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1048
    invoke-interface {v11, v12}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->packageIsEnabled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    if-nez v11, :cond_6

    .line 1052
    nop

    .line 1195
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1052
    return v0

    .line 1055
    :cond_4
    :try_start_3
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v11

    sub-int/2addr v11, v8

    .local v11, "i":I
    :goto_1
    if-ltz v11, :cond_6

    .line 1056
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/PackageSetting;

    iget-object v12, v12, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1057
    .local v12, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v12, :cond_5

    iget-object v13, v1, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v13, v12}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->packageIsEnabled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    if-nez v13, :cond_5

    .line 1061
    nop

    .line 1195
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1061
    return v0

    .line 1055
    .end local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_5
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 1068
    .end local v11    # "i":I
    :cond_6
    :try_start_4
    iget-object v11, v4, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 1069
    .local v11, "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v11, :cond_7

    .line 1073
    nop

    .line 1195
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1073
    return v8

    .line 1075
    :cond_7
    :try_start_5
    invoke-interface {v11}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isStaticSharedLibrary()Z

    move-result v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    if-eqz v12, :cond_8

    .line 1077
    nop

    .line 1195
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1077
    return v0

    .line 1079
    :cond_8
    :try_start_6
    invoke-interface {v11}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 1080
    .local v12, "targetName":Ljava/lang/String;
    const-string v13, "getAppId"

    invoke-static {v5, v6, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1082
    if-eqz v9, :cond_9

    .line 1083
    iget v13, v9, Lcom/android/server/pm/PackageSetting;->appId:I

    .local v13, "callingAppId":I
    goto :goto_2

    .line 1085
    .end local v13    # "callingAppId":I
    :cond_9
    invoke-virtual {v10, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    iget v13, v13, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 1087
    .restart local v13    # "callingAppId":I
    :goto_2
    iget v14, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 1088
    .local v14, "targetAppId":I
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    .line 1089
    if-ne v13, v14, :cond_a

    .line 1093
    nop

    .line 1195
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1093
    return v0

    .line 1097
    :cond_a
    :try_start_7
    const-string/jumbo v15, "requestsQueryAllPackages"

    invoke-static {v5, v6, v15}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1098
    if-eqz v9, :cond_b

    .line 1099
    iget-object v15, v9, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v15, :cond_d

    iget-object v15, v9, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1100
    invoke-static {v15}, Lcom/android/server/pm/AppsFilter;->requestsQueryAllPackages(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-eqz v15, :cond_d

    .line 1101
    nop

    .line 1112
    :try_start_8
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 1195
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1101
    return v0

    .line 1104
    :cond_b
    :try_start_9
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v15

    sub-int/2addr v15, v8

    .local v15, "i":I
    :goto_3
    if-ltz v15, :cond_d

    .line 1105
    invoke-virtual {v10, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    iget-object v8, v8, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1106
    .local v8, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v8, :cond_c

    invoke-static {v8}, Lcom/android/server/pm/AppsFilter;->requestsQueryAllPackages(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-eqz v16, :cond_c

    .line 1107
    nop

    .line 1112
    :try_start_a
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 1195
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1107
    return v0

    .line 1104
    .end local v8    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_c
    add-int/lit8 v15, v15, -0x1

    const/4 v8, 0x1

    goto :goto_3

    .line 1112
    .end local v15    # "i":I
    :cond_d
    :try_start_b
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 1113
    nop

    .line 1115
    :try_start_c
    const-string/jumbo v8, "mForceQueryable"

    invoke-static {v5, v6, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1116
    iget-object v8, v1, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    if-eqz v8, :cond_e

    .line 1120
    nop

    .line 1123
    :try_start_d
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 1195
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1120
    return v0

    .line 1123
    :cond_e
    :try_start_e
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 1124
    nop

    .line 1126
    :try_start_f
    const-string/jumbo v8, "mQueriesViaPackage"

    invoke-static {v5, v6, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1127
    iget-object v8, v1, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v13, v15}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    if-eqz v8, :cond_f

    .line 1131
    nop

    .line 1134
    :try_start_10
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 1195
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1131
    return v0

    .line 1134
    :cond_f
    :try_start_11
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 1135
    nop

    .line 1137
    :try_start_12
    const-string/jumbo v8, "mQueriesViaComponent"

    invoke-static {v5, v6, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1138
    iget-boolean v8, v1, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    if-eqz v8, :cond_10

    .line 1139
    iget-object v8, v1, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v15, Lcom/android/server/pm/-$$Lambda$AppsFilter$tFR_Ddtm4Okb0TEuclx_x3mhL70;

    invoke-direct {v15, v1}, Lcom/android/server/pm/-$$Lambda$AppsFilter$tFR_Ddtm4Okb0TEuclx_x3mhL70;-><init>(Lcom/android/server/pm/AppsFilter;)V

    invoke-interface {v8, v15}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V

    .line 1143
    :cond_10
    iget-object v8, v1, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v13, v15}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v8
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    if-eqz v8, :cond_11

    .line 1147
    nop

    .line 1150
    :try_start_13
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 1195
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1147
    return v0

    .line 1150
    :cond_11
    :try_start_14
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 1151
    nop

    .line 1154
    :try_start_15
    const-string/jumbo v8, "mImplicitlyQueryable"

    invoke-static {v5, v6, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 1155
    move/from16 v8, p4

    :try_start_16
    invoke-static {v8, v14}, Landroid/os/UserHandle;->getUid(II)I

    move-result v15

    .line 1156
    .local v15, "targetUid":I
    iget-object v0, v1, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    if-eqz v0, :cond_12

    .line 1160
    nop

    .line 1163
    const-wide/32 v5, 0x40000

    :try_start_17
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    .line 1195
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1160
    const/4 v0, 0x0

    return v0

    .line 1156
    :cond_12
    const-wide/32 v5, 0x40000

    .line 1163
    .end local v15    # "targetUid":I
    :try_start_18
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    .line 1164
    nop

    .line 1167
    :try_start_19
    const-string/jumbo v0, "mOverlayReferenceMapper"

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1168
    if-eqz v10, :cond_15

    .line 1169
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 1170
    .local v0, "size":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_4
    if-ge v5, v0, :cond_14

    .line 1171
    invoke-virtual {v10, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 1172
    .local v6, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    iget-object v15, v1, Lcom/android/server/pm/AppsFilter;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    move/from16 v19, v0

    .end local v0    # "size":I
    .local v19, "size":I
    iget-object v0, v6, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v15, v12, v0}, Lcom/android/server/om/OverlayReferenceMapper;->isValidActor(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    if-eqz v0, :cond_13

    .line 1178
    nop

    .line 1190
    const-wide/32 v17, 0x40000

    :try_start_1a
    invoke-static/range {v17 .. v18}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    .line 1195
    invoke-static/range {v17 .. v18}, Landroid/os/Trace;->traceEnd(J)V

    .line 1178
    const/4 v0, 0x0

    return v0

    .line 1170
    .end local v6    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :cond_13
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v19

    goto :goto_4

    .end local v19    # "size":I
    .restart local v0    # "size":I
    :cond_14
    move/from16 v19, v0

    .line 1181
    .end local v0    # "size":I
    .end local v5    # "index":I
    const-wide/32 v5, 0x40000

    goto :goto_5

    .line 1182
    :cond_15
    :try_start_1b
    iget-object v0, v1, Lcom/android/server/pm/AppsFilter;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    iget-object v5, v9, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v12, v5}, Lcom/android/server/om/OverlayReferenceMapper;->isValidActor(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    if-eqz v0, :cond_16

    .line 1186
    nop

    .line 1190
    const-wide/32 v5, 0x40000

    :try_start_1c
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    .line 1195
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1186
    const/4 v0, 0x0

    return v0

    .line 1182
    :cond_16
    const-wide/32 v5, 0x40000

    .line 1190
    :goto_5
    :try_start_1d
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    .line 1191
    nop

    .line 1193
    nop

    .line 1195
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1193
    const/4 v0, 0x1

    return v0

    .line 1190
    :catchall_0
    move-exception v0

    const-wide/32 v5, 0x40000

    :try_start_1e
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1191
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .end local p1    # "callingUid":I
    .end local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local p4    # "targetUserId":I
    throw v0

    .line 1163
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .restart local p1    # "callingUid":I
    .restart local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .restart local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local p4    # "targetUserId":I
    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move/from16 v8, p4

    :goto_6
    const-wide/32 v5, 0x40000

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1164
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .end local p1    # "callingUid":I
    .end local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local p4    # "targetUserId":I
    throw v0

    .line 1150
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .restart local p1    # "callingUid":I
    .restart local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .restart local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local p4    # "targetUserId":I
    :catchall_3
    move-exception v0

    move/from16 v8, p4

    const-wide/32 v5, 0x40000

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1151
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .end local p1    # "callingUid":I
    .end local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local p4    # "targetUserId":I
    throw v0

    .line 1134
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .restart local p1    # "callingUid":I
    .restart local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .restart local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local p4    # "targetUserId":I
    :catchall_4
    move-exception v0

    move/from16 v8, p4

    const-wide/32 v5, 0x40000

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1135
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .end local p1    # "callingUid":I
    .end local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local p4    # "targetUserId":I
    throw v0

    .line 1123
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .restart local p1    # "callingUid":I
    .restart local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .restart local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local p4    # "targetUserId":I
    :catchall_5
    move-exception v0

    move/from16 v8, p4

    const-wide/32 v5, 0x40000

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1124
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .end local p1    # "callingUid":I
    .end local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local p4    # "targetUserId":I
    throw v0

    .line 1112
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .restart local p1    # "callingUid":I
    .restart local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .restart local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local p4    # "targetUserId":I
    :catchall_6
    move-exception v0

    move/from16 v8, p4

    const-wide/32 v5, 0x40000

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1113
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .end local p1    # "callingUid":I
    .end local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local p4    # "targetUserId":I
    throw v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    .line 1195
    .end local v7    # "featureEnabled":Z
    .end local v9    # "callingPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v10    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/PackageSetting;>;"
    .end local v11    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v12    # "targetName":Ljava/lang/String;
    .end local v13    # "callingAppId":I
    .end local v14    # "targetAppId":I
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .restart local p1    # "callingUid":I
    .restart local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .restart local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local p4    # "targetUserId":I
    :catchall_7
    move-exception v0

    goto :goto_7

    :catchall_8
    move-exception v0

    move/from16 v8, p4

    :goto_7
    const-wide/32 v5, 0x40000

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1196
    throw v0
.end method

.method private updateEntireShouldFilterCache()V
    .locals 2

    .line 650
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$AppsFilter$TlAUz3n4SFG3Fzpx_ztukhvAHaI;

    invoke-direct {v1, p0}, Lcom/android/server/pm/-$$Lambda$AppsFilter$TlAUz3n4SFG3Fzpx_ztukhvAHaI;-><init>(Lcom/android/server/pm/AppsFilter;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V

    .line 657
    return-void
.end method

.method private updateEntireShouldFilterCacheAsync()V
    .locals 2

    .line 671
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$AppsFilter$KnqU6hxjaMrozBA1Ezyv4QavzxI;

    invoke-direct {v1, p0}, Lcom/android/server/pm/-$$Lambda$AppsFilter$KnqU6hxjaMrozBA1Ezyv4QavzxI;-><init>(Lcom/android/server/pm/AppsFilter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 715
    return-void
.end method

.method private updateEntireShouldFilterCacheInner(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)Landroid/util/SparseArray;
    .locals 9
    .param p2, "users"    # [Landroid/content/pm/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;[",
            "Landroid/content/pm/UserInfo;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation

    .line 661
    .local p1, "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    new-instance v0, Landroid/util/SparseArray;

    array-length v1, p2

    .line 662
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 663
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 664
    const/4 v4, 0x0

    .line 665
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 664
    move-object v2, p0

    move-object v3, v0

    move-object v6, p1

    move-object v7, p2

    move v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/AppsFilter;->updateShouldFilterCacheForPackage(Landroid/util/SparseArray;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    .line 663
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 667
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private updateShouldFilterCacheForPackage(Landroid/util/SparseArray;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V
    .locals 17
    .param p2, "skipPackageName"    # Ljava/lang/String;
    .param p3, "subjectSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p5, "allUsers"    # [Landroid/content/pm/UserInfo;
    .param p6, "maxIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;[",
            "Landroid/content/pm/UserInfo;",
            "I)V"
        }
    .end annotation

    .line 740
    .local p1, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    .local p4, "allSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    invoke-virtual/range {p4 .. p4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v6, p6

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_6

    .line 741
    move-object/from16 v7, p4

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 742
    .local v8, "otherSetting":Lcom/android/server/pm/PackageSetting;
    iget v9, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v10, v8, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ne v9, v10, :cond_0

    .line 743
    goto/16 :goto_3

    .line 746
    :cond_0
    iget-object v9, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    if-eq v9, v2, :cond_5

    iget-object v9, v8, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    if-ne v9, v2, :cond_1

    .line 747
    goto :goto_3

    .line 749
    :cond_1
    array-length v9, v4

    .line 750
    .local v9, "userCount":I
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArrayMap;->size()I

    move-result v10

    mul-int/2addr v10, v9

    .line 751
    .local v10, "appxUidCount":I
    const/4 v11, 0x0

    .local v11, "su":I
    :goto_1
    if-ge v11, v9, :cond_5

    .line 752
    aget-object v12, v4, v11

    iget v12, v12, Landroid/content/pm/UserInfo;->id:I

    .line 753
    .local v12, "subjectUser":I
    const/4 v13, 0x0

    .local v13, "ou":I
    :goto_2
    if-ge v13, v9, :cond_4

    .line 754
    aget-object v14, v4, v13

    iget v14, v14, Landroid/content/pm/UserInfo;->id:I

    .line 755
    .local v14, "otherUser":I
    iget v15, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v12, v15}, Landroid/os/UserHandle;->getUid(II)I

    move-result v15

    .line 756
    .local v15, "subjectUid":I
    invoke-virtual {v1, v15}, Landroid/util/SparseArray;->contains(I)Z

    move-result v16

    if-nez v16, :cond_2

    .line 757
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2, v10}, Landroid/util/SparseBooleanArray;-><init>(I)V

    invoke-virtual {v1, v15, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 759
    :cond_2
    iget v2, v8, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v14, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 760
    .local v2, "otherUid":I
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v16

    if-nez v16, :cond_3

    .line 761
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4, v10}, Landroid/util/SparseBooleanArray;-><init>(I)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 763
    :cond_3
    invoke-virtual {v1, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseBooleanArray;

    .line 764
    invoke-direct {v0, v15, v3, v8, v14}, Lcom/android/server/pm/AppsFilter;->shouldFilterApplicationInternal(ILcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;I)Z

    move-result v6

    .line 763
    invoke-virtual {v4, v2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 766
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseBooleanArray;

    .line 767
    invoke-direct {v0, v2, v8, v3, v12}, Lcom/android/server/pm/AppsFilter;->shouldFilterApplicationInternal(ILcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;I)Z

    move-result v6

    .line 766
    invoke-virtual {v4, v15, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 753
    .end local v2    # "otherUid":I
    .end local v14    # "otherUser":I
    .end local v15    # "subjectUid":I
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p2

    move-object/from16 v4, p5

    move/from16 v6, p6

    goto :goto_2

    .line 751
    .end local v12    # "subjectUser":I
    .end local v13    # "ou":I
    :cond_4
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p2

    move-object/from16 v4, p5

    move/from16 v6, p6

    goto :goto_1

    .line 740
    .end local v8    # "otherSetting":Lcom/android/server/pm/PackageSetting;
    .end local v9    # "userCount":I
    .end local v10    # "appxUidCount":I
    .end local v11    # "su":I
    :cond_5
    :goto_3
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v2, p2

    move-object/from16 v4, p5

    move/from16 v6, p6

    goto/16 :goto_0

    :cond_6
    move-object/from16 v7, p4

    .line 772
    .end local v5    # "i":I
    return-void
.end method

.method private updateShouldFilterCacheForPackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 726
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 727
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 728
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v2, Lcom/android/server/pm/-$$Lambda$AppsFilter$ZwENiwgbQCKlX7qyWD4DAQdqrG0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/pm/-$$Lambda$AppsFilter$ZwENiwgbQCKlX7qyWD4DAQdqrG0;-><init>(Lcom/android/server/pm/AppsFilter;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V

    .line 734
    :cond_0
    monitor-exit v0

    .line 735
    return-void

    .line 734
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addPackage(Lcom/android/server/pm/PackageSetting;)V
    .locals 1
    .param p1, "newPkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 884
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/AppsFilter;->addPackage(Lcom/android/server/pm/PackageSetting;Z)V

    .line 885
    return-void
.end method

.method public addPackage(Lcom/android/server/pm/PackageSetting;Z)V
    .locals 4
    .param p1, "newPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "isReplace"    # Z

    .line 523
    const-wide/32 v0, 0x40000

    const-string v2, "filter.addPackage"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 525
    if-eqz p2, :cond_0

    .line 527
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppsFilter;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    .line 529
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v3, Lcom/android/server/pm/-$$Lambda$AppsFilter$Dxw_XmZrEzzBQvW2GyGYmM8TilU;

    invoke-direct {v3, p0, p1}, Lcom/android/server/pm/-$$Lambda$AppsFilter$Dxw_XmZrEzzBQvW2GyGYmM8TilU;-><init>(Lcom/android/server/pm/AppsFilter;Lcom/android/server/pm/PackageSetting;)V

    invoke-interface {v2, v3}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 540
    nop

    .line 541
    return-void

    .line 539
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 540
    throw v2
.end method

.method public dumpQueries(Ljava/io/PrintWriter;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Integer;Lcom/android/server/pm/DumpState;[I)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "filteringAppId"    # Ljava/lang/Integer;
    .param p4, "dumpState"    # Lcom/android/server/pm/DumpState;
    .param p5, "users"    # [I

    .line 1236
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1237
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v7, Lcom/android/server/pm/-$$Lambda$AppsFilter$gPylZb4-6_L0iaEHe8NiXYBawzs;

    .local v7, "expandPackages":Lcom/android/server/pm/AppsFilter$ToString;, "Lcom/android/server/pm/AppsFilter$ToString<Ljava/lang/Integer;>;"
    invoke-direct {v7, v0, p2}, Lcom/android/server/pm/-$$Lambda$AppsFilter$gPylZb4-6_L0iaEHe8NiXYBawzs;-><init>(Landroid/util/SparseArray;Lcom/android/server/pm/PackageManagerService;)V

    .line 1251
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1252
    const-string v1, "Queries:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1253
    invoke-virtual {p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    .line 1254
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v1}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->isGloballyEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1255
    const-string v1, "  DISABLED"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1257
    return-void

    .line 1260
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  system apps queryable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/pm/AppsFilter;->mSystemAppsQueryable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1261
    iget-object v3, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    const-string v4, "forceQueryable"

    const-string v5, "  "

    move-object v1, p1

    move-object v2, p3

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/AppsFilter;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V

    .line 1262
    const-string v1, "  queries via package name:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1263
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    const-string v2, "    "

    invoke-static {p1, p3, v1, v2, v7}, Lcom/android/server/pm/AppsFilter;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V

    .line 1264
    const-string v1, "  queries via intent:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1265
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    invoke-static {p1, p3, v1, v2, v7}, Lcom/android/server/pm/AppsFilter;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V

    .line 1266
    const-string v1, "  queryable via interaction:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1267
    array-length v1, p5

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p5, v2

    .line 1268
    .local v3, "user":I
    const-string v4, "    User "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1269
    nop

    .line 1270
    if-nez p3, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_1
    iget-object v5, p0, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    .line 1269
    const-string v6, "      "

    invoke-static {p1, v4, v5, v6, v7}, Lcom/android/server/pm/AppsFilter;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V

    .line 1267
    .end local v3    # "user":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1273
    :cond_2
    return-void
.end method

.method public getFeatureConfig()Lcom/android/server/pm/AppsFilter$FeatureConfig;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    return-object v0
.end method

.method public getVisibilityWhitelist(Lcom/android/server/pm/PackageSetting;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;
    .locals 17
    .param p1, "setting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "users"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "[I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    .line 841
    .local p3, "existingSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v4, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 842
    const/4 v3, 0x0

    return-object v3

    .line 845
    :cond_0
    new-instance v3, Landroid/util/SparseArray;

    array-length v4, v2

    invoke-direct {v3, v4}, Landroid/util/SparseArray;-><init>(I)V

    .line 846
    .local v3, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    const/4 v4, 0x0

    .local v4, "u":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_6

    .line 847
    aget v5, v2, v4

    .line 848
    .local v5, "userId":I
    invoke-virtual/range {p3 .. p3}, Landroid/util/ArrayMap;->size()I

    move-result v6

    new-array v6, v6, [I

    .line 849
    .local v6, "appIds":[I
    const/4 v7, 0x0

    .line 850
    .local v7, "buffer":[I
    const/4 v8, 0x0

    .line 851
    .local v8, "whitelistSize":I
    invoke-virtual/range {p3 .. p3}, Landroid/util/ArrayMap;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    .local v9, "i":I
    :goto_1
    if-ltz v9, :cond_5

    .line 852
    move-object/from16 v10, p3

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/PackageSetting;

    .line 853
    .local v11, "existingSetting":Lcom/android/server/pm/PackageSetting;
    iget v12, v11, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 854
    .local v12, "existingAppId":I
    const/16 v13, 0x2710

    if-ge v12, v13, :cond_1

    .line 855
    goto :goto_2

    .line 857
    :cond_1
    const/4 v13, 0x0

    invoke-static {v6, v13, v8, v12}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v14

    .line 858
    .local v14, "loc":I
    if-ltz v14, :cond_2

    .line 859
    goto :goto_2

    .line 861
    :cond_2
    invoke-static {v5, v12}, Landroid/os/UserHandle;->getUid(II)I

    move-result v15

    .line 862
    .local v15, "existingUid":I
    invoke-virtual {v0, v15, v11, v1, v5}, Lcom/android/server/pm/AppsFilter;->shouldFilterApplication(ILcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;I)Z

    move-result v16

    if-nez v16, :cond_4

    .line 863
    if-nez v7, :cond_3

    .line 864
    array-length v13, v6

    new-array v7, v13, [I

    .line 866
    :cond_3
    not-int v13, v14

    .line 867
    .local v13, "insert":I
    sub-int v0, v8, v13

    const/4 v1, 0x0

    invoke-static {v6, v13, v7, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 868
    aput v12, v6, v13

    .line 869
    add-int/lit8 v0, v13, 0x1

    sub-int v2, v8, v13

    invoke-static {v7, v1, v6, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 870
    add-int/lit8 v8, v8, 0x1

    .line 851
    .end local v11    # "existingSetting":Lcom/android/server/pm/PackageSetting;
    .end local v12    # "existingAppId":I
    .end local v13    # "insert":I
    .end local v14    # "loc":I
    .end local v15    # "existingUid":I
    :cond_4
    :goto_2
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_1

    :cond_5
    move-object/from16 v10, p3

    .line 873
    .end local v9    # "i":I
    invoke-static {v6, v8}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 846
    .end local v5    # "userId":I
    .end local v6    # "appIds":[I
    .end local v7    # "buffer":[I
    .end local v8    # "whitelistSize":I
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_0

    :cond_6
    move-object/from16 v10, p3

    .line 875
    .end local v4    # "u":I
    return-object v3
.end method

.method public grantImplicitAccess(II)V
    .locals 3
    .param p1, "recipientUid"    # I
    .param p2, "visibleUid"    # I

    .line 490
    if-eq p1, p2, :cond_2

    .line 491
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 494
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 495
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    if-eqz v1, :cond_1

    .line 498
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 499
    .local v1, "visibleUids":Landroid/util/SparseBooleanArray;
    if-nez v1, :cond_0

    .line 500
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v1, v2

    .line 501
    iget-object v2, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 503
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 505
    .end local v1    # "visibleUids":Landroid/util/SparseBooleanArray;
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 507
    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$addPackage$1$AppsFilter(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .locals 9
    .param p1, "newPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "settings"    # Landroid/util/ArrayMap;
    .param p3, "users"    # [Landroid/content/pm/UserInfo;

    .line 530
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/AppsFilter;->addPackageInternal(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;)V

    .line 531
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 532
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 533
    iget-object v3, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    const/4 v4, 0x0

    .line 534
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 533
    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/AppsFilter;->updateShouldFilterCacheForPackage(Landroid/util/SparseArray;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    .line 536
    :cond_0
    monitor-exit v0

    .line 537
    return-void

    .line 536
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$removePackage$7$AppsFilter(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .locals 11
    .param p1, "setting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "settings"    # Landroid/util/ArrayMap;
    .param p3, "users"    # [Landroid/content/pm/UserInfo;

    .line 894
    array-length v0, p3

    .line 895
    .local v0, "userCount":I
    const/4 v1, 0x0

    .local v1, "u":I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_1

    .line 896
    aget-object v3, p3, v1

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 897
    .local v3, "userId":I
    iget v4, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v3, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 898
    .local v4, "removingUid":I
    iget-object v5, p0, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseSetArray;->remove(I)V

    .line 899
    iget-object v5, p0, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    invoke-virtual {v5}, Landroid/util/SparseSetArray;->size()I

    move-result v5

    sub-int/2addr v5, v2

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_0

    .line 900
    iget-object v2, p0, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 899
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 895
    .end local v3    # "userId":I
    .end local v4    # "removingUid":I
    .end local v5    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 904
    .end local v1    # "u":I
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    if-nez v1, :cond_2

    .line 905
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    iget v3, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v1, v3}, Landroid/util/SparseSetArray;->remove(I)V

    .line 906
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    invoke-virtual {v1}, Landroid/util/SparseSetArray;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_2

    .line 907
    iget-object v3, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v4

    iget v5, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 906
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 910
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    iget v3, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v1, v3}, Landroid/util/SparseSetArray;->remove(I)V

    .line 911
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    invoke-virtual {v1}, Landroid/util/SparseSetArray;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .restart local v1    # "i":I
    :goto_3
    if-ltz v1, :cond_3

    .line 912
    iget-object v3, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v4

    iget v5, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 911
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 915
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v3, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 917
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 918
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 919
    .local v1, "removingPackageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    .line 920
    .local v3, "protectedBroadcasts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p2, v1}, Lcom/android/server/pm/AppsFilter;->collectProtectedBroadcasts(Landroid/util/ArrayMap;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    .line 921
    invoke-interface {v4, v3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 922
    iput-boolean v2, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    .line 926
    .end local v1    # "removingPackageName":Ljava/lang/String;
    .end local v3    # "protectedBroadcasts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/server/om/OverlayReferenceMapper;->removePkg(Ljava/lang/String;)V

    .line 927
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v1, p1, v2}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->updatePackageState(Lcom/android/server/pm/PackageSetting;Z)V

    .line 933
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_6

    .line 934
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_4
    if-ltz v1, :cond_6

    .line 935
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_5

    .line 936
    goto :goto_5

    .line 938
    :cond_5
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    .line 939
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 938
    invoke-direct {p0, v3, p2}, Lcom/android/server/pm/AppsFilter;->addPackageInternal(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;)V

    .line 934
    :goto_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 943
    .end local v1    # "i":I
    :cond_6
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 944
    :try_start_0
    iget v3, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v3}, Lcom/android/server/pm/AppsFilter;->removeAppIdFromVisibilityCache(I)V

    .line 945
    iget-object v3, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    if-eqz v3, :cond_8

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_8

    .line 946
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_6
    if-ltz v3, :cond_8

    .line 947
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 948
    .local v2, "siblingSetting":Lcom/android/server/pm/PackageSetting;
    if-ne v2, p1, :cond_7

    .line 949
    goto :goto_7

    .line 951
    :cond_7
    iget-object v5, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 952
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v10

    .line 951
    move-object v4, p0

    move-object v7, v2

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v4 .. v10}, Lcom/android/server/pm/AppsFilter;->updateShouldFilterCacheForPackage(Landroid/util/SparseArray;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    .line 946
    .end local v2    # "siblingSetting":Lcom/android/server/pm/PackageSetting;
    :goto_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 955
    .end local v3    # "i":I
    :cond_8
    monitor-exit v1

    .line 956
    return-void

    .line 955
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public synthetic lambda$shouldFilterApplicationInternal$8$AppsFilter(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .locals 0
    .param p1, "settings"    # Landroid/util/ArrayMap;
    .param p2, "users"    # [Landroid/content/pm/UserInfo;

    .line 1140
    invoke-direct {p0, p1}, Lcom/android/server/pm/AppsFilter;->recomputeComponentVisibility(Landroid/util/ArrayMap;)V

    .line 1141
    return-void
.end method

.method public synthetic lambda$updateEntireShouldFilterCache$2$AppsFilter(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .locals 3
    .param p1, "settings"    # Landroid/util/ArrayMap;
    .param p2, "users"    # [Landroid/content/pm/UserInfo;

    .line 651
    nop

    .line 652
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/AppsFilter;->updateEntireShouldFilterCacheInner(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)Landroid/util/SparseArray;

    move-result-object v0

    .line 653
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 654
    :try_start_0
    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    .line 655
    monitor-exit v1

    .line 656
    return-void

    .line 655
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public synthetic lambda$updateEntireShouldFilterCacheAsync$5$AppsFilter()V
    .locals 8

    .line 672
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 673
    .local v0, "settingsCopy":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 674
    .local v1, "packagesCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    const/4 v2, 0x1

    new-array v3, v2, [[Landroid/content/pm/UserInfo;

    .line 675
    .local v3, "usersRef":[[Landroid/content/pm/UserInfo;
    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v5, Lcom/android/server/pm/-$$Lambda$AppsFilter$Ka0dVk-GezrqDhfgjEyDQxmM9Ww;

    invoke-direct {v5, v1, v0, v3}, Lcom/android/server/pm/-$$Lambda$AppsFilter$Ka0dVk-GezrqDhfgjEyDQxmM9Ww;-><init>(Landroid/util/ArrayMap;Landroid/util/ArrayMap;[[Landroid/content/pm/UserInfo;)V

    invoke-interface {v4, v5}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V

    .line 686
    const/4 v4, 0x0

    aget-object v5, v3, v4

    .line 687
    invoke-direct {p0, v0, v5}, Lcom/android/server/pm/AppsFilter;->updateEntireShouldFilterCacheInner(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)Landroid/util/SparseArray;

    move-result-object v5

    .line 688
    .local v5, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    new-array v2, v2, [Z

    .line 690
    .local v2, "changed":[Z
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v7, Lcom/android/server/pm/-$$Lambda$AppsFilter$qJp_oOatcHh0MBvABBIIUuEII5Y;

    invoke-direct {v7, v0, v2, v1}, Lcom/android/server/pm/-$$Lambda$AppsFilter$qJp_oOatcHh0MBvABBIIUuEII5Y;-><init>(Landroid/util/ArrayMap;[ZLandroid/util/ArrayMap;)V

    invoke-interface {v6, v7}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V

    .line 703
    aget-boolean v4, v2, v4

    if-eqz v4, :cond_0

    .line 705
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilter;->updateEntireShouldFilterCache()V

    goto :goto_0

    .line 710
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    monitor-enter v4

    .line 711
    :try_start_0
    iput-object v5, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    .line 712
    monitor-exit v4

    .line 714
    :goto_0
    return-void

    .line 712
    :catchall_0
    move-exception v6

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public synthetic lambda$updateShouldFilterCacheForPackage$6$AppsFilter(Ljava/lang/String;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "settings"    # Landroid/util/ArrayMap;
    .param p3, "users"    # [Landroid/content/pm/UserInfo;

    .line 729
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    .line 730
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 731
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 729
    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/AppsFilter;->updateShouldFilterCacheForPackage(Landroid/util/SparseArray;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    .line 732
    return-void
.end method

.method public onSystemReady()V
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayReferenceMapper;->rebuildIfDeferred()V

    .line 511
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v0}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->onSystemReady()V

    .line 513
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilter;->updateEntireShouldFilterCacheAsync()V

    .line 514
    return-void
.end method

.method public onUsersChanged()V
    .locals 2

    .line 718
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 719
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 720
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilter;->updateEntireShouldFilterCache()V

    .line 722
    :cond_0
    monitor-exit v0

    .line 723
    return-void

    .line 722
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removePackage(Lcom/android/server/pm/PackageSetting;)V
    .locals 2
    .param p1, "setting"    # Lcom/android/server/pm/PackageSetting;

    .line 893
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$AppsFilter$m9e6KveD-qG6Qk2Uvzs81pEsBCc;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/-$$Lambda$AppsFilter$m9e6KveD-qG6Qk2Uvzs81pEsBCc;-><init>(Lcom/android/server/pm/AppsFilter;Lcom/android/server/pm/PackageSetting;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V

    .line 957
    return-void
.end method

.method public shouldFilterApplication(ILcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;I)Z
    .locals 11
    .param p1, "callingUid"    # I
    .param p2, "callingSetting"    # Lcom/android/server/pm/SettingBase;
    .param p3, "targetPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p4, "userId"    # I

    .line 971
    const-wide/32 v0, 0x40000

    const-string/jumbo v2, "shouldFilterApplication"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 973
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 974
    .local v2, "callingAppId":I
    const/16 v3, 0x2710

    const/4 v4, 0x0

    if-lt v2, v3, :cond_7

    iget v5, p3, Lcom/android/server/pm/PackageSetting;->appId:I

    if-lt v5, v3, :cond_7

    iget v3, p3, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ne v2, v3, :cond_0

    goto/16 :goto_1

    .line 979
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 980
    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    .line 981
    iget-object v5, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseBooleanArray;

    .line 982
    .local v5, "shouldFilterTargets":Landroid/util/SparseBooleanArray;
    iget v7, p3, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {p4, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    .line 983
    .local v7, "targetUid":I
    if-nez v5, :cond_1

    .line 984
    const-string v4, "AppsFilter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Encountered calling uid with no cached rules: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1009
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 986
    return v6

    .line 988
    :cond_1
    :try_start_2
    invoke-virtual {v5, v7}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v8

    .line 989
    .local v8, "indexOfTargetUid":I
    if-gez v8, :cond_2

    .line 990
    const-string v4, "AppsFilter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Encountered calling -> target with no cached rules: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1009
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 992
    return v6

    .line 994
    :cond_2
    :try_start_3
    invoke-virtual {v5, v8}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v9

    if-nez v9, :cond_3

    .line 995
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1009
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 995
    return v4

    .line 997
    .end local v5    # "shouldFilterTargets":Landroid/util/SparseBooleanArray;
    .end local v7    # "targetUid":I
    .end local v8    # "indexOfTargetUid":I
    :cond_3
    goto :goto_0

    .line 998
    :cond_4
    :try_start_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/AppsFilter;->shouldFilterApplicationInternal(ILcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1000
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1009
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1000
    return v4

    .line 1003
    :cond_5
    :goto_0
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1004
    :try_start_6
    iget-object v3, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v3, v2}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->isLoggingEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1005
    const-string v3, "BLOCKED"

    invoke-static {p2, p3, v3}, Lcom/android/server/pm/AppsFilter;->log(Lcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1007
    :cond_6
    nop

    .line 1009
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1007
    return v6

    .line 1003
    :catchall_0
    move-exception v4

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .end local p1    # "callingUid":I
    .end local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local p4    # "userId":I
    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 977
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .restart local p1    # "callingUid":I
    .restart local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .restart local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local p4    # "userId":I
    :cond_7
    :goto_1
    nop

    .line 1009
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 977
    return v4

    .line 1009
    .end local v2    # "callingAppId":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1010
    throw v2
.end method
