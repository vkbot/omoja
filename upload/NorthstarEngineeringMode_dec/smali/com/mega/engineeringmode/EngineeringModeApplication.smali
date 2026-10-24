.class public Lcom/mega/engineeringmode/EngineeringModeApplication;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field public static b:Lcom/mega/engineeringmode/EngineeringModeApplication;

.field public static c:Lcom/mega/engineeringmode/model/EngineModeViewModel;

.field public static d:Z


# instance fields
.field public a:Ld1/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static a()Lcom/mega/engineeringmode/model/EngineModeViewModel;
    .locals 4

    sget-object v0, Lcom/mega/engineeringmode/EngineeringModeApplication;->c:Lcom/mega/engineeringmode/model/EngineModeViewModel;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    new-instance v1, Landroidx/lifecycle/ViewModelStore;

    invoke-direct {v1}, Landroidx/lifecycle/ViewModelStore;-><init>()V

    new-instance v2, Lcom/mega/engineeringmode/model/ViewModelFactory;

    sget-object v3, Lcom/mega/engineeringmode/EngineeringModeApplication;->b:Lcom/mega/engineeringmode/EngineeringModeApplication;

    invoke-direct {v2, v3}, Lcom/mega/engineeringmode/model/ViewModelFactory;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/mega/engineeringmode/model/EngineModeViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/mega/engineeringmode/model/EngineModeViewModel;

    sput-object v0, Lcom/mega/engineeringmode/EngineeringModeApplication;->c:Lcom/mega/engineeringmode/model/EngineModeViewModel;

    :cond_0
    sget-object v0, Lcom/mega/engineeringmode/EngineeringModeApplication;->c:Lcom/mega/engineeringmode/model/EngineModeViewModel;

    return-object v0
.end method


# virtual methods
.method public final onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sput-object p0, Lcom/mega/engineeringmode/EngineeringModeApplication;->b:Lcom/mega/engineeringmode/EngineeringModeApplication;

    invoke-static {p0}, Ln2/j;->a(Landroid/content/Context;)Ln2/j;

    invoke-static {}, Ln2/l;->a()Ln2/l;

    const-string v0, "EngineeringModeApplication"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Li2/a;->b(Landroid/content/Context;)Li2/a;

    move-result-object v0

    iget-object v1, v0, Li2/a;->g:Li2/a$c;

    iget-object v0, v0, Li2/a;->f:Landroid/os/storage/StorageManager;

    invoke-static {v0, v1}, Lb1/a;->s(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageEventListener;)V

    sget-object v0, Ln2/b;->b:Ln2/b;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, v0, Ln2/b;->a:Landroid/content/ContentResolver;

    new-instance v0, Ld1/a;

    invoke-direct {v0, p0}, Ld1/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/EngineeringModeApplication;->a:Ld1/a;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public final onTerminate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    const-string v0, "EngineeringModeApplication"

    const-string/jumbo v1, "onTerminate"

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Li2/a;->b(Landroid/content/Context;)Li2/a;

    move-result-object p0

    iget-object v0, p0, Li2/a;->g:Li2/a$c;

    iget-object p0, p0, Li2/a;->f:Landroid/os/storage/StorageManager;

    invoke-static {p0, v0}, Lb1/a;->A(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageEventListener;)V

    return-void
.end method
