.class Lcom/mega/ota/test/FloatingProgressService$2;
.super Ljava/lang/Object;
.source "FloatingProgressService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/ota/test/FloatingProgressService;->initFloatingWindow()V
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

    .line 114
    iput-object p1, p0, Lcom/mega/ota/test/FloatingProgressService$2;->this$0:Lcom/mega/ota/test/FloatingProgressService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 117
    const-string v0, "mega_ota_2.0"

    const-string v1, " mega_ota_2.0 FloatingProgressService mBtnOk click "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/mega/ota/test/FloatingProgressService$2;->this$0:Lcom/mega/ota/test/FloatingProgressService;

    invoke-static {v0}, Lcom/mega/ota/test/FloatingProgressService;->access$100(Lcom/mega/ota/test/FloatingProgressService;)V

    .line 119
    return-void
.end method
