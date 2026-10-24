.class public abstract Lcom/mega/nexus/IMegaNexusManager$Stub;
.super Landroid/os/Binder;
.source "IMegaNexusManager.java"

# interfaces
.implements Lcom/mega/nexus/IMegaNexusManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/nexus/IMegaNexusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/nexus/IMegaNexusManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mega.nexus.IMegaNexusManager"

.field static final TRANSACTION_backgroundWhitelistUid:I = 0x4

.field static final TRANSACTION_createProfileForUser:I = 0x27

.field static final TRANSACTION_createUser:I = 0xe

.field static final TRANSACTION_disableFivePointerGesture:I = 0x30

.field static final TRANSACTION_disableFivePointerGestureByDisplay:I = 0x3b

.field static final TRANSACTION_disableSystemUIGesture:I = 0x2f

.field static final TRANSACTION_disableSystemUIGestureByDisplay:I = 0x3a

.field static final TRANSACTION_exchangeDisplayTopStack:I = 0x33

.field static final TRANSACTION_forceStopPackage:I = 0x3

.field static final TRANSACTION_getApplicationInfoAsUser:I = 0x17

.field static final TRANSACTION_getCurrentDuckFocusPackages:I = 0x25

.field static final TRANSACTION_getCurrentFocusPackages:I = 0x20

.field static final TRANSACTION_getCurrentScreenControlUsage:I = 0x3c

.field static final TRANSACTION_getDisplayAllTopResumedActivities:I = 0x40

.field static final TRANSACTION_getDisplayTopResumedActivity:I = 0x1e

.field static final TRANSACTION_getGroupMute:I = 0x22

.field static final TRANSACTION_getInstalledPackagesAsUser:I = 0x15

.field static final TRANSACTION_getOverlayPackageName:I = 0x1f

.field static final TRANSACTION_getPackageInfoAsUser:I = 0x16

.field static final TRANSACTION_getScreenState:I = 0x2c

.field static final TRANSACTION_getSurfaceControlByTaskId:I = 0x3f

.field static final TRANSACTION_getUsers:I = 0x12

.field static final TRANSACTION_isOneKeyMute:I = 0x24

.field static final TRANSACTION_moveTopStackToDisplay:I = 0x36

.field static final TRANSACTION_registerFlyingStateListener:I = 0x31

.field static final TRANSACTION_registerScreenStateChangeListener:I = 0x2d

.field static final TRANSACTION_registerTaskChangeListener:I = 0x3d

.field static final TRANSACTION_registerTopStackExchangeListener:I = 0x37

.field static final TRANSACTION_registerUserActivityListener:I = 0x34

.field static final TRANSACTION_releaseScreenOff:I = 0x2b

.field static final TRANSACTION_releaseScreenOn:I = 0x29

.field static final TRANSACTION_removeUser:I = 0xf

.field static final TRANSACTION_requestScreenOff:I = 0x2a

.field static final TRANSACTION_requestScreenOn:I = 0x28

.field static final TRANSACTION_setFlyingScreenMode:I = 0x26

.field static final TRANSACTION_setGroupMute:I = 0x21

.field static final TRANSACTION_setOneKeyMute:I = 0x23

.field static final TRANSACTION_setOverlayEnabled:I = 0x1d

.field static final TRANSACTION_setOverlayEnabledExclusive:I = 0x39

.field static final TRANSACTION_setUserName:I = 0x10

.field static final TRANSACTION_unRegisterFlyingStateListener:I = 0x32

.field static final TRANSACTION_unRegisterTaskChangeListener:I = 0x3e

.field static final TRANSACTION_unRegisterTopStackExchangeListener:I = 0x38

.field static final TRANSACTION_unRegisterUserActivityListener:I = 0x35

.field static final TRANSACTION_unregisterScreenStateChangeListener:I = 0x2e


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 185
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 186
    const-string v0, "com.mega.nexus.IMegaNexusManager"

    invoke-virtual {p0, p0, v0}, Lcom/mega/nexus/IMegaNexusManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mega/nexus/IMegaNexusManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 194
    if-nez p0, :cond_0

    .line 195
    const/4 v0, 0x0

    return-object v0

    .line 197
    :cond_0
    const-string v0, "com.mega.nexus.IMegaNexusManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 198
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mega/nexus/IMegaNexusManager;

    if-eqz v1, :cond_1

    .line 199
    move-object v1, v0

    check-cast v1, Lcom/mega/nexus/IMegaNexusManager;

    return-object v1

    .line 201
    :cond_1
    new-instance v1, Lcom/mega/nexus/IMegaNexusManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mega/nexus/IMegaNexusManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mega/nexus/IMegaNexusManager;
    .locals 1

    .line 1760
    sget-object v0, Lcom/mega/nexus/IMegaNexusManager$Stub$Proxy;->sDefaultImpl:Lcom/mega/nexus/IMegaNexusManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mega/nexus/IMegaNexusManager;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mega/nexus/IMegaNexusManager;

    .line 1750
    sget-object v0, Lcom/mega/nexus/IMegaNexusManager$Stub$Proxy;->sDefaultImpl:Lcom/mega/nexus/IMegaNexusManager;

    if-nez v0, :cond_1

    .line 1753
    if-eqz p0, :cond_0

    .line 1754
    sput-object p0, Lcom/mega/nexus/IMegaNexusManager$Stub$Proxy;->sDefaultImpl:Lcom/mega/nexus/IMegaNexusManager;

    .line 1755
    const/4 v0, 0x1

    return v0

    .line 1757
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1751
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 205
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    const-string v0, "com.mega.nexus.IMegaNexusManager"

    .line 210
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p1, v1, :cond_10

    const/4 v1, 0x4

    if-eq p1, v1, :cond_f

    const/16 v1, 0x12

    if-eq p1, v1, :cond_e

    const v1, 0x5f4e5446

    if-eq p1, v1, :cond_d

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    .line 724
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 714
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 716
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 717
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mega/nexus/IMegaNexusManager$Stub;->getDisplayAllTopResumedActivities(I)Ljava/util/List;

    move-result-object v3

    .line 718
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 720
    return v2

    .line 698
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 700
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 701
    .local v3, "_arg0":I
    invoke-virtual {p0, v3}, Lcom/mega/nexus/IMegaNexusManager$Stub;->getSurfaceControlByTaskId(I)Landroid/view/SurfaceControl;

    move-result-object v4

    .line 702
    .local v4, "_result":Landroid/view/SurfaceControl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    if-eqz v4, :cond_0

    .line 704
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 705
    invoke-virtual {v4, p3, v2}, Landroid/view/SurfaceControl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 708
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 710
    :goto_0
    return v2

    .line 689
    .end local v3    # "_arg0":I
    .end local v4    # "_result":Landroid/view/SurfaceControl;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 691
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mega/nexus/app/IRunningTaskChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mega/nexus/app/IRunningTaskChangeListener;

    move-result-object v1

    .line 692
    .local v1, "_arg0":Lcom/mega/nexus/app/IRunningTaskChangeListener;
    invoke-virtual {p0, v1}, Lcom/mega/nexus/IMegaNexusManager$Stub;->unRegisterTaskChangeListener(Lcom/mega/nexus/app/IRunningTaskChangeListener;)V

    .line 693
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    return v2

    .line 680
    .end local v1    # "_arg0":Lcom/mega/nexus/app/IRunningTaskChangeListener;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mega/nexus/app/IRunningTaskChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mega/nexus/app/IRunningTaskChangeListener;

    move-result-object v1

    .line 683
    .restart local v1    # "_arg0":Lcom/mega/nexus/app/IRunningTaskChangeListener;
    invoke-virtual {p0, v1}, Lcom/mega/nexus/IMegaNexusManager$Stub;->registerTaskChangeListener(Lcom/mega/nexus/app/IRunningTaskChangeListener;)V

    .line 684
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    return v2

    .line 670
    .end local v1    # "_arg0":Lcom/mega/nexus/app/IRunningTaskChangeListener;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 673
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mega/nexus/IMegaNexusManager$Stub;->getCurrentScreenControlUsage(I)I

    move-result v3

    .line 674
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 676
    return v2

    .line 659
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 663
    .local v1, "_arg0":Z
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 664
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/mega/nexus/IMegaNexusManager$Stub;->disableFivePointerGestureByDisplay(ZI)V

    .line 665
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    return v2

    .line 648
    .end local v1    # "_arg0":Z
    .end local v3    # "_arg1":I
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 652
    .restart local v1    # "_arg0":Z
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 653
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/mega/nexus/IMegaNexusManager$Stub;->disableSystemUIGestureByDisplay(ZI)V

    .line 654
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    return v2

    .line 634
    .end local v1    # "_arg0":Z
    .end local v3    # "_arg1":I
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 638
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    move v1, v2

    .line 640
    .local v1, "_arg1":Z
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 641
    .local v4, "_arg2":I
    invoke-virtual {p0, v3, v1, v4}, Lcom/mega/nexus/IMegaNexusManager$Stub;->setOverlayEnabledExclusive(Ljava/lang/String;ZI)Z

    move-result v5

    .line 642
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    return v2

    .line 625
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mega/nexus/app/ITopStackExchangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mega/nexus/app/ITopStackExchangeListener;

    move-result-object v1

    .line 628
    .local v1, "_arg0":Lcom/mega/nexus/app/ITopStackExchangeListener;
    invoke-virtual {p0, v1}, Lcom/mega/nexus/IMegaNexusManager$Stub;->unRegisterTopStackExchangeListener(Lcom/mega/nexus/app/ITopStackExchangeListener;)V

    .line 629
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    return v2

    .line 616
    .end local v1    # "_arg0":Lcom/mega/nexus/app/ITopStackExchangeListener;
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mega/nexus/app/ITopStackExchangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mega/nexus/app/ITopStackExchangeListener;

    move-result-object v1

    .line 619
    .restart local v1    # "_arg0":Lcom/mega/nexus/app/ITopStackExchangeListener;
    invoke-virtual {p0, v1}, Lcom/mega/nexus/IMegaNexusManager$Stub;->registerTopStackExchangeListener(Lcom/mega/nexus/app/ITopStackExchangeListener;)V

    .line 620
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    return v2

    .line 604
    .end local v1    # "_arg0":Lcom/mega/nexus/app/ITopStackExchangeListener;
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 608
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 609
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/mega/nexus/IMegaNexusManager$Stub;->moveTopStackToDisplay(II)Z

    move-result v4

    .line 610
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    return v2

    .line 595
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mega/nexus/view/IUserActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mega/nexus/view/IUserActivityListener;

    move-result-object v1

    .line 598
    .local v1, "_arg0":Lcom/mega/nexus/view/IUserActivityListener;
    invoke-virtual {p0, v1}, Lcom/mega/nexus/IMegaNexusManager$Stub;->unRegisterUserActivityListener(Lcom/mega/nexus/view/IUserActivityListener;)V

    .line 599
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    return v2

    .line 586
    .end local v1    # "_arg0":Lcom/mega/nexus/view/IUserActivityListener;
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mega/nexus/view/IUserActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mega/nexus/view/IUserActivityListener;

    move-result-object v1

    .line 589
    .restart local v1    # "_arg0":Lcom/mega/nexus/view/IUserActivityListener;
    invoke-virtual {p0, v1}, Lcom/mega/nexus/IMegaNexusManager$Stub;->registerUserActivityListener(Lcom/mega/nexus/view/IUserActivityListener;)V

    .line 590
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    return v2

    .line 574
    .end local v1    # "_arg0":Lcom/mega/nexus/view/IUserActivityListener;
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 578
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 579
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/mega/nexus/IMegaNexusManager$Stub;->exchangeDisplayTopStack(II)Z

    move-result v4

    .line 580
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 582
    return v2

    .line 565
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mega/nexus/app/IFlyingScreenStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mega/nexus/app/IFlyingScreenStateListener;

    move-result-object v1

    .line 568
    .local v1, "_arg0":Lcom/mega/nexus/app/IFlyingScreenStateListener;
    invoke-virtual {p0, v1}, Lcom/mega/nexus/IMegaNexusManager$Stub;->unRegisterFlyingStateListener(Lcom/mega/nexus/app/IFlyingScreenStateListener;)V

    .line 569
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    return v2

    .line 556
    .end local v1    # "_arg0":Lcom/mega/nexus/app/IFlyingScreenStateListener;
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mega/nexus/app/IFlyingScreenStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mega/nexus/app/IFlyingScreenStateListener;

    move-result-object v1

    .line 559
    .restart local v1    # "_arg0":Lcom/mega/nexus/app/IFlyingScreenStateListener;
    invoke-virtual {p0, v1}, Lcom/mega/nexus/IMegaNexusManager$Stub;->registerFlyingStateListener(Lcom/mega/nexus/app/IFlyingScreenStateListener;)V

    .line 560
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    return v2

    .line 547
    .end local v1    # "_arg0":Lcom/mega/nexus/app/IFlyingScreenStateListener;
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 550
    .local v1, "_arg0":Z
    :cond_4
    invoke-virtual {p0, v1}, Lcom/mega/nexus/IMegaNexusManager$Stub;->disableFivePointerGesture(Z)V

    .line 551
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    return v2

    .line 538
    .end local v1    # "_arg0":Z
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    .line 541
    .restart local v1    # "_arg0":Z
    :cond_5
    invoke-virtual {p0, v1}, Lcom/mega/nexus/IMegaNexusManager$Stub;->disableSystemUIGesture(Z)V

    .line 542
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    return v2

    .line 529
    .end local v1    # "_arg0":Z
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mega/nexus/os/IScreenStateChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mega/nexus/os/IScreenStateChangeListener;

    move-result-object v1

    .line 532
    .local v1, "_arg0":Lcom/mega/nexus/os/IScreenStateChangeListener;
    invoke-virtual {p0, v1}, Lcom/mega/nexus/IMegaNexusManager$Stub;->unregisterScreenStateChangeListener(Lcom/mega/nexus/os/IScreenStateChangeListener;)V

    .line 533
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    return v2

    .line 520
    .end local v1    # "_arg0":Lcom/mega/nexus/os/IScreenStateChangeListener;
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mega/nexus/os/IScreenStateChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mega/nexus/os/IScreenStateChangeListener;

    move-result-object v1

    .line 523
    .restart local v1    # "_arg0":Lcom/mega/nexus/os/IScreenStateChangeListener;
    invoke-virtual {p0, v1}, Lcom/mega/nexus/IMegaNexusManager$Stub;->registerScreenStateChangeListener(Lcom/mega/nexus/os/IScreenStateChangeListener;)V

    .line 524
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    return v2

    .line 510
    .end local v1    # "_arg0":Lcom/mega/nexus/os/IScreenStateChangeListener;
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 513
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mega/nexus/IMegaNexusManager$Stub;->getScreenState(I)I

    move-result v3

    .line 514
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    return v2

    .line 499
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 503
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 504
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/mega/nexus/IMegaNexusManager$Stub;->releaseScreenOff(II)V

    .line 505
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    return v2

    .line 486
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 490
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mega/nexus/os/IScreenRequestListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mega/nexus/os/IScreenRequestListener;

    move-result-object v3

    .line 492
    .local v3, "_arg1":Lcom/mega/nexus/os/IScreenRequestListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 493
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Lcom/mega/nexus/IMegaNexusManager$Stub;->requestScreenOff(ILcom/mega/nexus/os/IScreenRequestListener;I)V

    .line 494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    return v2

    .line 475
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Lcom/mega/nexus/os/IScreenRequestListener;
    .end local v4    # "_arg2":I
    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 479
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 480
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/mega/nexus/IMegaNexusManager$Stub;->releaseScreenOn(II)V

    .line 481
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    return v2

    .line 462
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 466
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mega/nexus/os/IScreenRequestListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mega/nexus/os/IScreenRequestListener;

    move-result-object v3

    .line 468
    .local v3, "_arg1":Lcom/mega/nexus/os/IScreenRequestListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 469
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Lcom/mega/nexus/IMegaNexusManager$Stub;->requestScreenOn(ILcom/mega/nexus/os/IScreenRequestListener;I)V

    .line 470
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    return v2

    .line 442
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Lcom/mega/nexus/os/IScreenRequestListener;
    .end local v4    # "_arg2":I
    :pswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 446
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 448
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 449
    .local v5, "_arg2":I
    invoke-virtual {p0, v3, v4, v5}, Lcom/mega/nexus/IMegaNexusManager$Stub;->createProfileForUser(Ljava/lang/String;II)Lcom/mega/nexus/content/pm/UserInfo;

    move-result-object v6

    .line 450
    .local v6, "_result":Lcom/mega/nexus/content/pm/UserInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    if-eqz v6, :cond_6

    .line 452
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    invoke-virtual {v6, p3, v2}, Lcom/mega/nexus/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 456
    :cond_6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    :goto_1
    return v2

    .line 432
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_result":Lcom/mega/nexus/content/pm/UserInfo;
    :pswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 435
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mega/nexus/IMegaNexusManager$Stub;->setFlyingScreenMode(I)Z

    move-result v3

    .line 436
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    return v2

    .line 422
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_1b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 425
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mega/nexus/IMegaNexusManager$Stub;->getCurrentDuckFocusPackages(I)Ljava/util/List;

    move-result-object v3

    .line 426
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 428
    return v2

    .line 414
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0}, Lcom/mega/nexus/IMegaNexusManager$Stub;->isOneKeyMute()Z

    move-result v1

    .line 416
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    return v2

    .line 404
    .end local v1    # "_result":Z
    :pswitch_1d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    move v1, v2

    .line 407
    .local v1, "_arg0":Z
    :cond_7
    invoke-virtual {p0, v1}, Lcom/mega/nexus/IMegaNexusManager$Stub;->setOneKeyMute(Z)I

    move-result v3

    .line 408
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    return v2

    .line 394
    .end local v1    # "_arg0":Z
    .end local v3    # "_result":I
    :pswitch_1e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 397
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mega/nexus/IMegaNexusManager$Stub;->getGroupMute(I)Z

    move-result v3

    .line 398
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    return v2

    .line 382
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_1f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 386
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    move v1, v2

    .line 387
    .local v1, "_arg1":Z
    :cond_8
    invoke-virtual {p0, v3, v1}, Lcom/mega/nexus/IMegaNexusManager$Stub;->setGroupMute(IZ)I

    move-result v4

    .line 388
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    return v2

    .line 372
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg0":I
    .end local v4    # "_result":I
    :pswitch_20
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 375
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mega/nexus/IMegaNexusManager$Stub;->getCurrentFocusPackages(I)Ljava/util/List;

    move-result-object v3

    .line 376
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 378
    return v2

    .line 362
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_21
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mega/nexus/IMegaNexusManager$Stub;->getOverlayPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 368
    return v2

    .line 352
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_22
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 355
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mega/nexus/IMegaNexusManager$Stub;->getDisplayTopResumedActivity(I)Ljava/lang/String;

    move-result-object v3

    .line 356
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 358
    return v2

    .line 338
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_23
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 342
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    move v1, v2

    .line 344
    .local v1, "_arg1":Z
    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 345
    .local v4, "_arg2":I
    invoke-virtual {p0, v3, v1, v4}, Lcom/mega/nexus/IMegaNexusManager$Stub;->setOverlayEnabled(Ljava/lang/String;ZI)Z

    move-result v5

    .line 346
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    return v2

    .line 318
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_24
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 322
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 324
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 325
    .local v5, "_arg2":I
    invoke-virtual {p0, v3, v4, v5}, Lcom/mega/nexus/IMegaNexusManager$Stub;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 326
    .local v6, "_result":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    if-eqz v6, :cond_a

    .line 328
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    invoke-virtual {v6, p3, v2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 332
    :cond_a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    :goto_2
    return v2

    .line 298
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_result":Landroid/content/pm/ApplicationInfo;
    :pswitch_25
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 302
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 304
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 305
    .restart local v5    # "_arg2":I
    invoke-virtual {p0, v3, v4, v5}, Lcom/mega/nexus/IMegaNexusManager$Stub;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 306
    .local v6, "_result":Landroid/content/pm/PackageInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    if-eqz v6, :cond_b

    .line 308
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    invoke-virtual {v6, p3, v2}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 312
    :cond_b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    :goto_3
    return v2

    .line 286
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_result":Landroid/content/pm/PackageInfo;
    :pswitch_26
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 290
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 291
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/mega/nexus/IMegaNexusManager$Stub;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v4

    .line 292
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 294
    return v2

    .line 267
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :pswitch_27
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 271
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/mega/nexus/IMegaNexusManager$Stub;->setUserName(ILjava/lang/String;)V

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    return v2

    .line 257
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_28
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 260
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mega/nexus/IMegaNexusManager$Stub;->removeUser(I)Z

    move-result v3

    .line 261
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    return v2

    .line 239
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_29
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 244
    .local v4, "_arg1":I
    invoke-virtual {p0, v3, v4}, Lcom/mega/nexus/IMegaNexusManager$Stub;->createUser(Ljava/lang/String;I)Lcom/mega/nexus/content/pm/UserInfo;

    move-result-object v5

    .line 245
    .local v5, "_result":Lcom/mega/nexus/content/pm/UserInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    if-eqz v5, :cond_c

    .line 247
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    invoke-virtual {v5, p3, v2}, Lcom/mega/nexus/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 251
    :cond_c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    :goto_4
    return v2

    .line 214
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_result":Lcom/mega/nexus/content/pm/UserInfo;
    :cond_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    return v2

    .line 278
    :cond_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/mega/nexus/IMegaNexusManager$Stub;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 280
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mega/nexus/content/pm/UserInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 282
    return v2

    .line 230
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mega/nexus/content/pm/UserInfo;>;"
    :cond_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 233
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mega/nexus/IMegaNexusManager$Stub;->backgroundWhitelistUid(I)V

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    return v2

    .line 219
    .end local v1    # "_arg0":I
    :cond_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 224
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/mega/nexus/IMegaNexusManager$Stub;->forceStopPackage(Ljava/lang/String;I)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    return v2

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_29
        :pswitch_28
        :pswitch_27
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1d
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
