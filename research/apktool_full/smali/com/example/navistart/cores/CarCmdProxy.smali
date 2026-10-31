.class public interface abstract Lcom/example/navistart/cores/CarCmdProxy;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# virtual methods
.method public SH()V
    .locals 0

    .line 1
    return-void
.end method

.method public SendHUD(Ljava/lang/String;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public StartHUD()V
    .locals 0

    .line 1
    return-void
.end method

.method public akbvolt()F
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public bezoff(Lcom/example/navistart/cores/BezFunEnum;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    new-instance p1, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public carZadSeatHeat(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public carZadSeatVent(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public cargetheat(I)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public cargetvent(I)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public carsavvod(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public carsetheat(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public carsetvent(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public carsetvod(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public getCabinTemp(I)F
    .locals 0

    .line 1
    const/high16 p1, -0x3d3a0000    # -99.0f

    .line 2
    .line 3
    return p1
.end method

.method public getParkOnOff()Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRPM()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getSpeed()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getcarZadSeatHeat(I)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public getcarZadSeatVent(I)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public getlobheat()Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getouttemp()I
    .locals 1

    .line 1
    const/16 v0, -0x63

    .line 2
    .line 3
    return v0
.end method

.method public getrulheat()Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getstatengin()Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getsun()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getvod()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getzadheat()Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public hybrid(Lcom/example/navistart/cores/HFunEnum;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public lobheatonoff(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    return-void
.end method

.method public offLaneDeparture()V
    .locals 0

    .line 1
    return-void
.end method

.method public offSpeedLimitAlarm()V
    .locals 0

    .line 1
    return-void
.end method

.method public offStartStop()V
    .locals 0

    .line 1
    return-void
.end method

.method public parkonoff(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    return-void
.end method

.method public rulheatonoff(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setCabinTemp(IF)V
    .locals 0

    .line 1
    return-void
.end method

.method public setRecirculation(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public sunupdown(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    return-void
.end method

.method public zadheatonoff(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    return-void
.end method
