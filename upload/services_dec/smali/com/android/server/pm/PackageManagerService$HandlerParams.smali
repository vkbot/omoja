.class abstract Lcom/android/server/pm/PackageManagerService$HandlerParams;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HandlerParams"
.end annotation


# instance fields
.field private final mUser:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field traceCookie:I

.field traceMethod:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V
    .locals 0
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 14753
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14754
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mUser:Landroid/os/UserHandle;

    .line 14755
    return-void
.end method


# virtual methods
.method getRollbackUser()Landroid/os/UserHandle;
    .locals 2

    .line 14769
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mUser:Landroid/os/UserHandle;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    if-ne v0, v1, :cond_0

    .line 14770
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    return-object v0

    .line 14772
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method getUser()Landroid/os/UserHandle;
    .locals 1

    .line 14758
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method abstract handleReturnCode()V
.end method

.method abstract handleStartCopy()V
.end method

.method setTraceCookie(I)Lcom/android/server/pm/PackageManagerService$HandlerParams;
    .locals 0
    .param p1, "traceCookie"    # I

    .line 14781
    iput p1, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceCookie:I

    .line 14782
    return-object p0
.end method

.method setTraceMethod(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$HandlerParams;
    .locals 0
    .param p1, "traceMethod"    # Ljava/lang/String;

    .line 14776
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceMethod:Ljava/lang/String;

    .line 14777
    return-object p0
.end method

.method final startCopy()V
    .locals 0

    .line 14787
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->handleStartCopy()V

    .line 14788
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->handleReturnCode()V

    .line 14789
    return-void
.end method
