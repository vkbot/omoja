.class Lcom/mega/update/peripheral/TboxProtocolConverter$3;
.super Lcom/google/gson/reflect/TypeToken;
.source "TboxProtocolConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/update/peripheral/TboxProtocolConverter;->setupServer(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/mega/update/peripheral/TboxProtocolConverter$httpResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/update/peripheral/TboxProtocolConverter;


# direct methods
.method constructor <init>(Lcom/mega/update/peripheral/TboxProtocolConverter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/peripheral/TboxProtocolConverter;

    .line 425
    iput-object p1, p0, Lcom/mega/update/peripheral/TboxProtocolConverter$3;->this$0:Lcom/mega/update/peripheral/TboxProtocolConverter;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
