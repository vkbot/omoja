.class public final synthetic Lcom/mega/nexus/hardware/input/-$$Lambda$MegaInputManager$v2RZwyKSbTe4b8-4uXskwrlSyzc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:I

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/nexus/hardware/input/-$$Lambda$MegaInputManager$v2RZwyKSbTe4b8-4uXskwrlSyzc;->f$0:Landroid/content/Context;

    iput p2, p0, Lcom/mega/nexus/hardware/input/-$$Lambda$MegaInputManager$v2RZwyKSbTe4b8-4uXskwrlSyzc;->f$1:I

    iput-wide p3, p0, Lcom/mega/nexus/hardware/input/-$$Lambda$MegaInputManager$v2RZwyKSbTe4b8-4uXskwrlSyzc;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/mega/nexus/hardware/input/-$$Lambda$MegaInputManager$v2RZwyKSbTe4b8-4uXskwrlSyzc;->f$0:Landroid/content/Context;

    iget v1, p0, Lcom/mega/nexus/hardware/input/-$$Lambda$MegaInputManager$v2RZwyKSbTe4b8-4uXskwrlSyzc;->f$1:I

    iget-wide v2, p0, Lcom/mega/nexus/hardware/input/-$$Lambda$MegaInputManager$v2RZwyKSbTe4b8-4uXskwrlSyzc;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lcom/mega/nexus/hardware/input/MegaInputManager;->lambda$dispatchKeyEvent$1(Landroid/content/Context;IJ)V

    return-void
.end method
