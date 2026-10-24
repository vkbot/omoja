.class public final Lcom/mega/engineeringmode/function/location/GpsActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/OnNmeaMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/function/location/GpsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/location/GpsActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/location/GpsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/location/GpsActivity$c;->a:Lcom/mega/engineeringmode/function/location/GpsActivity;

    return-void
.end method


# virtual methods
.method public final onNmeaMessage(Ljava/lang/String;J)V
    .locals 0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "onNmeaMessage "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "GpsActivity"

    invoke-static {p3, p2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/mega/engineeringmode/function/tbox/b;->n:Lcom/mega/engineeringmode/function/tbox/b;

    iget-object p2, p2, Lcom/mega/engineeringmode/function/tbox/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_0

    const-string/jumbo p0, "onNmeaMessage : tbox disconnect"

    invoke-static {p3, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/mega/engineeringmode/function/location/GpsActivity$c;->a:Lcom/mega/engineeringmode/function/location/GpsActivity;

    iget-boolean p2, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->r:Z

    if-eqz p2, :cond_1

    const-string p0, "mHasTBoxNema = true, return"

    invoke-static {p3, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
