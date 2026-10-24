.class public Lcom/android/packageinstaller/wear/WearPackageInstallerService;
.super Landroid/app/Service;
.source "WearPackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageDeleteObserver;,
        Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallListener;,
        Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;
    }
.end annotation


# static fields
.field private static volatile lockStatic:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private mInstallNotificationId:I

.field private final mNotifIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationChannel:Landroid/app/NotificationChannel;

.field private mServiceHandler:Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    .line 91
    iput v0, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->mInstallNotificationId:I

    .line 92
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->mNotifIdMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/Bundle;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->installPackage(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/Bundle;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->uninstallPackage(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/PowerManager$WakeLock;I)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishService(Landroid/os/PowerManager$WakeLock;I)V

    return-void
.end method

.method private declared-synchronized buildNotification(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 566
    :try_start_0
    iget-object v0, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->mNotifIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->mNotifIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    .line 569
    :cond_0
    iget v0, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->mInstallNotificationId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->mInstallNotificationId:I

    .line 570
    iget-object v1, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->mNotifIdMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p1, v0

    .line 573
    :goto_0
    iget-object v0, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->mNotificationChannel:Landroid/app/NotificationChannel;

    if-nez v0, :cond_1

    .line 574
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "wear_app_install_uninstall"

    const v2, 0x7f0e0091

    .line 575
    invoke-virtual {p0, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v0, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 576
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 577
    iget-object v1, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 579
    :cond_1
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Landroid/app/Notification$Builder;

    const-string v2, "wear_app_install_uninstall"

    invoke-direct {v1, p0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f070063

    .line 580
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 581
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 582
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private checkPermissions(Landroid/content/pm/PackageInfo;IILandroid/net/Uri;Ljava/util/List;Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "II",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .line 395
    iget-object p3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 p6, 0x1

    const/16 v0, 0x17

    if-lt p3, v0, :cond_0

    return p6

    .line 400
    :cond_0
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, p4, p5}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->doesWearHaveUngrantedPerms(Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_1

    return p6

    :cond_1
    if-eqz p2, :cond_2

    if-lt p2, v0, :cond_3

    :cond_2
    const-string p0, "WearPkgInstallerService"

    const-string p1, "MNC: Wear app\'s targetSdkVersion should be at least 23, if phone app is targeting at least 23, will continue."

    .line 408
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private doesWearHaveUngrantedPerms(Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "WearPkgInstallerService"

    const/4 v1, 0x1

    if-nez p2, :cond_0

    const-string p0, "Permission URI is null"

    .line 425
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 429
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "Could not get the cursor for the permissions"

    .line 431
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 436
    :cond_1
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 437
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 438
    :cond_2
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 441
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    const/4 v3, 0x3

    .line 442
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getType(I)I

    move-result v5

    if-ne v3, v5, :cond_2

    .line 443
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getType(I)I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 444
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 445
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 446
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_3

    .line 447
    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 449
    :cond_3
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 453
    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 456
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 457
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 459
    invoke-interface {v2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, " has a permission \""

    const-string v5, "Wearable "

    if-nez v3, :cond_6

    .line 462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\" that is not defined in the host application\'s manifest."

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 465
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\" that is not granted in the host application."

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move v4, v1

    goto :goto_1

    :cond_7
    return v4
.end method

.method private finishService(Landroid/os/PowerManager$WakeLock;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 482
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 485
    :cond_0
    invoke-virtual {p0, p2}, Landroid/app/Service;->stopSelf(I)V

    return-void
.end method

.method private finishServiceEarly(I)V
    .locals 2

    .line 476
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 475
    invoke-direct {p0, v0, v1}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->buildNotification(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 477
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification;

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    const/4 v0, 0x0

    .line 478
    invoke-direct {p0, v0, p1}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishService(Landroid/os/PowerManager$WakeLock;I)V

    return-void
.end method

.method private getLabelAndUpdateNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 587
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 588
    invoke-direct {p0, p1, p2}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->buildNotification(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    .line 589
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/app/Notification;

    invoke-virtual {v0, p1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private declared-synchronized getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;
    .locals 2

    monitor-enter p0

    .line 489
    :try_start_0
    sget-object v0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->lockStatic:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    const-string v0, "power"

    .line 491
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 493
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 492
    invoke-virtual {v0, v1, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    sput-object p1, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->lockStatic:Landroid/os/PowerManager$WakeLock;

    .line 494
    sget-object p1, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->lockStatic:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 496
    :cond_0
    sget-object p1, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->lockStatic:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private installPackage(Landroid/os/Bundle;)V
    .locals 28

    move-object/from16 v8, p0

    const-string v0, "r"

    .line 193
    invoke-static/range {p1 .. p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->getStartId(Landroid/os/Bundle;)I

    move-result v9

    .line 194
    invoke-static/range {p1 .. p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->getPackageName(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v10

    .line 195
    invoke-static/range {p1 .. p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->getAssetUri(Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v11

    .line 196
    invoke-static/range {p1 .. p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->getPermUri(Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v5

    .line 197
    invoke-static/range {p1 .. p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->checkPerms(Landroid/os/Bundle;)Z

    move-result v1

    .line 198
    invoke-static/range {p1 .. p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->skipIfSameVersion(Landroid/os/Bundle;)Z

    move-result v2

    .line 199
    invoke-static/range {p1 .. p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->getCompanionSdkVersion(Landroid/os/Bundle;)I

    move-result v3

    .line 200
    invoke-static/range {p1 .. p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->getCompanionDeviceVersion(Landroid/os/Bundle;)I

    move-result v4

    .line 201
    invoke-static/range {p1 .. p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->getCompressionAlg(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    .line 202
    invoke-static/range {p1 .. p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->skipIfLowerVersion(Landroid/os/Bundle;)Z

    move-result v7

    const-string v12, "WearPkgInstallerService"

    const/4 v13, 0x3

    .line 204
    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 205
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Installing package: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", assetUri: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ",permUri: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ", startId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", checkPerms: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", skipIfSameVersion: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", compressionAlg: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", companionSdkVersion: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", companionDeviceVersion: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", skipIfLowerVersion: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 215
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v8, v15}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v15

    const v13, 0x401000

    const/16 v16, 0x0

    const/16 v17, 0x2

    move-object/from16 v18, v5

    const/16 v19, 0x0

    .line 220
    :try_start_0
    invoke-virtual {v14, v10, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v13, :cond_1

    move/from16 v20, v17

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_0
    move/from16 v5, v19

    goto/16 :goto_10

    :catch_0
    move-exception v0

    :goto_1
    move/from16 v5, v19

    goto/16 :goto_e

    :catch_1
    move-object/from16 v13, v16

    :cond_1
    move/from16 v20, v19

    :goto_2
    and-int/lit8 v20, v20, 0x2

    if-eqz v20, :cond_2

    const/4 v5, 0x3

    .line 230
    :try_start_1
    invoke-static {v12, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 231
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v4

    const-string v4, "Replacing package:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    move/from16 v21, v4

    .line 240
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 241
    invoke-virtual {v4, v11, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 242
    invoke-static {v8, v4, v10, v6}, Lcom/android/packageinstaller/wear/WearPackageUtil;->getFileFromFd(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_4

    .line 245
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not create a temp file from FD for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v6, :cond_3

    .line 353
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 355
    :cond_3
    invoke-direct {v8, v15, v9}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishService(Landroid/os/PowerManager$WakeLock;I)V

    return-void

    :catchall_1
    move-exception v0

    move-object/from16 v16, v6

    goto :goto_0

    :catch_2
    move-exception v0

    move-object/from16 v16, v6

    goto :goto_1

    :cond_4
    const/16 v4, 0x5000

    .line 248
    :try_start_3
    invoke-static {v8, v6, v4}, Lcom/android/packageinstaller/PackageUtil;->getPackageInfo(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-nez v4, :cond_6

    .line 251
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not parse apk information for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v6, :cond_5

    .line 353
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 355
    :cond_5
    invoke-direct {v8, v15, v9}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishService(Landroid/os/PowerManager$WakeLock;I)V

    return-void

    .line 255
    :cond_6
    :try_start_5
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    if-nez v5, :cond_8

    .line 256
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wearable Package Name has to match what is provided for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v6, :cond_7

    .line 353
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 355
    :cond_7
    invoke-direct {v8, v15, v9}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishService(Landroid/os/PowerManager$WakeLock;I)V

    return-void

    .line 261
    :cond_8
    :try_start_7
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    .line 262
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 263
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    move-object/from16 v23, v11

    const/4 v11, 0x1

    :try_start_8
    new-array v0, v11, [Ljava/lang/Object;

    .line 265
    invoke-virtual {v5, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v0, v19

    const v5, 0x7f0e003c

    invoke-virtual {v8, v5, v0}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-direct {v8, v10, v0}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->getLabelAndUpdateNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-eqz v13, :cond_11

    move-object v11, v0

    move v5, v1

    .line 271
    :try_start_9
    invoke-virtual {v4}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    .line 272
    invoke-virtual {v13}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v24
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    cmp-long v16, v24, v0

    move/from16 v24, v3

    const-string v3, "; not installing due to versionCheck"

    move/from16 v25, v5

    const-string v5, "Version number of new app ("

    if-nez v16, :cond_b

    if-eqz v2, :cond_a

    .line 274
    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Version number ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") of new app is equal to existing app for "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v6, :cond_9

    .line 353
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 355
    :cond_9
    invoke-direct {v8, v15, v9}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishService(Landroid/os/PowerManager$WakeLock;I)V

    return-void

    .line 279
    :cond_a
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") is equal to existing app for "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 282
    :cond_b
    invoke-virtual {v13}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v26
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    cmp-long v2, v26, v0

    if-lez v2, :cond_e

    const-string v2, ") for "

    move-object/from16 v26, v14

    const-string v14, ") is lower than existing app ( "

    if-eqz v7, :cond_d

    .line 285
    :try_start_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v13}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v6, :cond_c

    .line 353
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 355
    :cond_c
    invoke-direct {v8, v15, v9}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishService(Landroid/os/PowerManager$WakeLock;I)V

    return-void

    .line 291
    :cond_d
    :try_start_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v13}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_e
    :goto_4
    move-object/from16 v26, v14

    .line 299
    :goto_5
    iget-object v0, v13, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_12

    move/from16 v0, v19

    .line 300
    :goto_6
    iget-object v1, v13, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 302
    iget-object v1, v13, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v1, v1, v0

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_10

    const/4 v1, 0x3

    .line 304
    invoke-static {v12, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v13, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is already granted for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_f
    iget-object v2, v13, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v11, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_7

    :cond_10
    const/4 v1, 0x3

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v16, v6

    :goto_8
    move/from16 v5, v19

    move-object/from16 v11, v23

    goto/16 :goto_e

    :cond_11
    move-object v11, v0

    move/from16 v25, v1

    move/from16 v24, v3

    move-object/from16 v26, v14

    .line 316
    :cond_12
    :try_start_e
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    array-length v1, v0
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    move/from16 v3, v19

    const/4 v2, 0x1

    :goto_9
    if-ge v3, v1, :cond_16

    :try_start_f
    aget-object v5, v0, v3

    .line 317
    iget-object v7, v5, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v7, :cond_13

    iget-object v7, v5, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    move-object/from16 v13, v26

    invoke-virtual {v13, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_14

    iget v7, v5, Landroid/content/pm/FeatureInfo;->flags:I

    const/4 v14, 0x1

    and-int/2addr v7, v14

    if-eqz v7, :cond_15

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wearable does not have required feature: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move/from16 v2, v19

    goto :goto_a

    :cond_13
    move-object/from16 v13, v26

    :cond_14
    const/4 v14, 0x1

    :cond_15
    :goto_a
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v26, v13

    goto :goto_9

    :cond_16
    const/4 v14, 0x1

    if-nez v2, :cond_18

    if-eqz v6, :cond_17

    .line 353
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 355
    :cond_17
    invoke-direct {v8, v15, v9}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishService(Landroid/os/PowerManager$WakeLock;I)V

    return-void

    :cond_18
    if-eqz v25, :cond_1a

    move-object/from16 v1, p0

    move-object v2, v4

    move/from16 v3, v24

    move/from16 v4, v21

    move v13, v14

    move-object/from16 v5, v18

    move-object v14, v6

    move-object v6, v11

    move-object v7, v14

    .line 333
    :try_start_10
    invoke-direct/range {v1 .. v7}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->checkPermissions(Landroid/content/pm/PackageInfo;IILandroid/net/Uri;Ljava/util/List;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "Wearable does not have enough permissions."

    .line 335
    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    if-eqz v14, :cond_19

    .line 353
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 355
    :cond_19
    invoke-direct {v8, v15, v9}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishService(Landroid/os/PowerManager$WakeLock;I)V

    return-void

    :catchall_2
    move-exception v0

    move-object/from16 v16, v14

    goto/16 :goto_0

    :catch_4
    move-exception v0

    move-object/from16 v16, v14

    goto/16 :goto_8

    :cond_1a
    move v13, v14

    move-object v14, v6

    .line 340
    :cond_1b
    :try_start_11
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    move-object/from16 v1, v22

    move-object/from16 v11, v23

    :try_start_12
    invoke-virtual {v0, v11, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 341
    invoke-static/range {p0 .. p0}, Lcom/android/packageinstaller/wear/PackageInstallerFactory;->getPackageInstaller(Landroid/content/Context;)Lcom/android/packageinstaller/wear/PackageInstallerImpl;

    move-result-object v7

    new-instance v6, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallListener;
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    const/16 v16, 0x0

    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    move-object v4, v15

    move v5, v9

    move-object v13, v6

    move-object v6, v10

    move-object/from16 p1, v14

    move-object v14, v7

    move-object/from16 v7, v16

    :try_start_13
    invoke-direct/range {v1 .. v7}, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallListener;-><init>(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/content/Context;Landroid/os/PowerManager$WakeLock;ILjava/lang/String;Lcom/android/packageinstaller/wear/WearPackageInstallerService$1;)V

    invoke-virtual {v14, v10, v0, v13}, Lcom/android/packageinstaller/wear/PackageInstallerImpl;->install(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Lcom/android/packageinstaller/wear/PackageInstallerImpl$InstallListener;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 345
    :try_start_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sent installation request for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    goto :goto_f

    :catchall_3
    move-exception v0

    move-object/from16 v16, p1

    const/4 v5, 0x1

    goto :goto_10

    :catch_5
    move-exception v0

    move-object/from16 v16, p1

    const/4 v5, 0x1

    goto :goto_e

    :catchall_4
    move-exception v0

    goto :goto_c

    :catch_6
    move-exception v0

    goto :goto_d

    :catch_7
    move-exception v0

    move-object/from16 p1, v14

    goto :goto_d

    :catchall_5
    move-exception v0

    move-object/from16 p1, v14

    goto :goto_c

    :catch_8
    move-exception v0

    move-object/from16 p1, v14

    goto :goto_b

    :catch_9
    move-exception v0

    move-object/from16 p1, v6

    :goto_b
    move-object/from16 v11, v23

    goto :goto_d

    :catchall_6
    move-exception v0

    move-object/from16 p1, v6

    :goto_c
    move-object/from16 v16, p1

    goto/16 :goto_0

    :catch_a
    move-exception v0

    move-object/from16 p1, v6

    :goto_d
    move-object/from16 v16, p1

    goto/16 :goto_1

    .line 347
    :goto_e
    :try_start_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find the file with URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    if-nez v5, :cond_1d

    if-eqz v16, :cond_1c

    .line 353
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 355
    :cond_1c
    invoke-direct {v8, v15, v9}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishService(Landroid/os/PowerManager$WakeLock;I)V

    :cond_1d
    :goto_f
    return-void

    :catchall_7
    move-exception v0

    :goto_10
    if-nez v5, :cond_1f

    if-eqz v16, :cond_1e

    .line 353
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 355
    :cond_1e
    invoke-direct {v8, v15, v9}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishService(Landroid/os/PowerManager$WakeLock;I)V

    .line 357
    :cond_1f
    throw v0
.end method

.method private uninstallPackage(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "WearPkgInstallerService"

    .line 365
    invoke-static {p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->getStartId(Landroid/os/Bundle;)I

    move-result v1

    .line 366
    invoke-static {p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->getPackageName(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 368
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 369
    invoke-virtual {p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 371
    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    const v6, 0x7f0e008a

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 372
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 373
    invoke-virtual {v5, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-virtual {p0, v6, v7}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 372
    invoke-direct {p0, p1, v4}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->getLabelAndUpdateNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    new-instance v4, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageDeleteObserver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v2, v1, v5}, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageDeleteObserver;-><init>(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/PowerManager$WakeLock;ILcom/android/packageinstaller/wear/WearPackageInstallerService$1;)V

    const/4 v5, 0x2

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 379
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sent delete request for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 382
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find package, not deleting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    invoke-direct {p0, v2, v1}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishService(Landroid/os/PowerManager$WakeLock;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    .line 121
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 122
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PackageInstallerThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 124
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 126
    new-instance v1, Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;-><init>(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->mServiceHandler:Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .line 131
    invoke-static {p0}, Lcom/android/packageinstaller/DeviceUtils;->isWear(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x2

    const-string v1, "WearPkgInstallerService"

    if-nez p2, :cond_0

    const-string p1, "Not running on wearable."

    .line 132
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-direct {p0, p3}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishServiceEarly(I)V

    return v0

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "Got null intent."

    .line 138
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-direct {p0, p3}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishServiceEarly(I)V

    return v0

    :cond_1
    const/4 p2, 0x3

    .line 143
    invoke-static {v1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 144
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got install/uninstall request "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_3

    const-string p1, "No package URI in intent"

    .line 149
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0, p3}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishServiceEarly(I)V

    return v0

    .line 154
    :cond_3
    invoke-static {p2}, Lcom/android/packageinstaller/wear/WearPackageUtil;->getSanitizedPackageName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid package name in URI (expected package:<pkgName>): "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct {p0, p3}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishServiceEarly(I)V

    return v0

    .line 161
    :cond_4
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    .line 162
    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_5

    .line 163
    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 166
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_6

    .line 168
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 170
    :cond_6
    invoke-static {p2, p3}, Lcom/android/packageinstaller/wear/WearPackageArgs;->setStartId(Landroid/os/Bundle;I)Landroid/os/Bundle;

    .line 171
    invoke-static {p2, v2}, Lcom/android/packageinstaller/wear/WearPackageArgs;->setPackageName(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    .line 174
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.INSTALL_PACKAGE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 175
    iget-object p1, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->mServiceHandler:Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const p3, 0x7f0e003b

    .line 176
    invoke-virtual {p0, p3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 177
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 178
    iget-object p1, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->mServiceHandler:Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const p3, 0x7f0e0089

    .line 179
    invoke-virtual {p0, p3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 185
    :goto_0
    invoke-direct {p0, v2, p3}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->buildNotification(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p3

    .line 186
    iget-object v1, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Landroid/app/Notification;

    invoke-virtual {p0, v1, p3}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 187
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 188
    iget-object p0, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->mServiceHandler:Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v0

    .line 181
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown action : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-direct {p0, p3}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishServiceEarly(I)V

    return v0
.end method
