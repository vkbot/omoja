.class public Lcom/android/packageinstaller/UninstallFinish;
.super Landroid/content/BroadcastReceiver;
.source "UninstallFinish.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/android/packageinstaller/UninstallFinish;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/packageinstaller/UninstallFinish;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private addDeviceManagerButton(Landroid/content/Context;Landroid/app/Notification$Builder;)V
    .locals 5

    .line 254
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$DeviceAdminSettingsActivity"

    .line 255
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x50000000

    .line 257
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 259
    new-instance v0, Landroid/app/Notification$Action$Builder;

    const v1, 0x7f070064

    .line 260
    invoke-static {p1, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    const v2, 0x7f0e0065

    .line 261
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    .line 262
    invoke-static {p1, v3, p0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 263
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    .line 259
    invoke-virtual {p2, p0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    return-void
.end method

.method private addManageUsersButton(Landroid/content/Context;Landroid/app/Notification$Builder;)V
    .locals 5

    .line 236
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.USER_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x50000000

    .line 237
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 239
    new-instance v0, Landroid/app/Notification$Action$Builder;

    const v1, 0x7f070067

    .line 240
    invoke-static {p1, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    const v2, 0x7f0e0067

    .line 241
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    .line 242
    invoke-static {p1, v3, p0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 243
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    .line 239
    invoke-virtual {p2, p0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    return-void
.end method

.method private isProfileOfOrSame(Landroid/os/UserManager;II)Z
    .locals 0

    const/4 p0, 0x1

    if-ne p2, p3, :cond_0

    return p0

    .line 213
    :cond_0
    invoke-virtual {p1, p3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 214
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setBigText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)V
    .locals 0

    .line 225
    new-instance p0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {p0, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    .line 57
    sget-object v3, Lcom/android/packageinstaller/UninstallFinish;->LOG_TAG:Ljava/lang/String;

    const-string v4, "android.content.pm.extra.STATUS"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 59
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Uninstall finished extras="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    const-string v1, "android.intent.extra.INTENT"

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v6, "com.android.packageinstaller.extra.UNINSTALL_ID"

    .line 66
    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "com.android.packageinstaller.applicationInfo"

    .line 67
    invoke-virtual {v0, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    const-string v8, "com.android.packageinstaller.extra.APP_LABEL"

    .line 69
    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.extra.UNINSTALL_ALL_USERS"

    .line 70
    invoke-virtual {v0, v9, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 72
    const-class v10, Landroid/app/NotificationManager;

    .line 73
    invoke-virtual {v2, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 74
    const-class v11, Landroid/os/UserManager;

    invoke-virtual {v2, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UserManager;

    .line 76
    new-instance v12, Landroid/app/NotificationChannel;

    const v13, 0x7f0e0084

    .line 78
    invoke-virtual {v2, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x3

    const-string v15, "uninstall failure"

    invoke-direct {v12, v15, v13, v14}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 80
    invoke-virtual {v10, v12}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 82
    new-instance v12, Landroid/app/Notification$Builder;

    invoke-direct {v12, v2, v15}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v4, :cond_e

    const/4 v14, 0x2

    const-string v15, " with code "

    const-string v13, "Uninstall failed for "

    if-eq v4, v14, :cond_1

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move/from16 v16, v6

    move-object/from16 v18, v8

    move-object/from16 v17, v10

    goto/16 :goto_7

    :cond_1
    const-string v14, "android.content.pm.extra.LEGACY_STATUS"

    .line 93
    invoke-virtual {v0, v14, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v14, -0x4

    const-string v5, "Failed to talk to package manager"

    if-eq v0, v14, :cond_7

    const/4 v4, -0x2

    if-eq v0, v4, :cond_2

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uninstall blocked for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with legacy code "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "device_policy"

    .line 98
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 97
    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v4

    .line 100
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    .line 102
    invoke-virtual {v11}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 105
    iget v15, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v1, v11, v9, v15}, Lcom/android/packageinstaller/UninstallFinish;->isProfileOfOrSame(Landroid/os/UserManager;II)Z

    move-result v15

    if-eqz v15, :cond_4

    goto :goto_1

    .line 110
    :cond_4
    :try_start_0
    iget-object v15, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v13, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v4, v15, v13}, Landroid/app/admin/IDevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v13
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v13, :cond_3

    move-object v13, v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 115
    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_5
    const/4 v13, 0x0

    :goto_2
    const-string v0, "Uninstall failed because "

    if-nez v13, :cond_6

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is a device admin"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-direct {v1, v2, v12}, Lcom/android/packageinstaller/UninstallFinish;->addDeviceManagerButton(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    const v0, 0x7f0e0081

    .line 123
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v12, v0}, Lcom/android/packageinstaller/UninstallFinish;->setBigText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 126
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is a device admin of user "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0e0082

    .line 129
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v3, v13, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v12, v0}, Lcom/android/packageinstaller/UninstallFinish;->setBigText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "package"

    .line 137
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 136
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v14

    move/from16 v16, v6

    .line 139
    invoke-virtual {v11}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    move-object/from16 v17, v10

    const/4 v10, 0x0

    .line 141
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    move-object/from16 v18, v8

    if-ge v10, v0, :cond_9

    .line 142
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 144
    :try_start_1
    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v19, v6

    :try_start_2
    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v14, v8, v6}, Landroid/content/pm/IPackageManager;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 146
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v19, v6

    .line 151
    :goto_4
    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v8, v18

    move-object/from16 v6, v19

    goto :goto_3

    :cond_9
    const/16 v0, -0x2710

    .line 155
    :goto_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 156
    invoke-direct {v1, v11, v5, v0}, Lcom/android/packageinstaller/UninstallFinish;->isProfileOfOrSame(Landroid/os/UserManager;II)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 157
    invoke-direct {v1, v2, v12}, Lcom/android/packageinstaller/UninstallFinish;->addDeviceManagerButton(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    goto :goto_6

    .line 159
    :cond_a
    invoke-direct {v1, v2, v12}, Lcom/android/packageinstaller/UninstallFinish;->addManageUsersButton(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    :goto_6
    const/16 v5, -0x2710

    if-ne v0, v5, :cond_b

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " no blocking user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_b
    if-nez v0, :cond_c

    const v0, 0x7f0e007b

    .line 168
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-direct {v1, v12, v0}, Lcom/android/packageinstaller/UninstallFinish;->setBigText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_c
    if-eqz v9, :cond_d

    const v0, 0x7f0e0076

    .line 172
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-direct {v1, v12, v0}, Lcom/android/packageinstaller/UninstallFinish;->setBigText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_d
    const v0, 0x7f0e007c

    .line 175
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v12, v0}, Lcom/android/packageinstaller/UninstallFinish;->setBigText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)V

    :goto_7
    const v0, 0x7f0e0080

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v18, v1, v3

    .line 193
    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {v12, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 194
    invoke-virtual {v12, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const v0, 0x7f070062

    .line 195
    invoke-virtual {v12, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 196
    invoke-virtual {v12}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    move/from16 v1, v16

    move-object/from16 v10, v17

    invoke-virtual {v10, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_e
    move v3, v5

    move v1, v6

    move-object/from16 v18, v8

    .line 87
    invoke-virtual {v10, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const v0, 0x7f0e007e

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v18, v4, v3

    .line 89
    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
