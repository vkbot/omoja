.class public Lcom/mega/update/rpc/MegaConnector$ConnectException;
.super Ljava/lang/Exception;
.source "MegaConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/rpc/MegaConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/update/rpc/MegaConnector;


# direct methods
.method public constructor <init>(Lcom/mega/update/rpc/MegaConnector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/rpc/MegaConnector;

    .line 202
    iput-object p1, p0, Lcom/mega/update/rpc/MegaConnector$ConnectException;->this$0:Lcom/mega/update/rpc/MegaConnector;

    .line 203
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 204
    return-void
.end method

.method public constructor <init>(Lcom/mega/update/rpc/MegaConnector;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/rpc/MegaConnector;
    .param p2, "message"    # Ljava/lang/String;

    .line 206
    iput-object p1, p0, Lcom/mega/update/rpc/MegaConnector$ConnectException;->this$0:Lcom/mega/update/rpc/MegaConnector;

    .line 207
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 208
    return-void
.end method
