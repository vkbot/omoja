.class public abstract Landroid/app/INotificationManager$Stub;
.super Landroid/os/Binder;
.source "INotificationManager.java"

# interfaces
.implements Landroid/app/INotificationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/INotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/INotificationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.INotificationManager"

.field static final TRANSACTION_addAutomaticZenRule:I = 0x52

.field static final TRANSACTION_applyAdjustmentFromAssistant:I = 0x37

.field static final TRANSACTION_applyAdjustmentsFromAssistant:I = 0x38

.field static final TRANSACTION_applyEnqueuedAdjustmentFromAssistant:I = 0x36

.field static final TRANSACTION_applyRestore:I = 0x58

.field static final TRANSACTION_areNotificationsEnabled:I = 0xc

.field static final TRANSACTION_areNotificationsEnabledForPackage:I = 0xb

.field static final TRANSACTION_canShowBadge:I = 0x9

.field static final TRANSACTION_cancelAllNotifications:I = 0x1

.field static final TRANSACTION_cancelNotificationFromListener:I = 0x22

.field static final TRANSACTION_cancelNotificationWithTag:I = 0x7

.field static final TRANSACTION_cancelNotificationsFromListener:I = 0x23

.field static final TRANSACTION_cancelToast:I = 0x4

.field static final TRANSACTION_clearData:I = 0x2

.field static final TRANSACTION_createNotificationChannelGroups:I = 0xe

.field static final TRANSACTION_createNotificationChannels:I = 0xf

.field static final TRANSACTION_createNotificationChannelsForPackage:I = 0x10

.field static final TRANSACTION_deleteNotificationChannel:I = 0x16

.field static final TRANSACTION_deleteNotificationChannelGroup:I = 0x1b

.field static final TRANSACTION_enqueueNotificationWithTag:I = 0x6

.field static final TRANSACTION_enqueueToast:I = 0x3

.field static final TRANSACTION_enqueueToastInDisplay:I = 0x5

.field static final TRANSACTION_getActiveNotifications:I = 0x1e

.field static final TRANSACTION_getActiveNotificationsFromListener:I = 0x2b

.field static final TRANSACTION_getAppActiveNotifications:I = 0x59

.field static final TRANSACTION_getAutomaticZenRule:I = 0x50

.field static final TRANSACTION_getBackupPayload:I = 0x57

.field static final TRANSACTION_getDeletedChannelCount:I = 0x1a

.field static final TRANSACTION_getEffectsSuppressor:I = 0x3a

.field static final TRANSACTION_getEnabledNotificationListenerPackages:I = 0x44

.field static final TRANSACTION_getEnabledNotificationListeners:I = 0x45

.field static final TRANSACTION_getHintsFromListener:I = 0x2e

.field static final TRANSACTION_getHistoricalNotifications:I = 0x1f

.field static final TRANSACTION_getInterruptionFilterFromListener:I = 0x30

.field static final TRANSACTION_getNotificationChannel:I = 0x14

.field static final TRANSACTION_getNotificationChannelForPackage:I = 0x15

.field static final TRANSACTION_getNotificationChannelGroupForPackage:I = 0x12

.field static final TRANSACTION_getNotificationChannelGroups:I = 0x1c

.field static final TRANSACTION_getNotificationChannelGroupsForPackage:I = 0x11

.field static final TRANSACTION_getNotificationChannelGroupsFromPrivilegedListener:I = 0x35

.field static final TRANSACTION_getNotificationChannels:I = 0x17

.field static final TRANSACTION_getNotificationChannelsForPackage:I = 0x18

.field static final TRANSACTION_getNotificationChannelsFromPrivilegedListener:I = 0x34

.field static final TRANSACTION_getNotificationPolicy:I = 0x4b

.field static final TRANSACTION_getNumNotificationChannelsForPackage:I = 0x19

.field static final TRANSACTION_getPackageImportance:I = 0xd

.field static final TRANSACTION_getRuleInstanceCount:I = 0x56

.field static final TRANSACTION_getSnoozedNotificationsFromListener:I = 0x2c

.field static final TRANSACTION_getZenMode:I = 0x46

.field static final TRANSACTION_getZenModeConfig:I = 0x47

.field static final TRANSACTION_getZenRules:I = 0x51

.field static final TRANSACTION_isNotificationAssistantAccessGranted:I = 0x3f

.field static final TRANSACTION_isNotificationListenerAccessGranted:I = 0x3d

.field static final TRANSACTION_isNotificationListenerAccessGrantedForUser:I = 0x3e

.field static final TRANSACTION_isNotificationPolicyAccessGranted:I = 0x4a

.field static final TRANSACTION_isNotificationPolicyAccessGrantedForPackage:I = 0x4d

.field static final TRANSACTION_isSystemConditionProviderEnabled:I = 0x3c

.field static final TRANSACTION_matchesCallFilter:I = 0x3b

.field static final TRANSACTION_notifyConditions:I = 0x49

.field static final TRANSACTION_onlyHasDefaultChannel:I = 0x1d

.field static final TRANSACTION_registerListener:I = 0x20

.field static final TRANSACTION_removeAutomaticZenRule:I = 0x54

.field static final TRANSACTION_removeAutomaticZenRules:I = 0x55

.field static final TRANSACTION_requestBindListener:I = 0x26

.field static final TRANSACTION_requestBindProvider:I = 0x28

.field static final TRANSACTION_requestHintsFromListener:I = 0x2d

.field static final TRANSACTION_requestInterruptionFilterFromListener:I = 0x2f

.field static final TRANSACTION_requestUnbindListener:I = 0x27

.field static final TRANSACTION_requestUnbindProvider:I = 0x29

.field static final TRANSACTION_setInterruptionFilter:I = 0x32

.field static final TRANSACTION_setNotificationAssistantAccessGranted:I = 0x41

.field static final TRANSACTION_setNotificationAssistantAccessGrantedForUser:I = 0x43

.field static final TRANSACTION_setNotificationListenerAccessGranted:I = 0x40

.field static final TRANSACTION_setNotificationListenerAccessGrantedForUser:I = 0x42

.field static final TRANSACTION_setNotificationPolicy:I = 0x4c

.field static final TRANSACTION_setNotificationPolicyAccessGranted:I = 0x4e

.field static final TRANSACTION_setNotificationPolicyAccessGrantedForUser:I = 0x4f

.field static final TRANSACTION_setNotificationsEnabledForPackage:I = 0xa

.field static final TRANSACTION_setNotificationsShownFromListener:I = 0x2a

.field static final TRANSACTION_setOnNotificationPostedTrimFromListener:I = 0x31

.field static final TRANSACTION_setShowBadge:I = 0x8

.field static final TRANSACTION_setZenMode:I = 0x48

.field static final TRANSACTION_snoozeNotificationUntilContextFromListener:I = 0x24

.field static final TRANSACTION_snoozeNotificationUntilFromListener:I = 0x25

.field static final TRANSACTION_unregisterListener:I = 0x21

.field static final TRANSACTION_unsnoozeNotificationFromAssistant:I = 0x39

.field static final TRANSACTION_updateAutomaticZenRule:I = 0x53

.field static final TRANSACTION_updateNotificationChannelForPackage:I = 0x13

.field static final TRANSACTION_updateNotificationChannelFromPrivilegedListener:I = 0x33


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 340
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 341
    const-string v0, "android.app.INotificationManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/INotificationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 349
    if-nez p0, :cond_0

    .line 350
    const/4 v0, 0x0

    return-object v0

    .line 352
    :cond_0
    const-string v0, "android.app.INotificationManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 353
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/INotificationManager;

    if-eqz v1, :cond_1

    .line 354
    move-object v1, v0

    check-cast v1, Landroid/app/INotificationManager;

    return-object v1

    .line 356
    :cond_1
    new-instance v1, Landroid/app/INotificationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/INotificationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/app/INotificationManager;
    .locals 1

    .line 3861
    sget-object v0, Landroid/app/INotificationManager$Stub$Proxy;->sDefaultImpl:Landroid/app/INotificationManager;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/app/INotificationManager;)Z
    .locals 2
    .param p0, "impl"    # Landroid/app/INotificationManager;

    .line 3851
    sget-object v0, Landroid/app/INotificationManager$Stub$Proxy;->sDefaultImpl:Landroid/app/INotificationManager;

    if-nez v0, :cond_1

    .line 3854
    if-eqz p0, :cond_0

    .line 3855
    sput-object p0, Landroid/app/INotificationManager$Stub$Proxy;->sDefaultImpl:Landroid/app/INotificationManager;

    .line 3856
    const/4 v0, 0x1

    return v0

    .line 3858
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 3852
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 360
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 364
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.app.INotificationManager"

    .line 365
    .local v11, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v12, 0x1

    if-eq v8, v0, :cond_38

    const/4 v0, 0x0

    packed-switch v8, :pswitch_data_0

    .line 1626
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1608
    :pswitch_0
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1610
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1612
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1613
    .local v2, "_arg1":I
    invoke-virtual {v7, v1, v2}, Landroid/app/INotificationManager$Stub;->getAppActiveNotifications(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 1614
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1615
    if-eqz v3, :cond_0

    .line 1616
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1617
    invoke-virtual {v3, v10, v12}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1620
    :cond_0
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1622
    :goto_0
    return v12

    .line 1597
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_1
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1601
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1602
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroid/app/INotificationManager$Stub;->applyRestore([BI)V

    .line 1603
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1604
    return v12

    .line 1587
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    :pswitch_2
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1590
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Landroid/app/INotificationManager$Stub;->getBackupPayload(I)[B

    move-result-object v1

    .line 1591
    .local v1, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1592
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1593
    return v12

    .line 1572
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[B
    :pswitch_3
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1574
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1575
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .local v0, "_arg0":Landroid/content/ComponentName;
    goto :goto_1

    .line 1578
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :cond_1
    const/4 v0, 0x0

    .line 1580
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {v7, v0}, Landroid/app/INotificationManager$Stub;->getRuleInstanceCount(Landroid/content/ComponentName;)I

    move-result v1

    .line 1581
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1582
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1583
    return v12

    .line 1562
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_result":I
    :pswitch_4
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1565
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Landroid/app/INotificationManager$Stub;->removeAutomaticZenRules(Ljava/lang/String;)Z

    move-result v1

    .line 1566
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1567
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1568
    return v12

    .line 1552
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_5
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1554
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1555
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Landroid/app/INotificationManager$Stub;->removeAutomaticZenRule(Ljava/lang/String;)Z

    move-result v1

    .line 1556
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1557
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1558
    return v12

    .line 1535
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_6
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1539
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1540
    sget-object v1, Landroid/app/AutomaticZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AutomaticZenRule;

    .local v1, "_arg1":Landroid/app/AutomaticZenRule;
    goto :goto_2

    .line 1543
    .end local v1    # "_arg1":Landroid/app/AutomaticZenRule;
    :cond_2
    const/4 v1, 0x0

    .line 1545
    .restart local v1    # "_arg1":Landroid/app/AutomaticZenRule;
    :goto_2
    invoke-virtual {v7, v0, v1}, Landroid/app/INotificationManager$Stub;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    move-result v2

    .line 1546
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1547
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1548
    return v12

    .line 1520
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/app/AutomaticZenRule;
    .end local v2    # "_result":Z
    :pswitch_7
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1523
    sget-object v0, Landroid/app/AutomaticZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AutomaticZenRule;

    .local v0, "_arg0":Landroid/app/AutomaticZenRule;
    goto :goto_3

    .line 1526
    .end local v0    # "_arg0":Landroid/app/AutomaticZenRule;
    :cond_3
    const/4 v0, 0x0

    .line 1528
    .restart local v0    # "_arg0":Landroid/app/AutomaticZenRule;
    :goto_3
    invoke-virtual {v7, v0}, Landroid/app/INotificationManager$Stub;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object v1

    .line 1529
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1530
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1531
    return v12

    .line 1512
    .end local v0    # "_arg0":Landroid/app/AutomaticZenRule;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1513
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getZenRules()Ljava/util/List;

    move-result-object v0

    .line 1514
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1515
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1516
    return v12

    .line 1496
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    :pswitch_9
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1498
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1499
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v1}, Landroid/app/INotificationManager$Stub;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object v2

    .line 1500
    .local v2, "_result":Landroid/app/AutomaticZenRule;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1501
    if-eqz v2, :cond_4

    .line 1502
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1503
    invoke-virtual {v2, v10, v12}, Landroid/app/AutomaticZenRule;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 1506
    :cond_4
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1508
    :goto_4
    return v12

    .line 1483
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/app/AutomaticZenRule;
    :pswitch_a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1487
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1489
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    move v0, v12

    .line 1490
    .local v0, "_arg2":Z
    :cond_5
    invoke-virtual {v7, v1, v2, v0}, Landroid/app/INotificationManager$Stub;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V

    .line 1491
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1492
    return v12

    .line 1472
    .end local v0    # "_arg2":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1476
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    move v0, v12

    .line 1477
    .local v0, "_arg1":Z
    :cond_6
    invoke-virtual {v7, v1, v0}, Landroid/app/INotificationManager$Stub;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    .line 1478
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1479
    return v12

    .line 1462
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1465
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Landroid/app/INotificationManager$Stub;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v1

    .line 1466
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1467
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1468
    return v12

    .line 1446
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1450
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    .line 1451
    sget-object v1, Landroid/app/NotificationManager$Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager$Policy;

    .local v1, "_arg1":Landroid/app/NotificationManager$Policy;
    goto :goto_5

    .line 1454
    .end local v1    # "_arg1":Landroid/app/NotificationManager$Policy;
    :cond_7
    const/4 v1, 0x0

    .line 1456
    .restart local v1    # "_arg1":Landroid/app/NotificationManager$Policy;
    :goto_5
    invoke-virtual {v7, v0, v1}, Landroid/app/INotificationManager$Stub;->setNotificationPolicy(Ljava/lang/String;Landroid/app/NotificationManager$Policy;)V

    .line 1457
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1458
    return v12

    .line 1430
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/app/NotificationManager$Policy;
    :pswitch_e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1433
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v1}, Landroid/app/INotificationManager$Stub;->getNotificationPolicy(Ljava/lang/String;)Landroid/app/NotificationManager$Policy;

    move-result-object v2

    .line 1434
    .local v2, "_result":Landroid/app/NotificationManager$Policy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1435
    if-eqz v2, :cond_8

    .line 1436
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1437
    invoke-virtual {v2, v10, v12}, Landroid/app/NotificationManager$Policy;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 1440
    :cond_8
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1442
    :goto_6
    return v12

    .line 1420
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/app/NotificationManager$Policy;
    :pswitch_f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1423
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Landroid/app/INotificationManager$Stub;->isNotificationPolicyAccessGranted(Ljava/lang/String;)Z

    move-result v1

    .line 1424
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1425
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1426
    return v12

    .line 1408
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_10
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1412
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/IConditionProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionProvider;

    move-result-object v1

    .line 1414
    .local v1, "_arg1":Landroid/service/notification/IConditionProvider;
    sget-object v2, Landroid/service/notification/Condition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/service/notification/Condition;

    .line 1415
    .local v2, "_arg2":[Landroid/service/notification/Condition;
    invoke-virtual {v7, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->notifyConditions(Ljava/lang/String;Landroid/service/notification/IConditionProvider;[Landroid/service/notification/Condition;)V

    .line 1416
    return v12

    .line 1391
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/service/notification/IConditionProvider;
    .end local v2    # "_arg2":[Landroid/service/notification/Condition;
    :pswitch_11
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1395
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 1396
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .local v1, "_arg1":Landroid/net/Uri;
    goto :goto_7

    .line 1399
    .end local v1    # "_arg1":Landroid/net/Uri;
    :cond_9
    const/4 v1, 0x0

    .line 1402
    .restart local v1    # "_arg1":Landroid/net/Uri;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1403
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 1404
    return v12

    .line 1377
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/net/Uri;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_12
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1378
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 1379
    .local v1, "_result":Landroid/service/notification/ZenModeConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1380
    if-eqz v1, :cond_a

    .line 1381
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1382
    invoke-virtual {v1, v10, v12}, Landroid/service/notification/ZenModeConfig;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 1385
    :cond_a
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1387
    :goto_8
    return v12

    .line 1369
    .end local v1    # "_result":Landroid/service/notification/ZenModeConfig;
    :pswitch_13
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1370
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getZenMode()I

    move-result v0

    .line 1371
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1372
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1373
    return v12

    .line 1359
    .end local v0    # "_result":I
    :pswitch_14
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1362
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Landroid/app/INotificationManager$Stub;->getEnabledNotificationListeners(I)Ljava/util/List;

    move-result-object v1

    .line 1363
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1364
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1365
    return v12

    .line 1351
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :pswitch_15
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1352
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getEnabledNotificationListenerPackages()Ljava/util/List;

    move-result-object v0

    .line 1353
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1354
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1355
    return v12

    .line 1333
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_16
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    .line 1336
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .local v1, "_arg0":Landroid/content/ComponentName;
    goto :goto_9

    .line 1339
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :cond_b
    const/4 v1, 0x0

    .line 1342
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1344
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    move v0, v12

    .line 1345
    .local v0, "_arg2":Z
    :cond_c
    invoke-virtual {v7, v1, v2, v0}, Landroid/app/INotificationManager$Stub;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 1346
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1347
    return v12

    .line 1315
    .end local v0    # "_arg2":Z
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":I
    :pswitch_17
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    .line 1318
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a

    .line 1321
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :cond_d
    const/4 v1, 0x0

    .line 1324
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1326
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    move v0, v12

    .line 1327
    .restart local v0    # "_arg2":Z
    :cond_e
    invoke-virtual {v7, v1, v2, v0}, Landroid/app/INotificationManager$Stub;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 1328
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1329
    return v12

    .line 1299
    .end local v0    # "_arg2":Z
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":I
    :pswitch_18
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    .line 1302
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b

    .line 1305
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :cond_f
    const/4 v1, 0x0

    .line 1308
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    move v0, v12

    .line 1309
    .local v0, "_arg1":Z
    :cond_10
    invoke-virtual {v7, v1, v0}, Landroid/app/INotificationManager$Stub;->setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V

    .line 1310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1311
    return v12

    .line 1283
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :pswitch_19
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    .line 1286
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c

    .line 1289
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :cond_11
    const/4 v1, 0x0

    .line 1292
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_12

    move v0, v12

    .line 1293
    .restart local v0    # "_arg1":Z
    :cond_12
    invoke-virtual {v7, v1, v0}, Landroid/app/INotificationManager$Stub;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V

    .line 1294
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1295
    return v12

    .line 1268
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :pswitch_1a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 1271
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .local v0, "_arg0":Landroid/content/ComponentName;
    goto :goto_d

    .line 1274
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :cond_13
    const/4 v0, 0x0

    .line 1276
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    :goto_d
    invoke-virtual {v7, v0}, Landroid/app/INotificationManager$Stub;->isNotificationAssistantAccessGranted(Landroid/content/ComponentName;)Z

    move-result v1

    .line 1277
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1278
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1279
    return v12

    .line 1251
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_result":Z
    :pswitch_1b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    .line 1254
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e

    .line 1257
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :cond_14
    const/4 v0, 0x0

    .line 1260
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1261
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroid/app/INotificationManager$Stub;->isNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;I)Z

    move-result v2

    .line 1262
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1263
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1264
    return v12

    .line 1236
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_1c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1238
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    .line 1239
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f

    .line 1242
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :cond_15
    const/4 v0, 0x0

    .line 1244
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    :goto_f
    invoke-virtual {v7, v0}, Landroid/app/INotificationManager$Stub;->isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z

    move-result v1

    .line 1245
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1246
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1247
    return v12

    .line 1226
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_result":Z
    :pswitch_1d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1229
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Landroid/app/INotificationManager$Stub;->isSystemConditionProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 1230
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1231
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1232
    return v12

    .line 1211
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_1e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    .line 1214
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "_arg0":Landroid/os/Bundle;
    goto :goto_10

    .line 1217
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_16
    const/4 v0, 0x0

    .line 1219
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_10
    invoke-virtual {v7, v0}, Landroid/app/INotificationManager$Stub;->matchesCallFilter(Landroid/os/Bundle;)Z

    move-result v1

    .line 1220
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1221
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1222
    return v12

    .line 1197
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Z
    :pswitch_1f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1198
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v1

    .line 1199
    .local v1, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1200
    if-eqz v1, :cond_17

    .line 1201
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1202
    invoke-virtual {v1, v10, v12}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_11

    .line 1205
    :cond_17
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1207
    :goto_11
    return v12

    .line 1186
    .end local v1    # "_result":Landroid/content/ComponentName;
    :pswitch_20
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 1190
    .local v0, "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1191
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/app/INotificationManager$Stub;->unsnoozeNotificationFromAssistant(Landroid/service/notification/INotificationListener;Ljava/lang/String;)V

    .line 1192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1193
    return v12

    .line 1175
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_21
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 1179
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    sget-object v1, Landroid/service/notification/Adjustment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1180
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/Adjustment;>;"
    invoke-virtual {v7, v0, v1}, Landroid/app/INotificationManager$Stub;->applyAdjustmentsFromAssistant(Landroid/service/notification/INotificationListener;Ljava/util/List;)V

    .line 1181
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1182
    return v12

    .line 1159
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/Adjustment;>;"
    :pswitch_22
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 1163
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_18

    .line 1164
    sget-object v1, Landroid/service/notification/Adjustment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/Adjustment;

    .local v1, "_arg1":Landroid/service/notification/Adjustment;
    goto :goto_12

    .line 1167
    .end local v1    # "_arg1":Landroid/service/notification/Adjustment;
    :cond_18
    const/4 v1, 0x0

    .line 1169
    .restart local v1    # "_arg1":Landroid/service/notification/Adjustment;
    :goto_12
    invoke-virtual {v7, v0, v1}, Landroid/app/INotificationManager$Stub;->applyAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V

    .line 1170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1171
    return v12

    .line 1143
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":Landroid/service/notification/Adjustment;
    :pswitch_23
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 1147
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_19

    .line 1148
    sget-object v1, Landroid/service/notification/Adjustment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/Adjustment;

    .restart local v1    # "_arg1":Landroid/service/notification/Adjustment;
    goto :goto_13

    .line 1151
    .end local v1    # "_arg1":Landroid/service/notification/Adjustment;
    :cond_19
    const/4 v1, 0x0

    .line 1153
    .restart local v1    # "_arg1":Landroid/service/notification/Adjustment;
    :goto_13
    invoke-virtual {v7, v0, v1}, Landroid/app/INotificationManager$Stub;->applyEnqueuedAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V

    .line 1154
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1155
    return v12

    .line 1118
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":Landroid/service/notification/Adjustment;
    :pswitch_24
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 1122
    .local v1, "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1124
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1a

    .line 1125
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .local v3, "_arg2":Landroid/os/UserHandle;
    goto :goto_14

    .line 1128
    .end local v3    # "_arg2":Landroid/os/UserHandle;
    :cond_1a
    const/4 v3, 0x0

    .line 1130
    .restart local v3    # "_arg2":Landroid/os/UserHandle;
    :goto_14
    invoke-virtual {v7, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroupsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 1131
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1132
    if-eqz v4, :cond_1b

    .line 1133
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1134
    invoke-virtual {v4, v10, v12}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_15

    .line 1137
    :cond_1b
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1139
    :goto_15
    return v12

    .line 1093
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/UserHandle;
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_25
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1095
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 1097
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1099
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1c

    .line 1100
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .restart local v3    # "_arg2":Landroid/os/UserHandle;
    goto :goto_16

    .line 1103
    .end local v3    # "_arg2":Landroid/os/UserHandle;
    :cond_1c
    const/4 v3, 0x0

    .line 1105
    .restart local v3    # "_arg2":Landroid/os/UserHandle;
    :goto_16
    invoke-virtual {v7, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getNotificationChannelsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 1106
    .restart local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1107
    if-eqz v4, :cond_1d

    .line 1108
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1109
    invoke-virtual {v4, v10, v12}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 1112
    :cond_1d
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1114
    :goto_17
    return v12

    .line 1068
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/UserHandle;
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_26
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1070
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 1072
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1074
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1e

    .line 1075
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .local v2, "_arg2":Landroid/os/UserHandle;
    goto :goto_18

    .line 1078
    .end local v2    # "_arg2":Landroid/os/UserHandle;
    :cond_1e
    const/4 v2, 0x0

    .line 1081
    .restart local v2    # "_arg2":Landroid/os/UserHandle;
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1f

    .line 1082
    sget-object v3, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .local v3, "_arg3":Landroid/app/NotificationChannel;
    goto :goto_19

    .line 1085
    .end local v3    # "_arg3":Landroid/app/NotificationChannel;
    :cond_1f
    const/4 v3, 0x0

    .line 1087
    .restart local v3    # "_arg3":Landroid/app/NotificationChannel;
    :goto_19
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->updateNotificationChannelFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;)V

    .line 1088
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1089
    return v12

    .line 1057
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/UserHandle;
    .end local v3    # "_arg3":Landroid/app/NotificationChannel;
    :pswitch_27
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1059
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1061
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1062
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroid/app/INotificationManager$Stub;->setInterruptionFilter(Ljava/lang/String;I)V

    .line 1063
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1064
    return v12

    .line 1046
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_28
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1048
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 1050
    .local v0, "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1051
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroid/app/INotificationManager$Stub;->setOnNotificationPostedTrimFromListener(Landroid/service/notification/INotificationListener;I)V

    .line 1052
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1053
    return v12

    .line 1036
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":I
    :pswitch_29
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1038
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 1039
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {v7, v0}, Landroid/app/INotificationManager$Stub;->getInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;)I

    move-result v1

    .line 1040
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1041
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1042
    return v12

    .line 1025
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_result":I
    :pswitch_2a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1027
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 1029
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1030
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroid/app/INotificationManager$Stub;->requestInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;I)V

    .line 1031
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1032
    return v12

    .line 1015
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":I
    :pswitch_2b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1017
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 1018
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {v7, v0}, Landroid/app/INotificationManager$Stub;->getHintsFromListener(Landroid/service/notification/INotificationListener;)I

    move-result v1

    .line 1019
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1021
    return v12

    .line 1004
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_result":I
    :pswitch_2c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1006
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 1008
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1009
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroid/app/INotificationManager$Stub;->requestHintsFromListener(Landroid/service/notification/INotificationListener;I)V

    .line 1010
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    return v12

    .line 986
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":I
    :pswitch_2d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 988
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 990
    .local v1, "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 991
    .local v2, "_arg1":I
    invoke-virtual {v7, v1, v2}, Landroid/app/INotificationManager$Stub;->getSnoozedNotificationsFromListener(Landroid/service/notification/INotificationListener;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 992
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 993
    if-eqz v3, :cond_20

    .line 994
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 995
    invoke-virtual {v3, v10, v12}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    .line 998
    :cond_20
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1000
    :goto_1a
    return v12

    .line 966
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_2e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 968
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 970
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 972
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 973
    .local v3, "_arg2":I
    invoke-virtual {v7, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 974
    .restart local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 975
    if-eqz v4, :cond_21

    .line 976
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 977
    invoke-virtual {v4, v10, v12}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 980
    :cond_21
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 982
    :goto_1b
    return v12

    .line 955
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_2f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 957
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 959
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 960
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/app/INotificationManager$Stub;->setNotificationsShownFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V

    .line 961
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 962
    return v12

    .line 946
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_30
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 948
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/IConditionProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionProvider;

    move-result-object v0

    .line 949
    .local v0, "_arg0":Landroid/service/notification/IConditionProvider;
    invoke-virtual {v7, v0}, Landroid/app/INotificationManager$Stub;->requestUnbindProvider(Landroid/service/notification/IConditionProvider;)V

    .line 950
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 951
    return v12

    .line 932
    .end local v0    # "_arg0":Landroid/service/notification/IConditionProvider;
    :pswitch_31
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 934
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22

    .line 935
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .local v0, "_arg0":Landroid/content/ComponentName;
    goto :goto_1c

    .line 938
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :cond_22
    const/4 v0, 0x0

    .line 940
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    :goto_1c
    invoke-virtual {v7, v0}, Landroid/app/INotificationManager$Stub;->requestBindProvider(Landroid/content/ComponentName;)V

    .line 941
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    return v12

    .line 923
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :pswitch_32
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 925
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 926
    .local v0, "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {v7, v0}, Landroid/app/INotificationManager$Stub;->requestUnbindListener(Landroid/service/notification/INotificationListener;)V

    .line 927
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    return v12

    .line 909
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    :pswitch_33
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 911
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    .line 912
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .local v0, "_arg0":Landroid/content/ComponentName;
    goto :goto_1d

    .line 915
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :cond_23
    const/4 v0, 0x0

    .line 917
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    :goto_1d
    invoke-virtual {v7, v0}, Landroid/app/INotificationManager$Stub;->requestBindListener(Landroid/content/ComponentName;)V

    .line 918
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 919
    return v12

    .line 896
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :pswitch_34
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 898
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 900
    .local v0, "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 902
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 903
    .local v2, "_arg2":J
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->snoozeNotificationUntilFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;J)V

    .line 904
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    return v12

    .line 883
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":J
    :pswitch_35
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 885
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 887
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 889
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 890
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->snoozeNotificationUntilContextFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 892
    return v12

    .line 872
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_36
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 874
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 876
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 877
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/app/INotificationManager$Stub;->cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V

    .line 878
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 879
    return v12

    .line 857
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_37
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 859
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 861
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 863
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 865
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 866
    .local v3, "_arg3":I
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V

    .line 867
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    return v12

    .line 846
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_38
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 848
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 850
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 851
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroid/app/INotificationManager$Stub;->unregisterListener(Landroid/service/notification/INotificationListener;I)V

    .line 852
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    return v12

    .line 828
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":I
    :pswitch_39
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 830
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 832
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_24

    .line 833
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .local v1, "_arg1":Landroid/content/ComponentName;
    goto :goto_1e

    .line 836
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :cond_24
    const/4 v1, 0x0

    .line 839
    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 840
    .local v2, "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V

    .line 841
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    return v12

    .line 816
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v2    # "_arg2":I
    :pswitch_3a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 820
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 821
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroid/app/INotificationManager$Stub;->getHistoricalNotifications(Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 822
    .local v2, "_result":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    invoke-virtual {v10, v2, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 824
    return v12

    .line 806
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":[Landroid/service/notification/StatusBarNotification;
    :pswitch_3b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 809
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Landroid/app/INotificationManager$Stub;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 810
    .local v1, "_result":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 812
    return v12

    .line 794
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":[Landroid/service/notification/StatusBarNotification;
    :pswitch_3c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 796
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 798
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 799
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroid/app/INotificationManager$Stub;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v2

    .line 800
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 802
    return v12

    .line 778
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_3d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 780
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 781
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v1}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroups(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 782
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    if-eqz v2, :cond_25

    .line 784
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 785
    invoke-virtual {v2, v10, v12}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1f

    .line 788
    :cond_25
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 790
    :goto_1f
    return v12

    .line 767
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_3e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 769
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 771
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 772
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/app/INotificationManager$Stub;->deleteNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    return v12

    .line 755
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_3f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 757
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 759
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 760
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroid/app/INotificationManager$Stub;->getDeletedChannelCount(Ljava/lang/String;I)I

    move-result v2

    .line 761
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 763
    return v12

    .line 741
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_40
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 743
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 745
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 747
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_26

    move v0, v12

    .line 748
    .local v0, "_arg2":Z
    :cond_26
    invoke-virtual {v7, v1, v2, v0}, Landroid/app/INotificationManager$Stub;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result v3

    .line 749
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 751
    return v12

    .line 721
    .end local v0    # "_arg2":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_41
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 723
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 725
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 727
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_27

    move v3, v12

    goto :goto_20

    :cond_27
    move v3, v0

    .line 728
    .local v3, "_arg2":Z
    :goto_20
    invoke-virtual {v7, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getNotificationChannelsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 729
    .restart local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    if-eqz v4, :cond_28

    .line 731
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    invoke-virtual {v4, v10, v12}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_21

    .line 735
    :cond_28
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 737
    :goto_21
    return v12

    .line 705
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_42
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 708
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v1}, Landroid/app/INotificationManager$Stub;->getNotificationChannels(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 709
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    if-eqz v2, :cond_29

    .line 711
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    invoke-virtual {v2, v10, v12}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_22

    .line 715
    :cond_29
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 717
    :goto_22
    return v12

    .line 694
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_43
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 699
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/app/INotificationManager$Stub;->deleteNotificationChannel(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    return v12

    .line 672
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_44
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 674
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 676
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 678
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 680
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2a

    move v4, v12

    goto :goto_23

    :cond_2a
    move v4, v0

    .line 681
    .local v4, "_arg3":Z
    :goto_23
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v5

    .line 682
    .local v5, "_result":Landroid/app/NotificationChannel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    if-eqz v5, :cond_2b

    .line 684
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 685
    invoke-virtual {v5, v10, v12}, Landroid/app/NotificationChannel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_24

    .line 688
    :cond_2b
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 690
    :goto_24
    return v12

    .line 654
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Z
    .end local v5    # "_result":Landroid/app/NotificationChannel;
    :pswitch_45
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 656
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 658
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 659
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v7, v1, v2}, Landroid/app/INotificationManager$Stub;->getNotificationChannel(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v3

    .line 660
    .local v3, "_result":Landroid/app/NotificationChannel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    if-eqz v3, :cond_2c

    .line 662
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 663
    invoke-virtual {v3, v10, v12}, Landroid/app/NotificationChannel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_25

    .line 666
    :cond_2c
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 668
    :goto_25
    return v12

    .line 636
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Landroid/app/NotificationChannel;
    :pswitch_46
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 640
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 642
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2d

    .line 643
    sget-object v2, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .local v2, "_arg2":Landroid/app/NotificationChannel;
    goto :goto_26

    .line 646
    .end local v2    # "_arg2":Landroid/app/NotificationChannel;
    :cond_2d
    const/4 v2, 0x0

    .line 648
    .restart local v2    # "_arg2":Landroid/app/NotificationChannel;
    :goto_26
    invoke-virtual {v7, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 649
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    return v12

    .line 616
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/app/NotificationChannel;
    :pswitch_47
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 620
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 622
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 623
    .local v3, "_arg2":I
    invoke-virtual {v7, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v4

    .line 624
    .local v4, "_result":Landroid/app/NotificationChannelGroup;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    if-eqz v4, :cond_2e

    .line 626
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    invoke-virtual {v4, v10, v12}, Landroid/app/NotificationChannelGroup;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 630
    :cond_2e
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    :goto_27
    return v12

    .line 596
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/app/NotificationChannelGroup;
    :pswitch_48
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 600
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 602
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2f

    move v3, v12

    goto :goto_28

    :cond_2f
    move v3, v0

    .line 603
    .local v3, "_arg2":Z
    :goto_28
    invoke-virtual {v7, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroupsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 604
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    if-eqz v4, :cond_30

    .line 606
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 607
    invoke-virtual {v4, v10, v12}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_29

    .line 610
    :cond_30
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    :goto_29
    return v12

    .line 578
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_49
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 582
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 584
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_31

    .line 585
    sget-object v2, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ParceledListSlice;

    .local v2, "_arg2":Landroid/content/pm/ParceledListSlice;
    goto :goto_2a

    .line 588
    .end local v2    # "_arg2":Landroid/content/pm/ParceledListSlice;
    :cond_31
    const/4 v2, 0x0

    .line 590
    .restart local v2    # "_arg2":Landroid/content/pm/ParceledListSlice;
    :goto_2a
    invoke-virtual {v7, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->createNotificationChannelsForPackage(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V

    .line 591
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    return v12

    .line 562
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/content/pm/ParceledListSlice;
    :pswitch_4a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 566
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_32

    .line 567
    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .local v1, "_arg1":Landroid/content/pm/ParceledListSlice;
    goto :goto_2b

    .line 570
    .end local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :cond_32
    const/4 v1, 0x0

    .line 572
    .restart local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :goto_2b
    invoke-virtual {v7, v0, v1}, Landroid/app/INotificationManager$Stub;->createNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 573
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    return v12

    .line 546
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :pswitch_4b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 550
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_33

    .line 551
    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .restart local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    goto :goto_2c

    .line 554
    .end local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :cond_33
    const/4 v1, 0x0

    .line 556
    .restart local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :goto_2c
    invoke-virtual {v7, v0, v1}, Landroid/app/INotificationManager$Stub;->createNotificationChannelGroups(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 557
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    return v12

    .line 536
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :pswitch_4c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 539
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Landroid/app/INotificationManager$Stub;->getPackageImportance(Ljava/lang/String;)I

    move-result v1

    .line 540
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    return v12

    .line 526
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_4d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 529
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Landroid/app/INotificationManager$Stub;->areNotificationsEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 530
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    return v12

    .line 514
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_4e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 518
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 519
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroid/app/INotificationManager$Stub;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v2

    .line 520
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    return v12

    .line 501
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_4f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 507
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_34

    move v0, v12

    .line 508
    .local v0, "_arg2":Z
    :cond_34
    invoke-virtual {v7, v1, v2, v0}, Landroid/app/INotificationManager$Stub;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    .line 509
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    return v12

    .line 489
    .end local v0    # "_arg2":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_50
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 494
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroid/app/INotificationManager$Stub;->canShowBadge(Ljava/lang/String;I)Z

    move-result v2

    .line 495
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    return v12

    .line 476
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_51
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 480
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 482
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_35

    move v0, v12

    .line 483
    .local v0, "_arg2":Z
    :cond_35
    invoke-virtual {v7, v1, v2, v0}, Landroid/app/INotificationManager$Stub;->setShowBadge(Ljava/lang/String;IZ)V

    .line 484
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    return v12

    .line 461
    .end local v0    # "_arg2":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_52
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 469
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 470
    .local v3, "_arg3":I
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V

    .line 471
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    return v12

    .line 437
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_53
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 441
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 443
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 445
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 447
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_36

    .line 448
    sget-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    move-object/from16 v17, v0

    .local v0, "_arg4":Landroid/app/Notification;
    goto :goto_2d

    .line 451
    .end local v0    # "_arg4":Landroid/app/Notification;
    :cond_36
    const/4 v0, 0x0

    move-object/from16 v17, v0

    .line 454
    .local v17, "_arg4":Landroid/app/Notification;
    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 455
    .local v18, "_arg5":I
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/app/INotificationManager$Stub;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V

    .line 456
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    return v12

    .line 422
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Landroid/app/Notification;
    .end local v18    # "_arg5":I
    :pswitch_54
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ITransientNotification$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotification;

    move-result-object v1

    .line 428
    .local v1, "_arg1":Landroid/app/ITransientNotification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 430
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 431
    .restart local v3    # "_arg3":I
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->enqueueToastInDisplay(Ljava/lang/String;Landroid/app/ITransientNotification;II)V

    .line 432
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    return v12

    .line 411
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/app/ITransientNotification;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_55
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 415
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ITransientNotification$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotification;

    move-result-object v1

    .line 416
    .restart local v1    # "_arg1":Landroid/app/ITransientNotification;
    invoke-virtual {v7, v0, v1}, Landroid/app/INotificationManager$Stub;->cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V

    .line 417
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    return v12

    .line 398
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/app/ITransientNotification;
    :pswitch_56
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 402
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ITransientNotification$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotification;

    move-result-object v1

    .line 404
    .restart local v1    # "_arg1":Landroid/app/ITransientNotification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 405
    .restart local v2    # "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V

    .line 406
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    return v12

    .line 385
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/app/ITransientNotification;
    .end local v2    # "_arg2":I
    :pswitch_57
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 389
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 391
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_37

    move v0, v12

    .line 392
    .local v0, "_arg2":Z
    :cond_37
    invoke-virtual {v7, v1, v2, v0}, Landroid/app/INotificationManager$Stub;->clearData(Ljava/lang/String;IZ)V

    .line 393
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    return v12

    .line 374
    .end local v0    # "_arg2":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_58
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 379
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroid/app/INotificationManager$Stub;->cancelAllNotifications(Ljava/lang/String;I)V

    .line 380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    return v12

    .line 369
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :cond_38
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 370
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
