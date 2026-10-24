.class Lcom/mega/update/protocol/HudUpdateProtocol$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "HudUpdateProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/update/protocol/HudUpdateProtocol;->version(Lcom/mega/update/info/ManifestInfo$DeviceInfo;)Lcom/mega/update/manager/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS$VersionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/update/protocol/HudUpdateProtocol;


# direct methods
.method constructor <init>(Lcom/mega/update/protocol/HudUpdateProtocol;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/protocol/HudUpdateProtocol;

    .line 154
    iput-object p1, p0, Lcom/mega/update/protocol/HudUpdateProtocol$2;->this$0:Lcom/mega/update/protocol/HudUpdateProtocol;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
