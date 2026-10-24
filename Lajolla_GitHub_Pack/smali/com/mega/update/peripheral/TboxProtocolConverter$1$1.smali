.class Lcom/mega/update/peripheral/TboxProtocolConverter$1$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "TboxProtocolConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/update/peripheral/TboxProtocolConverter$1;->onReceive(Ljava/lang/String;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$UpdateJson;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mega/update/peripheral/TboxProtocolConverter$1;


# direct methods
.method constructor <init>(Lcom/mega/update/peripheral/TboxProtocolConverter$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mega/update/peripheral/TboxProtocolConverter$1;

    .line 116
    iput-object p1, p0, Lcom/mega/update/peripheral/TboxProtocolConverter$1$1;->this$1:Lcom/mega/update/peripheral/TboxProtocolConverter$1;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
