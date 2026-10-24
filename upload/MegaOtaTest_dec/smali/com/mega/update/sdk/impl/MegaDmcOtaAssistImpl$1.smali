.class Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$1;
.super Ljava/util/HashMap;
.source "MegaDmcOtaAssistImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .line 112
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 113
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Idle"

    invoke-virtual {p0, v1, v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Dialing"

    invoke-virtual {p0, v2, v1}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Ringing"

    invoke-virtual {p0, v2, v1}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Active"

    invoke-virtual {p0, v2, v1}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Fault"

    invoke-virtual {p0, v2, v1}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v1, "CallFailed"

    invoke-virtual {p0, v1, v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-void
.end method
