.class public Lcom/mega/service/MegaServicePolicyFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/mega/IMegaServicePolicyFactory;


# instance fields
.field private a:Landroid/os/IBinder;

.field private b:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mega/service/MegaServicePolicyFactory;->a:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/mega/service/MegaServicePolicyFactory;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public getMegaActivityManagerInjector()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/mega/service/MegaServicePolicyFactory;->a:Landroid/os/IBinder;

    return-object p0
.end method

.method public getMegaWindowManagerInjector()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/mega/service/MegaServicePolicyFactory;->b:Landroid/os/IBinder;

    return-object p0
.end method

.method public getPhoneWindowManager()Lcom/android/server/policy/PhoneWindowManager;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public makeNewActivityManagerService(Landroid/content/Context;)Lcom/android/server/wm/ActivityTaskManagerService;
    .locals 1

    new-instance v0, Lcom/android/server/wm/MegaActivityManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/wm/MegaActivityManagerService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/server/wm/MegaActivityManagerService;->getMegaActivityManagerInjector()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/service/MegaServicePolicyFactory;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public makeNewActivityStackSupervisor(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)Lcom/android/server/wm/ActivityStackSupervisor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public makeNewActivityStarter(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityStackSupervisor;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public makeNewAppErrors(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public makeNewDisplayContent(Landroid/view/Display;Lcom/android/server/wm/WindowManagerService;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public makeNewPackageManagerService(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public makeNewPhoneWindowManager()Lcom/android/server/policy/PhoneWindowManager;
    .locals 0

    new-instance p0, Lcom/android/server/policy/MegaPhoneWindowManager;

    invoke-direct {p0}, Lcom/android/server/policy/MegaPhoneWindowManager;-><init>()V

    return-object p0
.end method

.method public makeNewRootWindowContainer(Lcom/android/server/wm/WindowManagerService;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public makeNewTaskTapPointerEventListener(Lcom/android/server/wm/WindowManagerService;Ljava/lang/Object;)Lcom/android/server/wm/TaskTapPointerEventListener;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public makeNewWindowManagerService(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/WindowManagerService;
    .locals 8

    new-instance v7, Lcom/android/server/wm/MegaWindowManagerService;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/MegaWindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {v7}, Lcom/android/server/wm/MegaWindowManagerService;->getMegaWindowManagerInjector()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/service/MegaServicePolicyFactory;->a:Landroid/os/IBinder;

    return-object v7
.end method

.method public makeNewWindowStateAnimater(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
