.class Lcom/mega/update/protocol/TboxUpdateProtocol$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "TboxUpdateProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/update/protocol/TboxUpdateProtocol;->active(Lcom/mega/update/info/ManifestInfo$DeviceInfo;Lcom/mega/update/manager/ITriggerNotifier;)Lcom/mega/update/manager/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$ResultInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/update/protocol/TboxUpdateProtocol;


# direct methods
.method constructor <init>(Lcom/mega/update/protocol/TboxUpdateProtocol;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/protocol/TboxUpdateProtocol;

    .line 186
    iput-object p1, p0, Lcom/mega/update/protocol/TboxUpdateProtocol$2;->this$0:Lcom/mega/update/protocol/TboxUpdateProtocol;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
