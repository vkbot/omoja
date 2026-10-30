.class Lcom/mega/update/protocol/DisUpdateProtocol$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "DisUpdateProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/update/protocol/DisUpdateProtocol;->start(Lcom/mega/update/info/ManifestInfo$DeviceInfo;Lcom/mega/update/manager/ITriggerNotifier;)Lcom/mega/update/manager/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$ResultInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/update/protocol/DisUpdateProtocol;


# direct methods
.method constructor <init>(Lcom/mega/update/protocol/DisUpdateProtocol;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/protocol/DisUpdateProtocol;

    .line 118
    iput-object p1, p0, Lcom/mega/update/protocol/DisUpdateProtocol$1;->this$0:Lcom/mega/update/protocol/DisUpdateProtocol;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
