.class Lcom/mega/update/task/FlashTask$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "FlashTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/update/task/FlashTask;->loadTempManifest()Lcom/mega/update/info/ManifestInfo;
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
.field final synthetic this$0:Lcom/mega/update/task/FlashTask;


# direct methods
.method constructor <init>(Lcom/mega/update/task/FlashTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/task/FlashTask;

    .line 125
    iput-object p1, p0, Lcom/mega/update/task/FlashTask$2;->this$0:Lcom/mega/update/task/FlashTask;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
