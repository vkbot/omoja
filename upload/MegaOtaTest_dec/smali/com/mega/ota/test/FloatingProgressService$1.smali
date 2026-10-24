.class Lcom/mega/ota/test/FloatingProgressService$1;
.super Lcom/mega/ota/test/IProgressUpdate$Stub;
.source "FloatingProgressService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/ota/test/FloatingProgressService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/ota/test/FloatingProgressService;


# direct methods
.method constructor <init>(Lcom/mega/ota/test/FloatingProgressService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/ota/test/FloatingProgressService;

    .line 29
    iput-object p1, p0, Lcom/mega/ota/test/FloatingProgressService$1;->this$0:Lcom/mega/ota/test/FloatingProgressService;

    invoke-direct {p0}, Lcom/mega/ota/test/IProgressUpdate$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 42
    return-object p0
.end method

.method public updateProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .line 32
    iget-object v0, p0, Lcom/mega/ota/test/FloatingProgressService$1;->this$0:Lcom/mega/ota/test/FloatingProgressService;

    const/16 v1, -0x3e9

    invoke-static {v0, p1, v1, v1}, Lcom/mega/ota/test/FloatingProgressService;->access$000(Lcom/mega/ota/test/FloatingProgressService;III)V

    .line 33
    return-void
.end method

.method public updateStatus(III)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "code"    # I
    .param p3, "status"    # I

    .line 37
    iget-object v0, p0, Lcom/mega/ota/test/FloatingProgressService$1;->this$0:Lcom/mega/ota/test/FloatingProgressService;

    invoke-static {v0, p1, p2, p3}, Lcom/mega/ota/test/FloatingProgressService;->access$000(Lcom/mega/ota/test/FloatingProgressService;III)V

    .line 38
    return-void
.end method
