.class Lcom/mega/update/manager/TaskScheduler$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "TaskScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/update/manager/TaskScheduler;->restore()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/mega/update/info/UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/update/manager/TaskScheduler;


# direct methods
.method constructor <init>(Lcom/mega/update/manager/TaskScheduler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/manager/TaskScheduler;

    .line 58
    iput-object p1, p0, Lcom/mega/update/manager/TaskScheduler$1;->this$0:Lcom/mega/update/manager/TaskScheduler;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
