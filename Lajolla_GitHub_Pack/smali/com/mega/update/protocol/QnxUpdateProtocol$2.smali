.class Lcom/mega/update/protocol/QnxUpdateProtocol$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "QnxUpdateProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/update/protocol/QnxUpdateProtocol;->onReceive(Ljava/lang/String;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/mega/update/protocol/QnxUpdateProtocol$PARAMS$ProgressInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/update/protocol/QnxUpdateProtocol;


# direct methods
.method constructor <init>(Lcom/mega/update/protocol/QnxUpdateProtocol;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/protocol/QnxUpdateProtocol;

    .line 203
    iput-object p1, p0, Lcom/mega/update/protocol/QnxUpdateProtocol$2;->this$0:Lcom/mega/update/protocol/QnxUpdateProtocol;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
