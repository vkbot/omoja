.class public final synthetic Lb2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mega/engineeringmode/function/speaker/SpeakerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mega/engineeringmode/function/speaker/SpeakerActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lb2/d;->a:I

    iput-object p1, p0, Lb2/d;->b:Lcom/mega/engineeringmode/function/speaker/SpeakerActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget p1, p0, Lb2/d;->a:I

    const v0, 0x50000062

    const-string v1, "SpeakerMessagePresenter"

    const/4 v2, 0x5

    iget-object p0, p0, Lb2/d;->b:Lcom/mega/engineeringmode/function/speaker/SpeakerActivity;

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/mega/engineeringmode/function/speaker/SpeakerActivity;->k:Lb2/e;

    if-eqz p1, :cond_0

    iget-object v3, p1, Lb2/e;->a:Ljava/util/ArrayList;

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lb2/e;->a(Ljava/util/ArrayList;)Z

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "rrFuc"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " value 8"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/mega/engineeringmode/function/speaker/SpeakerActivity;->l:Lmega/car/MegaCarProperty;

    if-eqz p0, :cond_1

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lmega/car/MegaCarProperty;->setIntProp(II)V

    :cond_1
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/mega/engineeringmode/function/speaker/SpeakerActivity;->k:Lb2/e;

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    iget-object v4, p1, Lb2/e;->a:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v4}, Lb2/e;->a(Ljava/util/ArrayList;)Z

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "flFuc"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " value 1"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p0, p0, Lcom/mega/engineeringmode/function/speaker/SpeakerActivity;->l:Lmega/car/MegaCarProperty;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v0, v3}, Lmega/car/MegaCarProperty;->setIntProp(II)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
