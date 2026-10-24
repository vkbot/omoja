.class Lcom/mega/update/protocol/QnxUpdateProtocol$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "QnxUpdateProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/update/protocol/QnxUpdateProtocol;->version(Lcom/mega/update/info/ManifestInfo$DeviceInfo;)Lcom/mega/update/manager/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/mega/update/protocol/QnxUpdateProtocol$PARAMS$VersionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/update/protocol/QnxUpdateProtocol;


# direct methods
.method constructor <init>(Lcom/mega/update/protocol/QnxUpdateProtocol;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/protocol/QnxUpdateProtocol;

    .line 179
    iput-object p1, p0, Lcom/mega/update/protocol/QnxUpdateProtocol$1;->this$0:Lcom/mega/update/protocol/QnxUpdateProtocol;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
