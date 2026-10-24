.class public final Lx1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Z

.field public final synthetic r:Lcom/mega/engineeringmode/function/radio/RadioWireActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/radio/RadioWireActivity;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/f;->r:Lcom/mega/engineeringmode/function/radio/RadioWireActivity;

    iput-boolean p2, p0, Lx1/f;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lx1/f;->r:Lcom/mega/engineeringmode/function/radio/RadioWireActivity;

    iget-object v1, v0, Lcom/mega/engineeringmode/function/radio/RadioWireActivity;->j:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " updateStatusView "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lx1/f;->c:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RadioWireActivity"

    invoke-static {v2, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const p0, 0x7f1200e1

    goto :goto_0

    :cond_0
    const p0, 0x7f120136

    :goto_0
    iget-object v0, v0, Lcom/mega/engineeringmode/function/radio/RadioWireActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method
