.class public Lcom/android/server/wm/MegaWindowManagerService;
.super Lcom/android/server/wm/WindowManagerService;
.source ""


# static fields
.field private static final c:Ljava/lang/String; = "MegaWindowManagerService"


# instance fields
.field private a:Lcom/android/server/wm/s;

.field private b:Lcom/android/server/policy/MegaPhoneWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 12

    move-object v10, p0

    move-object/from16 v11, p5

    sget-object v7, Lcom/android/server/wm/c;->a:Lcom/android/server/wm/c;

    sget-object v8, Lcom/android/server/wm/b;->a:Lcom/android/server/wm/b;

    sget-object v9, Lcom/android/server/wm/a;->a:Lcom/android/server/wm/a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    instance-of v0, v11, Lcom/android/server/policy/MegaPhoneWindowManager;

    if-eqz v0, :cond_0

    move-object v0, v11

    check-cast v0, Lcom/android/server/policy/MegaPhoneWindowManager;

    iput-object v0, v10, Lcom/android/server/wm/MegaWindowManagerService;->b:Lcom/android/server/policy/MegaPhoneWindowManager;

    :cond_0
    new-instance v0, Lcom/android/server/wm/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/s;-><init>(Lcom/android/server/wm/MegaWindowManagerService;Lcom/android/server/wm/r;)V

    iput-object v0, v10, Lcom/android/server/wm/MegaWindowManagerService;->a:Lcom/android/server/wm/s;

    new-instance v0, Lcom/android/server/wm/s;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/s;-><init>(Lcom/android/server/wm/MegaWindowManagerService;Lcom/android/server/wm/r;)V

    const-string v1, "mega_window_manager_injector"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic A(Lcom/android/server/wm/MegaWindowManagerService;)Lcom/android/server/policy/MegaPhoneWindowManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/MegaWindowManagerService;->b:Lcom/android/server/policy/MegaPhoneWindowManager;

    return-object p0
.end method


# virtual methods
.method public getMegaWindowManagerInjector()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/MegaWindowManagerService;->a:Lcom/android/server/wm/s;

    return-object p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/android/server/policy/j;

    iget-object v1, p0, Lcom/android/server/wm/MegaWindowManagerService;->b:Lcom/android/server/policy/MegaPhoneWindowManager;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/j;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/policy/MegaPhoneWindowManager;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/WindowManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method
