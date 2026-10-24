.class Lcom/mega/update/rpc/MegaConnector$ValueResult;
.super Ljava/lang/Object;
.source "MegaConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/rpc/MegaConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field countDown:Ljava/util/concurrent/CountDownLatch;

.field ret:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 211
    .local p0, "this":Lcom/mega/update/rpc/MegaConnector$ValueResult;, "Lcom/mega/update/rpc/MegaConnector$ValueResult<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mega/update/rpc/MegaConnector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mega/update/rpc/MegaConnector$1;

    .line 211
    .local p0, "this":Lcom/mega/update/rpc/MegaConnector$ValueResult;, "Lcom/mega/update/rpc/MegaConnector$ValueResult<TT;>;"
    invoke-direct {p0}, Lcom/mega/update/rpc/MegaConnector$ValueResult;-><init>()V

    return-void
.end method
