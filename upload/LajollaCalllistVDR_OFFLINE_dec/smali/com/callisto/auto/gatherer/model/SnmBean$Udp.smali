.class Lcom/callisto/auto/gatherer/model/SnmBean$Udp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callisto/auto/gatherer/model/SnmBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Udp"
.end annotation


# instance fields
.field private b_no_ports:Ljava/lang/String;

.field final synthetic this$0:Lcom/callisto/auto/gatherer/model/SnmBean;


# direct methods
.method public constructor <init>(Lcom/callisto/auto/gatherer/model/SnmBean;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/SnmBean$Udp;->this$0:Lcom/callisto/auto/gatherer/model/SnmBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$300(Lcom/callisto/auto/gatherer/model/SnmBean$Udp;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/callisto/auto/gatherer/model/SnmBean$Udp;->b_no_ports:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/callisto/auto/gatherer/model/SnmBean$Udp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/SnmBean$Udp;->b_no_ports:Ljava/lang/String;

    return-object p1
.end method
