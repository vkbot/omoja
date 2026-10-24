.class Lcom/mega/update/task/ActivateTask$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "ActivateTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/update/task/ActivateTask;->loadTempManifest()Lcom/mega/update/info/ManifestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/mega/update/info/ManifestInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/update/task/ActivateTask;


# direct methods
.method constructor <init>(Lcom/mega/update/task/ActivateTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/task/ActivateTask;

    .line 145
    iput-object p1, p0, Lcom/mega/update/task/ActivateTask$2;->this$0:Lcom/mega/update/task/ActivateTask;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
