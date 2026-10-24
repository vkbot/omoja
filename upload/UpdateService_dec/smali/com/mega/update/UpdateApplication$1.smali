.class Lcom/mega/update/UpdateApplication$1;
.super Ljava/lang/Object;
.source "UpdateApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/update/UpdateApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/update/UpdateApplication;


# direct methods
.method constructor <init>(Lcom/mega/update/UpdateApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/UpdateApplication;

    .line 41
    iput-object p1, p0, Lcom/mega/update/UpdateApplication$1;->this$0:Lcom/mega/update/UpdateApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/mega/update/UpdateApplication$1;->this$0:Lcom/mega/update/UpdateApplication;

    invoke-static {v0}, Lcom/mega/update/UpdateApplication;->access$000(Lcom/mega/update/UpdateApplication;)V

    .line 45
    return-void
.end method
