.class public final synthetic Lg1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    sget-object p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->A:Ljava/lang/Byte;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "mBuryPointSwitch "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LogLevelActivity"

    invoke-static {p1, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "bury.point.value"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ld/f;->X(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
