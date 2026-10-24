.class Lcom/callisto/auto/gatherer/model/SnmBean$Ip;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callisto/auto/gatherer/model/SnmBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Ip"
.end annotation


# instance fields
.field private b_forwarding:Ljava/lang/String;

.field final synthetic this$0:Lcom/callisto/auto/gatherer/model/SnmBean;


# direct methods
.method public constructor <init>(Lcom/callisto/auto/gatherer/model/SnmBean;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/SnmBean$Ip;->this$0:Lcom/callisto/auto/gatherer/model/SnmBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/callisto/auto/gatherer/model/SnmBean$Ip;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/callisto/auto/gatherer/model/SnmBean$Ip;->b_forwarding:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/callisto/auto/gatherer/model/SnmBean$Ip;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/SnmBean$Ip;->b_forwarding:Ljava/lang/String;

    return-object p1
.end method
