.class Lcom/mega/update/protocol/McuUpdateProtocol$4;
.super Lcom/google/gson/reflect/TypeToken;
.source "McuUpdateProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/update/protocol/McuUpdateProtocol;->version(Lcom/mega/update/info/ManifestInfo$DeviceInfo;)Lcom/mega/update/manager/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$VersionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/update/protocol/McuUpdateProtocol;


# direct methods
.method constructor <init>(Lcom/mega/update/protocol/McuUpdateProtocol;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/protocol/McuUpdateProtocol;

    .line 210
    iput-object p1, p0, Lcom/mega/update/protocol/McuUpdateProtocol$4;->this$0:Lcom/mega/update/protocol/McuUpdateProtocol;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
